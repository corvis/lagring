#!/usr/bin/env bash

sed -n -E 's/__version__\s=\s\"(.*)\"$/\1/p' src/lagring/__version__.py