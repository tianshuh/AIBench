# 安装python2

wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tar.xz
tar -zxvf Python-2.7.16.tgz
cd Python-2.7.16
./configure --prefix=/usr/local/python-2.7.16
make
make install


# 配置环境

ln -s /usr/local/python-2.7.16/bin/python /usr/bin/python2


# 下载数据集 

wget http://snap.stanford.edu/data/web-Google.txt.gz
gzip -d web-Google.txt.gz


# 下载 `snap`

wget http://snap.stanford.edu/snappy/release/snap-4.1.0-4.1-centos6.5-x64-py2.6.tar.gz
tar zxvf snap-4.1.0-4.1-centos6.5-x64-py2.6.tar.gz
cd snap-4.1.0-4.1-centos6.5-x64-py2.6
python2 setup.py install


# 运行

python2 pageRank.py

