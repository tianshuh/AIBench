#!/bin/bash
mkdir ../dataset/WMT-English-German/training
wget http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/training.tar.gz &&
 tar -xf training.tar.gz ../dataset/WMT-English-German/trainingmkdir ../dataset/WMT-English-German/validation
wget http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/validation.tar.gz 
&& tar -xf validation.tar.gz ../dataset/WMT-English-German/validationmkdir ../dataset/WMT-English-German/testing
wget http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/mmt16_task1_test.t
ar.gz && tar -xf mmt16_task1_test.tar.gz ./dataset/WMT-English-German/testing
python attention-is-all-you-need-pytorch/preprocess.py -train_src  ../d
ataset/WMT-English-German/training/train.en -train_tgt  ../dataset/WMT-English-German/training/train.de -valid_src  ../dataset/WMT-English-German/validation/val.en -valid_tgt ../dataset/WMT-English-German/validation/val.de -save_data ../dataset/WMT-English-German/multi30k.atok.low.ptpython attention-is-all-you-need-pytorch/train.py -data ../dataset/WMT-
English-German/multi30k.atok.low.pt -save_model trained -save_mode best -proj_share_weight -label_smoothing -batch_size 256 -epoch 20python attention-is-all-you-need-pytorch/translate.py -model trained.ch
kpt -vocab ../dataset/WMT-English-German/multi30k.atok.low.pt -src ../dataset/WMT-English-German/testing/test.en

