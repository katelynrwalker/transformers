# ./finetune.sh \
#     --data_dir=/home/ubuntu/data/transformer_1000/NOV/ \
#     --train_batch_size=1 \
#     --eval_batch_size=1 \
#     --output_dir=/home/ubuntu/data/transformer_1000/NOV_model \
#     --num_train_epochs 1 \
#     --model_name_or_path facebook/bart-large-cnn

# Add parent directory to python path to access lightning_base.py
export PYTHONPATH="../":"${PYTHONPATH}"

# the proper usage is documented in the README, you need to specify data_dir, output_dir and model_name_or_path
python finetune.py \
    --learning_rate=3e-5 \
    --fp16 \
    --gpus 1 \
    --do_train \
    --do_predict \
    --n_val 1000 \
    --val_check_interval 0.1 \
    --data_dir=/home/ubuntu/data/transformer_1000/NOV/ \
    --train_batch_size=1 \
    --eval_batch_size=1 \
    --output_dir=/home/ubuntu/data/transformer_1000/NOV_model \
    --num_train_epochs 1 \
    --model_name_or_path facebook/bart-large-cnn
    $@