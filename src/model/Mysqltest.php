<html>
<head>
<title>Connection a Mysql en php</title>
</head>
<body>

<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$mysqli = new mysqli($dbhost,$dbuser,$dbpass);
if ($mysqli -> connect_errno){
    printf("connection echouee",$mysqli-> connect_error);
    exit();
}

printf("connection reussie");
$mysqli->close();
?>

</body>
</html>