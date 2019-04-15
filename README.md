# AI Component Benchmark

**Please click [HERE](https://github.com/XingwXiong/AIBench/wiki) to view [*"The Teamwork Development Guide"*](https://github.com/XingwXiong/AIBench/wiki) , if you're a member of AIBench project.**


## To Do List (10/15)
- [x] 1. Image classification (by xingw)
- [x] 2. Image generation (by xingw)
- [x] 3. Text-to-Text Translation (by cjn)
- [x] 4. Image-to-Text (by xingw & cjn)
- [x] 5. Image-to-Image (by xingw)
- [ ] 6. Speech-to-Text
- [x] 7. Face embedding (by xingw)
- [x] 8. Object detection (by xingw)
- [x] 9. Recommendation (by cjn)
- [x] 10. PageRank (by cjn)
- [x] 11. Graph Model (by xingw)
- [ ] 12. Clustering
- [ ] 13. Classification
- [ ] 14. Feature Exaction (in progress)
- [ ] 15. Search Engine Indexing (in progress)

|  #   |          Name          |                          Algorithm                           |                           Dataset                            |     Tensorflow     |       Caffe        |      PyTorch       |       Keras        |
| :--: | :--------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------: | :----------------: | :----------------: | :----------------: |
|  1   |  Image Classification  |    [ResNet20/ResNet32](https://arxiv.org/abs/1512.03385)     |   [CIFAR-10](https://www.cs.toronto.edu/~kriz/cifar.html)    |        :x:         |        :x:         |        :x:         | :heavy_check_mark: |
|  2   |    Image Generation    |      [WassersteinGAN](https://arxiv.org/abs/1701.07875)      |               [LSUN](https://www.yf.io/p/lsun)               |        :x:         |        :x:         | :heavy_check_mark: |        :x:         |
|  3   |       Text2Text        |        [Attention](https://arxiv.org/abs/1706.03762)         | [WMT English-German](https://nlp.stanford.edu/projects/nmt)  | :heavy_check_mark: |        :x:         |        :x:         |        :x:         |
|  4   |       Image2Text       |     [InceptionV3+LSTM](https://arxiv.org/abs/1411.4555)      |            [MS COCO2014](http://cocodataset.org/)            | :heavy_check_mark: |        :x:         |        :x:         |        :x:         |
|  5   |      Image2Image       |         [CycleGAN](https://arxiv.org/abs/1703.10593)         |       [Cityscapes](https://www.cityscapes-dataset.com)       |        :x:         |        :x:         | :heavy_check_mark: |        :x:         |
|  6   |      Speech2Text       |      [Deep Speech 2](https://arxiv.org/abs/1512.02595)       |          [LibriSpeech](http://www.openslr.org/12/)           |        :x:         |        :x:         |        :x:         |        :x:         |
|  7   |     Face Embedding     |         [facenet](https://arxiv.org/abs/1503.03832)          | [CASIA-WebFace](https://drive.google.com/file/d/1Of_EVz-yHV7QVWQGihYfvtny9Ne8qXVz/view)/[VGGFace2](http://www.robots.ox.ac.uk/~vgg/data/vgg_face2) | :heavy_check_mark: |        :x:         |        :x:         |        :x:         |
|  8   |    Object Detection    |       [Faster R-CNN](https://arxiv.org/abs/1506.01497)       | [Pascal VOC2007](http://host.robots.ox.ac.uk/pascal/VOC/voc2007/)/[MS COCO2014](http://cocodataset.org/) |        :x:         | :heavy_check_mark: |        :x:         |        :x:         |
|  9   |     Recommendation     | [Probabilistic MF](https://datajobs.com/data-science-repo/Recommender-Systems-[Netflix].pdf) | [MovieLens ml-100k](https://grouplens.org/datasets/movielens/100k/)/[GroupLens](https://grouplens.org/datasets) | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  10  |        PageRank        | [PageRank](http://ilpubs.stanford.edu:8090/422/1/1999-66.pdf) | [Google Web Graph](http://snap.stanford.edu/data/web-Google.html) | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  11  |      Graph Model       |      [LDA](http://www.jmlr.org/papers/v3/blei03a.html)       |  [Wikipedia English articles](https://dumps.wikimedia.org/)  | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  12  |       Clustering       |        [K-Means](http://eprints.iisc.ernet.in/2937/)         | [Facebook Social Network](<http://snap.stanford.edu/data/egonets-Facebook.html>) | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  13  |     Classification     | [Native Bayes Classification](https://www.cc.gatech.edu/~isbell/reading/papers/Rish.pdf) | [Amazon Movie Review](<http://snap.stanford.edu/data/web-Movies.html>) | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  14  |    Feature Exaction    | [SIFT](https://link.springer.com/article/10.1023/B:VISI.0000029664.99615.94) |            [ImageNet](http://www.image-net.org/)             | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |
|  15  | Search Engine Indexing | [Inverted Index](https://xlinux.nist.gov/dads/HTML/invertedIndex.html) |  [Wikipedia English articles](https://dumps.wikimedia.org/)  | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: | :heavy_minus_sign: |

Each component benchmark is specified with a problem statement, one or more dataset, algorithms, involved data motifs, implementations and their contributors.  

## 1. Image classification  
**Workloads type:** AI  
**Application domains:**   
**Dataset:** Russakovsky, O.; Deng, J.; Su, H.; Krause, J.; Satheesh, S.; Ma, S.; Huang, Z.; Karpathy, A.; Khosla, A.; Bernstein, M. S.; Berg, A. C.; Fei-Fei, L. (2015). ImageNet Large Scale Visual Recognition Challenge, International Journal of Computer Vision (IJCV).  
**Algorithm:** He, K.; Zhang, X.; Ren, S; Sun, J. (2015), 'Deep Residual Learning for Image Recognition', CoRR abs/1512.03385.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 2. Image generation  
**Workloads type:** AI  
**Application domains:**   
**Dataset:** Fisher Yu, Yinda Zhang, Shuran Song, Ari Seff, and Jianxiong Xiao. LSUN: Construction of a large-scale image dataset using deep learning with humans in the loop. Corr, abs/1506.03365, 2015.  
**Algorithm:** Arjovsky, Martin, Chintala, Soumith, and Bottou, L´eon. Wasserstein gan. arXiv preprint arXiv:1701.07875, 2017.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   
**References**:
1. [LSUN official webpage](https://www.yf.io/p/lsun)
2. [Github fyu/lsun](https://github.com/fyu/lsun)

## 3. Text-to-Text Translation  
**Workloads type:** AI   
**Application domains:**   
**Dataset:** WMT English-German from Bojar, O.; Buck, C.; Federmann, C.; Haddow, B.; Koehn, P.; Monz, C.; Post, M.; Specia, L., ed. (2014), Proceedings of the Ninth Workshop on Statistical Machine Translation, Association for Computational Linguistics, Baltimore, Maryland, USA.  
**Algorithm:** Vaswani, A.; Shazeer, N.; Parmar, N.; Uszkoreit, J.; Jones, L.; Gomez, A. N.; Kaiser, L.; Polosukhin, I. (2017), 'Attention Is All You Need', CoRR abs/1706.03762.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 4. Image-to-Text  
**Workloads type:** AI   
**Application domains:**   
**Dataset:** MS COCO dataset, http://cocodataset.org/  
**Algorithm:** "Show and Tell: Lessons learned from the 2015 MSCOCO Image Captioning Challenge." Oriol Vinyals, Alexander Toshev, Samy Bengio, Dumitru Erhan. IEEE transactions on pattern analysis and machine intelligence (2016).  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 5. Image-to-Image  
**Workloads type:** AI   
**Application domains:**   
**Dataset:** M. Cordts, M. Omran, S. Ramos, T. Rehfeld, M. Enzweiler, R. Benenson, U. Franke, S. Roth, and B. Schiele. The cityscapes dataset for semantic urban scene understanding. In CVPR, 2016  
**Algorithm:** Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networks  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 6. Speech-to-Text  
**Workloads type:** AI   
**Application domains:**   
**Dataset:** Panayotov, V.; Chen, G.; Povey, D.; Khudanpur, S. (2015), Librispeech: An ASR corpus based on public domain audio books, in '2015 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP)', pp. 5206-5210.  
**Algorithm:** Amodei, D.; Anubhai, R.; Battenberg, E.; Case, C.; Casper, J.; Catanzaro, B.; Chen, J.; Chrzanowski, M.; Coates, A.; Diamos, G.; Elsen, E.; Engel, J.; Fan, L.; Fougner, C.; Han, T.; Hannun, A. Y.; Jun, B.; LeGresley, P.; Lin, L.; Narang, S.; Ng, A. Y.; Ozair, S.; Prenger, R.; Raiman, J.; Satheesh, S.; Seetapun, D.; Sengupta, S.; Wang, Y.; Wang, Z.; Wang, C.; Xiao, B.; Yogatama, D.; Zhan, J.; Zhu, Z. (2015), 'Deep Speech 2: End-to-End Speech Recognition in English and Mandarin', CoRR abs/1512.02595.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 7. Face embedding  
**Workloads type:** AI   
**Application domains:**   
**Dataset:** G. B. Huang, M. Ramesh, T. Berg, and E. Learned-Miller. Labeled faces in the wild: A database for studying face recognition in unconstrained environments. Technical Report 07-49, University of Massachusetts, Amherst, October 2007. 5  
**Algorithm:** FaceNet: A Unified Embedding for Face Recognition and Clustering  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 8. Object detection  
**Workloads type:** AI  
**Application domains:**   
**Dataset:** Lin, T.-Y.; Maire, M.; Belongie, S. J.; Bourdev, L. D.; Girshick, R. B.; Hays, J.; Perona, P.; Ramanan, D.; Dollбr, P.; Zitnick, C. L. (2014), 'Microsoft COCO: Common Objects in Context', CoRR abs/1405.0312.  
**Algorithm:** Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 9. Recommendation  
**Workloads type:** AI  
**Application domains:**   
**Dataset:** Harper, F. M.; Konstan, J. A. (2015), 'The MovieLens Datasets: History and Context', ACM Trans. Interact. Intell. Syst. 5(4), 19:1--19:19.  
**Algorithm:** Koren, Y., Bell, R.M., Volinsky, C. Matrix factorization techniques for recommender systems. IEEE Computer 42(8), 30–37 (2009)  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 10. PageRank  
**Workloads type:** Graph Analytics   
**Application domains:**   
**Dataset:** Google web graph. http://snap.stanford.edu/data/web-Google.htm  
**Algorithm:** L. Page, S. Brin, R. Motwani, and T. Winograd. The pagerank citation ranking: Bringing order to the web. Technical report, Stanford University, Stanford, CA, 1998. 17, 18, 88  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 11. Graph Model  
**Workloads type:** Graph Analytics  
**Application domains:**   
**Dataset:** Wikipedia English articles. https://dumps.wikimedia.org/  
**Algorithm:** D. M. Blei, A. Y. Ng, and M. I. Jordan. Latent dirichlet allocation. the Journal of machine Learning research, 3:993–1022, 2003.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 12. Clustering  
**Workloads type:** Big Data  
**Application domains:**   
**Dataset:** Facebook social network. http://snap.stanford.edu/data/egonets-Facebook.html  
**Algorithm:** Krishna, K., Murty, M. N. (1999). Genetic K-means algorithm. IEEE Transactions on Systems, Man, and Cybernetics, Part B (Cybernetics), 29(3), 433-439.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 13. Classification  
**Workloads type:**   
**Application domains:**   
**Dataset:** Amazon movie review. http://snap.stanford.edu/data/web-Movies.html  
**Algorithm:** Rish, I. (2001, August). An empirical study of the naive Bayes classifier. In IJCAI 2001 workshop on empirical methods in artificial intelligence (Vol. 3, No. 22, pp. 41-46). New York: IBM.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 14. Feature Exaction  
**Workloads type:**   
**Application domains:**   
**Dataset:** ImageNet. http://www.image-net.org  
**Algorithm:** Lowe, D. G. (2004). Distinctive image features from scale-invariant keypoints. International journal of computer vision, 60(2), 91-110.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   

## 15. Search Engine Indexing  
**Workloads type:**   
**Application domains:**   
**Dataset:** Wikipedia English articles. https://dumps.wikimedia.org/  
**Algorithm:** Black, Paul E., inverted index, Dictionary of Algorithms and Data Structures, U.S. National Institute of Standards and Technology Oct 2006. Verified Dec 2006.  
**Involved data motifs:**   
**Software stacks:**   
**Implementation Contributors:**   



## Others
### Dual Learning
### GBDT
### Learning to Rank
### Tranditional Machine Learning
### Transformer
### Social Network
### BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding
[paper view](https://arxiv.org/pdf/1810.04805.pdf)  
