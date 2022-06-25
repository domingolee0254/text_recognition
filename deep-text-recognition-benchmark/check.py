import torch 
import numpy as np

path = './data_lmdb/train/data.mdb'
indices = np.array([])
dataset = torch.utils.data.Subset(path, indices[:])



print(dataset)
print(len(dataset))
