#!/bin/bash

find . -type f -print | sort -zR | tail -n +41 | xargs rm
