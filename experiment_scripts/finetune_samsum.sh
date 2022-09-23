#export MODEL_DIR=facebook/bart-large
export MODEL_DIR=""
export TRAIN_FILE=../data/samsum/train.json
export VAL_FILE=../data/samsum/val.json
export TEST_FILE=../data/samsum/test.json

CUDA_VISIBLE_DEVICES=0 python3 ../run_summarization.py \
    --model_name_or_path $MODEL_DIR \
    --model_type bart \
	  --do_train \
	  --do_test \
    --train_file $TRAIN_FILE \
    --validation_file $VAL_FILE \
    --test_file $TEST_FILE \
    --text_column source \
    --summary_column target \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 8 \
    --max_target_length 100 \
    --val_max_target_length 100 \
    --test_max_target_length 100 \
    --test_min_length 5 \
    --val_min_length 5 \
    --no_repeat_ngram_size 3 \
    --length_penalty 1.0 \
    --max_len 1024 \
    --num_beams 4 \
    --learning_rate 3e-5 \
    --weight_decay 0.01 \
    --num_train_epochs 10 \
    --num_warmup_steps 500 \
    --seed 1 \
    --output_dir ./samsum \
    --early_stop 3 \
    --log_file_name samsum.log \
	  --predict_file_name samsum.hypo