for file in `ls *.txt`;
do 
  filename=`echo $file | awk -F. '{print $1}'`;
  mkdir $filename;
  extname=`echo $file | awk -F. '{print $2}'`;
  mkdir $extname;
  cp -r $file $extname;
  mv $extname $filename;
done