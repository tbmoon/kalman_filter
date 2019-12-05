#!/bin/tcsh

# Download source file.
mkdir tmp
wget -O "tmp/source.zip" "hanbit.co.kr/lib/examFileDown.php?hed_idx=3801"
cd tmp
unzip "source.zip"

# Move data files into corresponding data directory.
# Ch02.
set data_dir = "../Ch02.MovingAverageFilter/data"
mkdir -p ${data_dir}
mv "2.MovAvgFilter/SonarAlt.mat" ${data_dir}
# Ch03.
set data_dir = "../Ch03.LowPassFilter/data"
mkdir -p ${data_dir}
mv "3.LPF/SonarAlt.mat" ${data_dir}


# Remove tmp directory.
cd ..
rm -rf tmp
