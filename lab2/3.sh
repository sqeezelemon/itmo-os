#!/bin/bash

echo "$$ | $(ps -p $$ -o lstart | tail -1)"