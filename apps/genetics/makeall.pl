cd 1
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../2
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../3
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../4
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../5
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../6
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../7
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../8
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../9
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm  
cd ../10
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm   
cd ../11
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm    
cd ../12
cat 0.htm 1.htm 2.htm 3.htm 4.htm 5.htm 6.htm 7.htm >all.htm     
cd ../../genetik/applets
cat 0.htm kitest.htm ki1.htm mating.htm li.htm selekt.htm rand.htm tabularapp.htm ki.htm single.htm adef.htm avs.htm animalm.htm  deltag.htm heritt.htm >all.htm  
cd ../../genetics
cat genetik.htm 1/all.htm 2/all.htm 3/all.htm 4/all.htm 5/all.htm 6/all.htm 7/all.htm 8/all.htm 9/all.htm 10/all.htm 11/all.htm 12/all.htm ../genetik/applets/all.htm >all.htm 

rm */all.htm

find . -name "all.htm*" -print -exec perl -pi -e 's/\.\.\/\.\./../g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/^<.?body.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/^<.?html.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*title\>.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/^<.?he.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\"0\.htm.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/\<hr\>/\<p\>/gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\>return a.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\>page .*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/^<META.*//gi' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*APPLET.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*CODE=.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/^<bod>/<html><body>/' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\d+\.htm.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\.htm.*Con.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\d+\.htm.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*\.htm.*Con.*//g' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*Sound .* slide.*//g' {} \;


find . -name "all.htm*" -print -exec perl -pi -e 's/.*Preceding page*//i' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*Next page*//i' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/.*>Back to .*//i' {} \;
find . -name "all.htm*" -print -exec perl -pi -e 's/\"4\.gif/\"1\/4\.gif/i' {} \;

 
