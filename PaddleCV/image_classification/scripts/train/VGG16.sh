#Training details
#GPU: NVIDIA® Tesla® P40 8cards 90epochs 72h
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export FLAGS_fast_eager_deletion_mode=1
export FLAGS_eager_delete_tensor_gb=0.0
export FLAGS_fraction_of_gpu_memory_to_use=0.98
export FLAGS_cudnn_batchnorm_spatial_persistent=1

#VGG16:
python train.py \
	--model=VGG16 \
	--batch_size=256 \
	--total_images=1281167 \
        --class_dim=1000 \
	--lr_strategy=cosine_decay \
	--image_shape=3,224,224 \
        --model_save_dir=output/ \
	--lr=0.01 \
	--num_epochs=90 \
	--data_format=NCHW \
	--l2_decay=3e-4
