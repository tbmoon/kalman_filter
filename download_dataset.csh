#!/bin/tcsh

# Download source file.
mkdir data
mkdir tmp
wget -O "tmp/source.zip" "hanbit.co.kr/lib/examFileDown.php?hed_idx=3801"
cd tmp
unzip "source.zip"

# Move data files into data directory.
set data_dir = "../data"
mkdir -p ${data_dir}
mv "2.MovAvgFilter/SonarAlt.mat" ${data_dir}
mv "10.TrackKalman/Img" ${data_dir}
mv "11.ARS/ArsAccel.mat" ${data_dir}
mv "11.ARS/ArsGyro.mat" ${data_dir}

# Remove tmp directory.
cd ..
rm -rf tmp
