#!/usr/bin/python

# -*- encoding: utf-8 -*-

# vim: tabstop=4 shiftwidth=4 softtabstop=4 expandtab

import simplejson as json
import sys
import traceback

if __name__ == "__main__":
#  for line in iter(sys.stdin.readline, ''):
  print "sora hihi"
  print "hello"

  for line in sys.stdin: 
    try:
      line = line.rstrip()
      lines = line.split("\t")
      #sys.stderr.write("reporter:counter")

      if len(lines) < 2:
        continue
      keys = lines[0]
      data = lines[1]
      print "%s\t%s" % (keys, data)
    except:
      # print line
      sys.stderr.write("Error reading line: "+line+"\n")
      traceback.print_exc()

