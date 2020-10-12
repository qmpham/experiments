# experiments
* Please use corpora_download.sh to build ECB, JRC, IT, TED and Koran corpora. <br />
* For medical corpora please do following steps: <br />
  + Downloads medline corpora at https://drive.google.com/drive/folders/1yBfh_KFSN0XxP2k9rnkxKNKYvjpj703p <br />
  + Downloads UFAL corpora at https://ufal.mff.cuni.cz/ufal_medical_corpus <br />
  + Extracts 2 downloaded files <br />
  + For medline: <br />
    + cd fr-en <br />
    + cat *_en.txt > medline.en <br />
    + cat *_fr.txt > medline.fr <br />
  + For UFAL: <br />
    + cd UFAL_medical_shuffled/ <br />
    + gunzip shuffled.fr-en.gz <br />
    + cut -f1 shuffled.fr-en > UFAL.fr <br />
    + cut -f2 shuffled.fr-en > UFAL.en <br />
  + cat medline.en UFAL.en > UFAL.med.en <br />
  + cat medline.fr UFAL.fr > UFAL.med.fr <br />
  + Using corresponding index file to extract sentences from UFAL.med.en, UFAL.med.fr <br />

* To build clusters, please follow these steps: <br />
  + cat UFAL.med.en ECB.en-fr.en IT.en-fr.en JRC-Acquis.en-fr.en Tanzil.en-fr.en TED2013.en-fr.en > all.en <br />
  + cat UFAL.med.fr ECB.en-fr.fr IT.en-fr.fr JRC-Acquis.en-fr.fr Tanzil.en-fr.fr TED2013.en-fr.fr > all.fr <br />
  
