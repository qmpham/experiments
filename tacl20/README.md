# Reproducing the experiments on Multidomain adaptation 

This repos contains the necessary data to reproduce the experiments on multidomain adaptation reported in:

Our experiments use French-English parallel data from various sources, which are then split into train, dev and test sets.

* Use `corpora_download.sh` to download and build datasets for the ECB, JRC, IT, TED and Koran corpora. These data will be downloaded from the [Opus Web site](http://opus.lingfil.uu.se/).
* For the medical corpora the following steps need to be taken:
  + Downloads [Medline corpora](https://drive.google.com/drive/folders/1yBfh_KFSN0XxP2k9rnkxKNKYvjpj703p)
  + Downloads [UFAL corpora](https://ufal.mff.cuni.cz/ufal_medical_corpus)
  + Extract the corresponding archive files
  + For Medline:
  ```
    cd fr-en
    cat *_en.txt > medline.en
    cat *_fr.txt > medline.fr
  ```
  + For UFAL:
  ```
    cd UFAL_medical_shuffled/ 
    gunzip shuffled.fr-en.gz 
    cut -f1 shuffled.fr-en > UFAL.fr 
    cut -f2 shuffled.fr-en > UFAL.en 
  ```
  + Merge the two data sources:
  ```
  cat medline.en UFAL.en > UFAL.med.en 
  cat medline.fr UFAL.fr > UFAL.med.fr 
  ```
  + Use the corresponding index files to extract sentences from `UFAL.med.en`, `UFAL.med.fr`

* To reproduce our automatic clustering, please follow these steps:
```
  cat UFAL.med.en ECB.en-fr.en IT.en-fr.en JRC-Acquis.en-fr.en Tanzil.en-fr.en TED2013.en-fr.en > all.en
  cat UFAL.med.fr ECB.en-fr.fr IT.en-fr.fr JRC-Acquis.en-fr.fr Tanzil.en-fr.fr TED2013.en-fr.fr > all.fr
```
Then use index files `all.train.en.cluster.XXX.detok.index` to build the corpus of cluster XXX from `all.en`, `all.fr`

Please address remaining questions to [Minh Quang Pham](mailto:minhquang.pham@limsi.fr)
  
