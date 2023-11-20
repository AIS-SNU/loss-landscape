#!/bin/bash

# ===========================================================
# 3d normalized surface for ResNet-18
# ===========================================================

SCALE=0.75
N=51
MAX=20

python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model resnet18 \
--model_file cifar100/trained_nets/iad/iad.pt \
--surf_file ./cifar100/trained_nets/iad/iad_${SCALE}_${N}.h5 \
--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter

python3 h52vtp.py --surf_file ./cifar100/trained_nets/iad/iad_${SCALE}_${N}.h5 \
--surf_name test_loss --zmax ${MAX}

#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model resnet18 \
#--model_file cifar100/trained_nets/trades/trades.pt \
#--surf_file ./cifar100/trained_nets/trades/trades_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/trades/trades_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX}
#

#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model resnet18 \
#--model_file cifar100/trained_nets/baseline/baseline.pth.tar \
#--surf_file ./cifar100/trained_nets/baseline/baseline_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter

#python3 h52vtp.py --surf_file ./cifar100/trained_nets/baseline/baseline_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX}

#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model resnet18 \
#--model_file cifar100/trained_nets/ours/ours.pth.tar \
#--surf_file ./cifar100/trained_nets/ours/ours_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/ours/ours_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX} 
#
#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model resnet18 \
#--model_file cifar100/trained_nets/swa_ours/swa_ours.pth.tar \
#--surf_file ./cifar100/trained_nets/swa_ours/swa_ours_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/swa_ours/swa_ours_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX} --log
