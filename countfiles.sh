#!/bin/bash
# Questo script conta il numero di file in una directory specificata dall'utente

# Controlla se è stato fornito un solo parametro
if [ $# -ne 1 ]; then
    echo "Usage: $0 dir"
    exit 1
fi

# Assegna il parametro a una variabile
directory="$1"

# Controlla se la directory esiste
if [ -d "$directory" ]; then
    # Conta il numero di file nella directory in modo sicuro
    num_files=$(find "$directory" -maxdepth 1 -type f | wc -l)
    echo "Il numero di file nella directory '$directory' è: $num_files"
else
    echo "La directory '$directory' non esiste."
fi
