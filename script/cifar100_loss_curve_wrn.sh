#!/bin/bash

# ===========================================================
# 3d normalized surface for WRN34-10
# ===========================================================

SCALE=0.75
N=51
MAX=20

python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model wrn34_10 \
--model_file cifar100/trained_nets/wrn/ours/ours.pth.tar \
--surf_file ./cifar100/trained_nets/wrn/ours/ours_${SCALE}_${N}.h5 \
--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter \
#
python3 h52vtp.py --surf_file ./cifar100/trained_nets/wrn/ours/ours_${SCALE}_${N}.h5 \
--surf_name test_loss --zmax ${MAX}
#
#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model wrn34_10 \
#--model_file cifar100/trained_nets/wrn/pgd/pgd.pth.tar \
#--surf_file ./cifar100/trained_nets/wrn/pgd/pgd_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter \
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/wrn/pgd/pgd_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX}
#
#
#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model wrn34_10 \
#--model_file ./cifar100/trained_nets/wrn/trades/trades.pt \
#--surf_file ./cifar100/trained_nets/wrn/trades/trades_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter \
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/wrn/trades/trades_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX}

#python plot_surface.py --x=-${SCALE}:${SCALE}:${N} --y=-${SCALE}:${SCALE}:${N} --model wrn34_10 \
#--model_file ./cifar100/trained_nets/wrn/iad/iad.pth.tar \
#--surf_file ./cifar100/trained_nets/wrn/iad/iad_${SCALE}_${N}.h5 \
#--ngpu 4 --cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter \
#
#python3 h52vtp.py --surf_file ./cifar100/trained_nets/wrn/iad/iad_${SCALE}_${N}.h5 \
#--surf_name test_loss --zmax ${MAX}
#
