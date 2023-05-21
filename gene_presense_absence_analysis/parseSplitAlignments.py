__author__="Adam Healey, ahealey@hudsonalpha.org"
__date__ ="Created:  9/12/16"

from sys import stdin, argv
from numpy import *

#==============================================================
def real_main():
    script, presentGenes, IDCutoff, CovCutoff = argv
    geneHits        = {}
    geneLengthDict  = {}
    finalDict       = {}

    IDCutoff        = int(IDCutoff)
    CovCutoff       = int(CovCutoff)
    presentGeneSet  = set([line.strip() for line in open (presentGenes)])

    #Parse through the blat bestHit file and assign variables from blat columns.  Matches are used for sorting later
    for line in stdin:
        s          = line.split(None)
        matches    = int(s[0])
        geneID     = s[9]
        geneLength = int(s[10])
        geneStart  = int(s[11])
        geneEnd    = int(s[12])
        scaffID    = s[13]
        starts     = s[19]
        blocks     = s[18]

        
        #Only investigate genes that were not already called present based on single alignments
        if geneID in presentGeneSet : continue
        
        #break up the exons for length and COV calculation
        Q_starts    = starts.split(',')
        blockSizes  = blocks.split(',')
        pop_Starts  = Q_starts[:-1]
        pop_Blocks  = blockSizes[:-1]
        
        qlen        = int(pop_Starts[-1]) + (int(pop_Blocks[-1]) - int(pop_Starts[0]))
        ID          = matches * 100/ float(qlen)

        #only fill dictionary with hits that are good enough to consider
        if ID >= IDCutoff:
            try:
                geneHits[geneID].append( (matches,scaffID,geneLength,geneStart,geneEnd, ID) )
            except KeyError:
                geneHits[geneID] = [ (matches,scaffID,geneLength,geneStart,geneEnd, ID) ]
        #separately, fill dictionary "geneLengthDict" with the key "geneID" and the value as an array of zeroes equal to the length of the gene
        geneLengthDict[geneID] = array([0] * len(range(geneLength)))
        
    #####

    # Parsing through the hits
    #using geneID, generate a tmpList where the first element is length of matches, followed by scaffID, geneStart, and geneEnd. 
    #next, sort the tmpList.  Since matches is the first element, it will be used to sort from longest to shortest
    
    for geneID, tmpList in geneHits.iteritems():
        tmpList.sort(reverse=True)
        #after sorting, only consider the last 3 hits in the tmpList 
        #afterwhich, set the starts and ends of the geneID array equal to 1
        for matches, scaffID, geneLength, geneStart, geneEnd, ID in tmpList[:3]:
            geneLengthDict[geneID][geneStart:geneEnd] = 1
            try:
                finalDict[geneID].append( (matches,geneLength,geneStart, geneEnd, ID) )
            except KeyError:
                finalDict[geneID] = [ (matches,geneLength,geneStart, geneEnd, ID) ]
            #####
        #####
    #####
        

    #parse through the geneLengthDict arrays and calculate the length and sums for each geneID (which is 'k')
    for k, v in geneLengthDict.iteritems():
        COV = ((float(sum(v))/float(len(v)))*100)
#         finalDict[k].append(COV)
        if COV>=CovCutoff:
            print "%s\t%d\t%d\t%0.2f" % (k, sum(v), len(v), COV)
        #####
    #####

#==============================================================
if ( __name__ == '__main__' ):
    real_main()

