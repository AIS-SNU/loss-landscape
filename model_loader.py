import os
import cifar10.model_loader

import cifar100.model_loader

def load(dataset, model_name, model_file, data_parallel=False):
    if dataset == 'cifar10':
        net = cifar10.model_loader.load(model_name, model_file, data_parallel)
    if dataset == 'cifar100':
        net = cifar100.model_loader.load(model_name, model_file, data_parallel)

    return net
