#!/usr/bin/env python

import sys
import Image

if len(sys.argv) < 3:
    sys.stderr.write("Usage: " + sys.argv[0] + " outfile images...\n")
    sys.exit(1)

file = open(sys.argv[1], "wb")

images = sys.argv[2:]
print "Processing " + str(len(images)) + " frames..."

im = Image.open(images[0])
wrange = range(im.size[0])
hrange = range(im.size[1])

for i, arg in enumerate(images):
    im = Image.open(arg)
    pix = im.load()

    file.write("".join([ "".join([ chr(pix[x, y]) for x in wrange ]) for y in hrange ]))
    print "Frame " + str(i) + " done"

print "Finished"

file.close()
