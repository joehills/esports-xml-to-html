filename=$1
cat $1 | sed 's~<LINE>~<span class="line">~g' > test.html ;
cat test.html | sed 's~</LINE>~</span><br>~g' > test2.html ;
cat test2.html | sed 's~</SPEECH>~</div>~g' > test3.html ;
cat test3.html | sed 's~<SPEECH>~~g' > test4.html ;
cat test4.html | sed -E 's~<SPEAKER>(.+)</SPEAKER>~<div class="speech speaker-\1"><h4>\1</h4>~g' > test5.html ;
cat test5.html | sed 's~<STAGEDIR>~<div class="stagedir">~g' > test6.html ;
cat test6.html | sed 's~</STAGEDIR>~</div>~g' > test7.html ;
cat test7.html | sed 's~</PLAY>~</html>~g' > test8.html ;
cat test8.html | sed 's~<PLAY>~<html>~g' > test9.html ;
cat test9.html | sed 's~</ACT>~</div>~g' > test10.html ;
cat test10.html | sed 's~<ACT>~<div class="act">~g' > test11.html ;
cat test11.html | sed 's~</SCENE>~</div>~g' > test12.html ;
cat test12.html | sed 's~<SCENE>~<div class="scene">~g' > $1.html ;
cat $1.html ;

