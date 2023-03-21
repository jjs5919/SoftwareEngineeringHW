#!/bin/bash

EXT=`echo ${1##*.}`
echo "$EXT"
FILENAME=`echo ${1%.*}`
echo "$FILENAME"

#if [ "$EXT" -ne 'apk' ]
#then
#	echo "You have to add apk file"
#else
#	echo "Yes"
#fi

cd /home/android/work

mv $1 $FILENAME.zip
unzip $FILENAME.zip

mkdir "$FILENAME"Files
cd "$FILENAME"Files
cp /home/android/work/$FILENAME/classes.dex .
dex2jar.sh classes.dex

mkdir "$FILENAME"Classes
mkdir "$FILENAME"Javas
cd "$FILENAME"Classes

mv /home/android/work/"$FILENAME"Files/classes_dex2jar.jar .
jar -xvf classes_dex2jar.jar

cd /home/android/work/"$FILENAME"Files/"$FILENAME"Javas
find /home/android/work/"$FILENAME"Files -name *.class | while read line
do
jad -o -sjava $line
done

#echo "$1" | grep ".apk" | cut -d . -f 1

#ls | grep ".apk" | cut -d . -f 1 | while read line
#do
#echo `ls $line.apk`
#mv $line.apk $line.zip
#done

username = test
password = test123

111111123
1111
username
username
username
username
ldap
pass
password
password password
