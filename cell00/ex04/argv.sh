#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
    for arg in "$@"; do
        echo "$arg"
    done
fi
cd ~/discovery_piscine/cell00/ex04
echo -e '#!/bin/bash\n\nif [ $# -eq 0 ]; then\n    echo "No arguments supplied"\nelse\n    for arg in "$@"; do\n        echo "$arg"\n    done\nfi' > argv.sh
chmod +x argv.sh
./argv.sh
./argv.sh one two three
./argv.sh 1 2 3 4
