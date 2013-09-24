#!/usr/bin/python
import simplejson as json
import sys
import traceback

for line in iter(sys.stdin.readline, ''):
  try:
    line = line.rstrip()
    lines = line.split("\t")
    print "hello world"
    if len(lines) < 2:
      continue
    keys = lines[0]
    data = lines[1]
    print keys + data
  except:
    # print line
    sys.stderr.write("Error reading line: "+line+"\n")
    traceback.print_exc()
