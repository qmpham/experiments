if ! command -v unzip &> /dev/null
then
    echo "unzip could not be found"
    exit 2
fi

#create ECB corpora
wget https://object.pouta.csc.fi/OPUS-ECB/v1/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE

#create JRC corpora
wget https://object.pouta.csc.fi/OPUS-JRC-Acquis/v3.0/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE

#create Koran corpora
wget https://object.pouta.csc.fi/OPUS-Tanzil/v1/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE

#create IT corpora
wget https://object.pouta.csc.fi/OPUS-GNOME/v1/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE
wget https://object.pouta.csc.fi/OPUS-KDE4/v2/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE
wget https://object.pouta.csc.fi/OPUS-Ubuntu/v14.10/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE
wget https://object.pouta.csc.fi/OPUS-PHP/v1/moses/en-fr.txt.zip
unzip en-fr.txt.zip
rm en-fr.txt.zip
rm README
rm LICENSE
wget http://opus.nlpl.eu/download.php?f=OpenOffice/v2/moses/en-fr.txt.zip
unzip download.php?f=OpenOffice%2Fv2%2Fmoses%2Fen-fr.txt.zip
rm download.php?f=OpenOffice%2Fv2%2Fmoses%2Fen-fr.txt.zip
rm README
cat Ubuntu.en-fr.en KDE4.en-fr.en PHP.en-fr.en OpenOffice.en-fr.en GNOME.en-fr.en > IT.en-fr.en
cat Ubuntu.en-fr.fr KDE4.en-fr.fr PHP.en-fr.fr OpenOffice.en-fr.fr GNOME.en-fr.fr > IT.en-fr.fr

#create news corpora
wget http://data.statmt.org/wmt17/translation-task/training-parallel-nc-v12.tgz
tar zxvf training-parallel-nc-v12.tgz 
cp training/news-commentary-v12.fr-en.* ./
rm -rf training

#create TED corpora
wget https://object.pouta.csc.fi/OPUS-TED2013/v1.1/moses/en-fr.txt.zip
unzip en-fr.txt.zip 
rm en-fr.txt.zip README 

rm *ids
