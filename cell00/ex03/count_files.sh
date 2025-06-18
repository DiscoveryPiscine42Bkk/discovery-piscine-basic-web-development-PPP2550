#!/bin/bash
find . -maxdepth 1 -type f -o -type d | wc -l
#!/bin/bash
find . -maxdepth 1 \( -type f -o -type d \) | wc -l
cd ~/discovery_piscine/cell00/ex03
echo -e '#!/bin/bash\nfind . -maxdepth 1 \\( -type f -o -type d \\) | wc -l' > count_files.sh
chmod +x count_files.sh
./count_files.sh | cat -e
