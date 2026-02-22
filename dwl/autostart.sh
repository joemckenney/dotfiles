#!/bin/sh

kanshi &

# somebar reads dwl status from stdin, so it must be last
exec somebar
