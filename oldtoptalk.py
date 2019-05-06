#!/usr/bin/python


#from twisted.python import log
#from txshark import TsharkService

#service = SnifferService(
#            [{"name": "test.pcap", "filter": "tcp.port == 8501"}])



from graphviz import Digraph

def add_edges(graph, edges):
    for e in edges:
        if isinstance(e[0], tuple):
            print e[0], e[1]
            print "is a tuple"
            dot.edge(*e[0], **e[1])

        else:
            dot.edge(*e)
            print "not a tuple", e[0], e[1], e[2]
    return dot 



dot = Digraph(comment='The Top Talkers', filename='talkers.gv')
dot.attr('node', shape='doublecircle')


import csv
with open('classifier-training-001-resnet-50.pcap.talkerpairs.txt', 'rb') as f:
        reader = csv.reader(f)
        your_talkers = map(tuple, reader)
print "here's the talkers",  your_talkers
add_edges(dot,your_talkers)

dot.view

