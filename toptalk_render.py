#!/usr/bin/python


#from twisted.python import log
#from txshark import TsharkService

#service = SnifferService(
#            [{"name": "test.pcap", "filter": "tcp.port == 8501"}])



from graphviz import Digraph


import pydotplus

import glob, os
os.chdir("/home/mike/chomsky")
for file in glob.glob("*.dot"):
        print(file)
        newfilename= file + ".svg"
        graph_a = pydotplus.graph_from_dot_file(file)
        graph_a.write_svg(newfilename) # generate graph in svg.
        print "Created ", newfilename




