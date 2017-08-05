#!/bin/bash

wbregs bounces  | tee -a btndata.txt
wbregs duration | tee -a btndata.txt
wbregs scope 0x88000020
