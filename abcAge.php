
<form action="" method="post">
<label for="date"> Выберите дату:</label>
<input type="date" id="date" name="date"><br><br>
<input type="submit" value="Применить">
</form>
<?php
$date=$_POST['date'];

if($date=="")
    echo "Вы не выбрали дату";
else if($date<"2021-01-01"){
    echo "не валидная дата";
}
else if($date>="2021-01-03"&& $date<="2021-01-12"){
    echo "не валидная дата";
}
else if($date>="2021-01-23"){
    echo "Левые носки раскуплены";
}
else{
    echo "<H1>Секция с информацией</H1><br>";
    $user='root';
    $password='';
    $db='abcage';
    $host="localhost";
    $dsn='mysql:host='.$host.';dbname='.$db;
    $pdo=new PDO($dsn,$user,$password);
    $sql='SELECT `Товар`,`Остаток`,`Цена`,`Дата` FROM `repository` WHERE `Дата`=?';
    $query=$pdo->prepare($sql);
    $query->execute([$date]);
    $info=$query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($info as $item=>$value){
        echo '<b>'.$value['Товар'].'</b><br><b>Остаток: </b>'.$value['Остаток'].'<br><b>Цена: </b>'.$value['Цена'].'<br><br>';
    }




}
