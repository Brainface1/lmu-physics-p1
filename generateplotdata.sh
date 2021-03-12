#!/bin/sh

awk 'NR==1 {m_em=$1; v_f=$2; m_err=$3; v_err=$4}; NR>1{ print (v_f-($1-m_em))" "$2" "m_err" "v_err }' Bottle1.txt > Bottle1.gen.txt
awk 'NR==1 {m_em=$1; v_f=$2; m_err=$3; v_err=$4}; NR>1{ print (v_f-($1-m_em))" "$2" "m_err" "v_err }' Bottle2.txt > Bottle2.gen.txt
