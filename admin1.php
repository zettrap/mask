<!DOCTYPE HTML> 
<html> 
<head> 
<meta charset="utf-8"> 
<title>Админ</title> 
</head> 
<body> 
<?php $host="localhost"; 
$user="dbus"; 
$pass="A4NpFwnYsbNqnQ2e"; 
$db_name="my_bd_morozov"; 
$link=mysql_connect($host,$user,$pass); 
mysql_select_db($db_name,$link); 
echo "Привет admin"; 
?> 
<h1>Панель управления комментариями:</h1></br> 
<?php 
//echo "$_SESSION['user_per']"; 
$sql = mysql_query("SELECT * FROM `komments1`"); 
while ($result = mysql_fetch_array($sql)) 
{ 
echo "Номер: ".$result['id']." <br>"; 
echo "Одобрение: ".$result['approval']." <br>"; 
if ($result['approval']=="0") 
{ 
echo "Комментарий не просмотрен <br>"."<br>"."<form method='POST'>"."<input type='submit' value='Одобрить' name='app1_".$result['id']."'>"." "."<input type='submit' value='Отклонить' name='app2_".$result['id']."'>"."</form>"."<br>"; 

#$query=mysql_query("UPDATE komments1 SET approval='1' WHERE id='".$result['id']."'"); 
#echo "<a href=".$query."> Одобрить комментарий </a><br>"; 
#echo "<a href=otklon.php?id_k=".$result['id']."> Отклонить комментарий </a>"; 
} 
if ($result['approval']=="1") 
{ 
echo "Комментарий одобрен <br>"."<br>"."<form method='POST'>"."<input type='submit' value='Отклонить' name='app2_".$result['id']."'>"."</form>"."<br>"; 
# $query=mysql_query("UPDATE komments1 SET approval='2' WHERE id='".$result['id']."'"); 
# echo "<a href=".$query."> Отклонить комментарий </a>"; 
} 

if ($result['approval']=="2") 
{ 
echo "Комментарий отклонен <br>"."<br>"."<form method='POST'>"."<input type='submit' value='Одобрить' name='app1_".$result['id']."'>"."</form>"."<br>"; 
#$query=mysql_query("UPDATE komments1 SET approval='1' WHERE id='".$result['id']."'"); 
#echo "<a href=".$query."> Одобрить комментарий </a><br>"; 
} 

//echo "<form method='POST'>"."<input type='submit' value='Одобрить' name='app1_".$i."'>"." "."<input type='submit' value='Отклонить' name='app2_".$i."'>"."<br>"; 

if(isset($_POST["app1_".$result['id'].""])) 
{ 
mysql_query("UPDATE komments1 SET approval='1' WHERE id='".$result['id']."'"); 
echo "Комментарий ".$result['id']." одобрен"; 
} 
if(isset($_POST["app2_".$result['id'].""])) 
{ 
mysql_query("UPDATE komments1 SET approval='2' WHERE id='".$result['id']."'"); 
echo "Комментарий ".$result['id']." отклонен"; 
} 
#$query=mysql_query("UPDATE komments1 SET approval='1'"); 
#echo "<a href=".$query."> Одобрить комментарий </a><br>"; 
Echo "<hr>"; 
} 
//echo "</form>"; 



//for ($i<=sqll 
//if(isset($_POST['app1_2'])) 
//{ 
// mysql_query("UPDATE komments1 SET approval='1' WHERE id='2'"); 
// echo "Комментарий 2 одобрен"; 
//} 

//if(isset($_POST['app2_2'])) 
//{ 
// echo "Комментарий ".$_SESSIN['id_k']."отклонен"; 
//} 
?>