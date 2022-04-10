# How to use: type 'sh train.sh' on your CLI
python train.py \
--load_data_filename load_data_junejae \
--load_data_func_load load_data \
--load_data_func_tokenized tokenized_dataset \
--load_data_func_tokenized_train tokenized_dataset \
--load_data_class RE_Dataset \
--metric_for_best_model 'eval_loss' \
--gradient_accumulation_steps 1 \
--use_augmentation True \
--aug_data ../dataset/train/augmented_phonologicalProcess.csv \
--seed 42 \
--model klue/roberta-large \
--train_data ../dataset/train/train_finalCorrection.csv \
--num_labels 30 \
--output_dir ./results \
--save_total_limit 5 \
--save_steps 500 \
--num_train_epochs 3 \
--learning_rate 2e-5 \
--per_device_train_batch_size 32 \
--per_device_eval_batch_size 32 \
--warmup_steps 500 \
--warmup_ratio 0.1 \
--weight_decay 0.0 \
--logging_dir ./logs \
--logging_steps 500 \
--evaluation_strategy steps \
--eval_steps  500 \
--load_best_model_at_end True \
--save_pretrained ./best_model \
--special_entity_type typed_entity \
--preprocess True \
--clue_type question \
--n_splits 1 \
--test_size 0.2 \
--loss focal \
--report_to wandb \
--project_name baseline \
--entity_name growing_sesame \
--run_name "roberta-large baseline sota"
