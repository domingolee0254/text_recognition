#!/usr/bin/env bash
# basic 0

INPUT_TXT=ko
## OUTPUT_DIR=train
## 
## mv ./dicts/train_all_text_sum.txt ./dicts/ko.txt
## 
## python run.py -c 12500 -f 64 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/basic
## python run.py -c 12500 -f 32 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/basic
## 
## # skew 9000
## python run.py -c 1000 -f 32 -k 15 -rk -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew #basic version
## python run.py -c 1000 -f 64 -k 5 -rk -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew #basic version
## python run.py -c 3000 -f 64 -k 15 -rk -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew
## python run.py -c 3000 -f 64 -k 15 -rk -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew
## 
## # distortion 3000
## python run.py -c 1000 -f 64 -d 3 -do 0 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist #basic version
## python run.py -c 3000 -f 64 -d 3 -do 0 -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist
## python run.py -c 3000 -f 64 -d 3 -do 1 -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist
## 
## # blur 3000
## python run.py -c 3000 -f 64 -l ${INPUT_TXT} -bl 1 -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/blur
## python run.py -c 3000 -f 64 -l ${INPUT_TXT} -bl 2 -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/blur
## 
## # background 3000
## python run.py -c 4000 -f 64 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/back
## 
## mv ./dicts/ko.txt ./dicts/train_all_text_sum.txt 



#=======================================================
OUTPUT_DIR=val
mv ./dicts/val_all_text_sum.txt ./dicts/ko.txt

python run.py -c 2500 -f 64 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/basic
python run.py -c 2500 -f 32 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/basic

# skew 9000
python run.py -c 200 -f 32 -k 15 -rk -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew #basic version
python run.py -c 200 -f 64 -k 5 -rk -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew #basic version
python run.py -c 600 -f 64 -k 15 -rk -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew
python run.py -c 600 -f 64 -k 15 -rk -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/skew

# distortion 3000
python run.py -c 200 -f 64 -d 3 -do 0 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist #basic version
python run.py -c 600 -f 64 -d 3 -do 0 -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist
python run.py -c 600 -f 64 -d 3 -do 1 -l ${INPUT_TXT} -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/dist

# blur 3000
python run.py -c 600 -f 64 -l ${INPUT_TXT} -bl 1 -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/blur
python run.py -c 600 -f 64 -l ${INPUT_TXT} -bl 2 -b 3 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/blur

# background 3000
python run.py -c 800 -f 64 -l ${INPUT_TXT} -b 1 -tc '#ffffff' --output_dir out/${OUTPUT_DIR}/back

mv ./dicts/ko.txt ./dicts/val_all_text_sum.txt 
