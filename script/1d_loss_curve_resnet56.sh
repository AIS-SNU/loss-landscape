# ===========================================================
# 1d normalized surface for ResNet-56
# ===========================================================


#python plot_surface.py --x=-1:1:2 --model resnet18 \
#--model_file cifar10/trained_nets/baseline_pgd_resnet18/ck.pth.tar \
#--cuda --dir_type states --xnorm filter --xignore biasbn --plot

python plot_surface.py --x=-0.1:0.1:5 --y=-0.1:0.1:5 --model resnet18 \
--model_file cifar10/trained_nets/baseline_pgd_resnet18/ck.pth.tar \
--surf_file ./cifar10/trained_nets/baseline_pgd_resnet18/baseline_cifar10_5 \
--cuda --dir_type weights --xignore biasbn --xnorm filter --yignore biasbn --ynorm filter

python3 h52vtp.py --surf_file ./cifar10/trained_nets/baseline_pgd_resnet18/baseline_cifar10_5 \
--surf_name train_loss --zmax 10 --log
