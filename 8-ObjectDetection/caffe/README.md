# 8. 目标检测 Faster R-CNN (caffe)

## 声明

代码来源于 [py-faster-rcnn](https://github.com/rbgirshick/py-faster-rcnn)，为了兼容 deepo 环境 和 Python3，部分代码进行了修改。

如果您的工作有用到 `Faster R-CNN`，请引用：

    @inproceedings{renNIPS15fasterrcnn,
        Author = {Shaoqing Ren and Kaiming He and Ross Girshick and Jian Sun},
        Title = {Faster {R-CNN}: Towards Real-Time Object Detection
                 with Region Proposal Networks},
        Booktitle = {Advances in Neural Information Processing Systems ({NIPS})},
        Year = {2015}
    }



## 准备工作
### 环境搭建
`deepo` 镜像中没有 `py-faster-rcnn` 所需要的 `easydict`, `opencv-python` 等，需要在容器中手动安装，或者使用我们定制的 [`docker` 镜像](#)。

```Shell
pip install -r requirements.txt
```

### 下载预训练模型

#### 在 `ImageNet` 上预训练后的 Caffe (ZF, VGG16) 模型
```Shell
./data/scripts/fetch_imagenet_models.sh
```
#### 在 `Pascal VOC 2007` 上预训练的 Faster R-CNN 模型
```Shell
./data/scripts/fetch_faster_rcnn_models.sh
```

### 下载数据集
#### Pascal VOC 2007
```Shell
# 如果下载不了，可以去 [Github Issue #48](https://github.com/rbgirshick/rcnn/issues/48) 看看
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCdevkit_08-Jun-2007.tar

tar xvf VOCtrainval_06-Nov-2007.tar
tar xvf VOCtest_06-Nov-2007.tar
tar xvf VOCdevkit_08-Jun-2007.tar

cd $FRCN_ROOT/data
ln -sv /path/to/VOCdevkit VOCdevkit2007
```


#### Coco 2014
```Shell
wget http://images.cocodataset.org/zips/train2014.zip
wget http://images.cocodataset.org/zips/val2014.zip
wget http://images.cocodataset.org/zips/test2014.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2014.zip

unzip train2014.zip
unzip val2014.zip
unzip test2014.zip

cd $FRCN_ROOT/data
ln -sv /path/to/coco coco
```

## 用法

值得说明的是，目前的交替优化算法只支持 Pascal VOC，不支持 COCO；如果需要训练 COCO 数据集，请使用联合训练的方法。

### 交替优化 (alternating optimization)

```Shell
cd $FRCN_ROOT
./experiments/scripts/faster_rcnn_alt_opt.sh [GPU_ID] [NET] [--set ...]
# GPU_ID is the GPU you want to train on
# NET in {ZF, VGG_CNN_M_1024, VGG16} is the network arch to use
# --set ... allows you to specify fast_rcnn.config options, e.g.
#   --set EXP_DIR seed_rng1701 RNG_SEED 1701
```

### 联合训练 (approximate joint training)

```Shell
cd $FRCN_ROOT
./experiments/scripts/faster_rcnn_end2end.sh [GPU_ID] [NET] [--set ...]
# GPU_ID is the GPU you want to train on
# NET in {ZF, VGG_CNN_M_1024, VGG16} is the network arch to use
# --set ... allows you to specify fast_rcnn.config options, e.g.
#   --set EXP_DIR seed_rng1701 RNG_SEED 1701
```

## 参考链接
1. [https://github.com/rbgirshick/py-faster-rcnn](https://github.com/rbgirshick/py-faster-rcnn)
1. [ICCV2015 Tutorial: Training R-CNNs of various velocities](https://www.dropbox.com/s/xtr4yd4i5e0vw8g/iccv15_tutorial_training_rbg.pdf?dl=0)
