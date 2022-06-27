# Term Project: Data Augmentation을 이용한 문자인식

#### 
1. `git clone https://github.com/illizard/text_recognition.git`

2. Train `run_train.sh`
    ```bash
    #!/bin/bash
    export BS=4
    export NCCL_DEBUG=INFO
    export NCCL_SHM_DISABLE=1
    TRAIN_DIR=/home/text_recog/data_dir/model6/model6_lmdb_train
    VAL_DIR=/home/text_recog/data_dir/model6/model6_lmdb_val

    CUDA_VISIBLE_DEVICES=0,1 \
    python train.py \
        --train_data ${TRAIN_DIR} \
        --valid_data ${VAL_DIR} \
        --Transformation TPS \
        --FeatureExtraction ResNet \
        --SequenceModeling BiLSTM \
        --Prediction Attn \
        --batch_size 4 \
        --workers 4 \
        --saved_model pretrained_model/TPS-ResNet-BiLSTM-Attn.pth \
        --FT \
    ```

3. Test 'run_test.sh' 
    ```bash
    #!/bin/bash
    export BS=4
    export NCCL_DEBUG=INFO
    export NCCL_SHM_DISABLE=1

    PRE_TRAINED_MODEL=./saved_models/ver5_lr_1_re/best_accuracy.pth
    DATA_SET=/home/text_recog/data_dir/model6/model6_lmdb_val

    CUDA_VISIBLE_DEVICES=3 python test.py \
        --eval_data  ${DATA_SET}\
        --Transformation TPS  \
        --FeatureExtraction ResNet \
        --SequenceModeling BiLSTM \
        --Prediction Attn \
        --saved_model  ${PRE_TRAINED_MODEL}\
        --data_filtering_off \
        --workers 0 \
        --input_channel 1 \
        --output_channel 512 \
        --hidden_size 256 \
        --batch_size ${BS}
    ```



 