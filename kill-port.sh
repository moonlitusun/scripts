#!/bin/bash

lsof -ti:$1 | xargs kill -9 || echo "No process on port $1"