#/bin/bash

if ! [ $# = 2 ] ; then
   echo "Usage: run.sh <model> <device>" 2>&2 && exit 1
fi

python run.py --model_name "$1" \
               --dataset_name "tianyang/repobench_python_v1.1" \
               --language "python" \
               --max_token_nums 15800 \
               --start_date "2023-12-01" \
               --end_date "2023-12-31" \
               --levels "2k" "4k" "8k" "12k" "16k" \
               --temperature 0.2 \
               --top_p 0.95 \
               --max_new_tokens 128 \
               --batch_size 1 \
               --device $2

