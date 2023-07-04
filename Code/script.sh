#!/bin/bash

# בדיקה אם מסופק פרמטר בקלט
if [ $# -eq 0 ]; then
    echo "Error: No CSV file path provided."
    echo "Usage: bash script.sh <CSV file path>"
    exit 1
fi

# קבלת מסלול הקובץ מהפרמטר הראשון
csv_path=$1

# הרצת הקוד הפייתון עם הקובץ הנתון כפרמטר
python3 code/plot.py "$csv_path"
