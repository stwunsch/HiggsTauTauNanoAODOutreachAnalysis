#!/bin/bash

# Build and run skimming
g++ -g -std=c++11 -O3 -Wall -Wextra -Wpedantic -o skim skim.cxx $(root-config --cflags --libs)
time ./skim

# Produce histograms for plotting
time python histograms.py

# Make plots
time python plot.py

# Fit signal strength for ZTT process
time python fit.py
