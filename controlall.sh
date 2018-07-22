#!/bin/bash
# Give me deallocate | stop | start as an arg..
az vm $1 --ids $(az vm list --query "[].id" -o tsv | grep ctfwrk)
