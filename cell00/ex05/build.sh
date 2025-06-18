#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
    for arg in "$@"; do
        mkdir "ex$arg"
    done
fi
cd ~/discovery_piscine/cell00/ex05
echo -e '#!/bin/bash\n\nif [ $# -eq 0 ]; then\n    echo "No arguments supplied"\nelse\n    for arg in "$@"; do\n        mkdir "ex$arg"\n    done\nfi' > build.sh
chmod +x build.sh
./build.sh 00 01 02
