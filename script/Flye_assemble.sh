#!/bin/bash
Flye='python /content/tools/Flye-2.9.2/bin/flye'
OUT_DIR="/content/flye_output"

READ=$1

${Flye} --out-dir $OUT_DIR --nano-raw $READ
