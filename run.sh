while IFS= read -r url; do echo 'Running for ' $url >> out.txt && timeout 70 path/to/venv/bin/python BLH.py $url; done < "aliveurls.txt" >> out.txt
