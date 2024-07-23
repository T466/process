#!/bin/bash

# Definindo o número de processos a serem listados
num_procs=10

# Obter os top processos por consumo de CPU
echo "Top $num_procs processos por consumo de CPU:"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n $num_procs

echo "---------------------------"

# Obter os top processos por consumo de memória
echo "Top $num_procs processos por consumo de memória:"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%mem | head -n $num_procs
