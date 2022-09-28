#!/bin/bash
CUDA_VISIBLE_DEVICES=4,5,6,7 nohup python -u train_concrete.py \
    --cuda \
    --data ../data/enwik8/ \
    --dataset enwik8 \
    --n_layer 4 \
    --d_model 256 \
    --n_head 8 \
    --d_head 64 \
    --d_inner 8192 \
    --dropout 0.1 \
    --dropatt 0.0 \
    --optim adam \
    --lr 0.00025 \
    --warmup_step 0 \
    --max_step 200000 \
    --tgt_len 512 \
    --mem_len 512 \
    --eval_tgt_len 128 \
    --batch_size 44 \
    --work_dir big_dense_concrete \
    --multi_gpu > log_0928_big_dense_concrete.out 2>&1 &
