# 11. Graph Model
## 准备工作
### 环境搭建
```Shell
pip install -r requirements.txt
```
### 准备语料库
```Shell
# 下载数据集
wget -c https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2 
# 将文章转化成纯文本，并存储稀疏的TF-IDF向量
python -m gensim.scripts.make_wiki enwiki-latest-pages-articles.xml.bz2  /your/path/wiki
```

## 用法
```Python
./lda.py
```

## 参考链接
1. [Experiments on the English Wikipedia](https://radimrehurek.com/gensim/wiki.html)
1. [wiki语料实验](http://d0evi1.com/gensim/wiki/)

