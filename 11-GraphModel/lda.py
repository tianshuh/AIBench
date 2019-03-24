#!/usr/bin/env python

# We copyed this code from https://radimrehurek.com/gensim/wiki.html#latent-dirichlet-allocation

import logging
import gensim

logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s', level=logging.INFO)

WIKI_DIR = '/home/share/wiki'

# load id->word mapping (the dictionary), one of the results of step 2 above
id2word = gensim.corpora.Dictionary.load_from_text('%s/wiki_wordids.txt.bz2' % WIKI_DIR)
# load corpus iterator
mm = gensim.corpora.MmCorpus('%s/wiki_tfidf.mm' % WIKI_DIR)
# mm = gensim.corpora.MmCorpus('%s/wiki_en_tfidf.mm.bz2' % WIKI_DIR) # use this if you compressed the TFIDF output

print(mm)

# extract 100 LDA topics, using 1 pass and updating once every 1 chunk (10,000 documents)
lda = gensim.models.ldamodel.LdaModel(corpus=mm, id2word=id2word, num_topics=100, update_every=1, passes=1)

# print the most contributing words for 20 randomly selected topics
lda.print_topics(20)
