<html>
<head><title>manage DMU</title><head>
<body bgcolor=#FFbb66>

<p><H3>Produce DMU parm file  </h3>



<form method="POST" action="<?php echo $PHP_SELF; ?>" >
 <a  href="dmuup.php" >Back to run DMU </a>
<br>

<br>Analyse type <select NAME="typ1" >
                        <option VALUE="11">use DMU4
                        <option VALUE="12">use DMU5
    </select>
        <select NAME="typ2" >
                <option VALUE="8" >error one by one
                <option VALUE="9" >error by sparse
                        <option VALUE="10" >sparse optim.
    </select>
        <select NAME="typ3" >
                <option VALUE="0" >no scaling
                        <option VALUE="1" >s. of residuals
output    </select>
        <select NAME="typ4" >
                <option VALUE="0" >min. print
                        <option VALUE="1" >standard
    </select>


. . . <INPUT TYPE="submit" value="Run setup parm" >
<br>missing values <INPUT TYPE="data" name="mis" value="0" size="7" >


</center>
<br>Number of variable . . . . . . . . . . . . . . 1 . . .  . 2 . .  . . 3 .  . . . 4 . .  . . 5 . .  . . 6 . .  . . 7 . .  . . 8 . .  . . 9 . .  . . 10 

<br>Name and order of ingeger variables <INPUT TYPE="data" name="int"  size="71" >

<br>Name and order of real variables . . .<INPUT TYPE="data" name="rel"  size="71" >

<br>Model for <INPUT TYPE="data" name="rel1"  size="1" >
fixed factores <INPUT TYPE="data" name="fix1"  size="14" >
random <INPUT TYPE="data" name="ran1"  size="10" >
absorbed <INPUT TYPE="data" name="abs1"  size="4" >and ,
<INPUT TYPE="data" name="weg1"  value="0" size="1" >weight by var. numbers

<br>Model for <INPUT TYPE="data" name="rel2"  size="1" >
fixed factores <INPUT TYPE="data" name="fix2"  size="14" >
random <INPUT TYPE="data" name="ran2"  size="10" >
absorbed <INPUT TYPE="data" name="abs2"  size="4" >and ,
<INPUT TYPE="data" name="weg2"  value="0" size="1" >weight by var. numbers

<br>Model for <INPUT TYPE="data" name="rel3"  size="1" >
fixed factores <INPUT TYPE="data" name="fix3"  size="14" >
random <INPUT TYPE="data" name="ran3"  size="10" >
absorbed <INPUT TYPE="data" name="abs3"  size="4" >and ,
<INPUT TYPE="data" name="weg3"  value="0" size="1" >weight by var. numbers

<table>
<tr><td width="5%">
<br>N
<br>1
<br>2
<br>3
<br>4
<br>5
<br>6
<br>7
<br>8
<br>9
<br>10
<br>11
<br>12
<br>13
<br>14
<br>15
</td><td>
<br>class variable names
<br><TEXTAREA ROWS=17 COLS=30  NAME="fila"   > </textarea>
</form>
</td></tr></table>




<?php

require("/srv/www/htdocs/htm/kc/minkmap/crimapl/db_connect.02.php");





  if( $pa == '1' ) {

    $file =str_replace( " ", "","$va");
echo $file;
      $lines =file($file);
      foreach($lines as $ln => $lc){
      $li =$ln;

         $a1= substr($lc,5,7);
      echo "<br>";
      echo $lc;                    }
}

/* open output fil  */
 if( $fila != " "  && $fila != "" ){ echo "<br><br>  .    .  window content is saved ";
           $filn =str_replace( " ", "","$va");
           If(!$handle = fopen($filn, 'w+')) {echo "can not open file";exit ;}


                     fwrite($handle, $fila );

                 fclose($handle);
                }
  if( $ps != '0' ) {
if($pro  == 'r_dmu4') {  system( "./r_dmu4;mv test4.lst test4.txt", $retval);}
if($pro  == 'r_dmu5') {  system( "./r_dmu5;mv test5.lst test5.txt", $retval);}
if($pro  == 'r_dmuai') {  system( "./r_dmuai;mv testai.lst testai.txt", $retval);}


  system( "mv test4.lst test4.txt", $retval);
               }
    ?>
</body>
</html>
