start=$(date +%s) 
echo "Start" 

python run_qa.py \
  --model_name_or_path bert-base-uncased \
  --dataset_name squad \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir /tmp/debug_squad/ > log

end=$(date +%s)
take=$(( end - start ))
echo Time taken to execute commands is ${take} seconds.
