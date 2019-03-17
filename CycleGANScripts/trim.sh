#!/bin/bash

find . -type f -print | sort -zR | tail -n +12 #| xargs rm
