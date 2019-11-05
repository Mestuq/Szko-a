<?php
session_start();
if(isset($_SESSION['zalogowany']))
{
    header("Location: glowna.php");
    exit();
}else
{
    if(isset($_POST['login'])&&isset($_POST['haslo']))
    {
        $login=$_POST['login'];
        $haslo=$_POST['haslo'];

        $DB=mysqli_connect("localhost","root","","login");
        $STMT=mysqli_prepare($DB,"SELECT ID FROM users where users.login=? and users.haslo=?;");
        mysqli_stmt_bind_param($STMT,"ss",$login,$haslo);
        mysqli_stmt_execute($STMT);
        $result=mysqli_stmt_get_result($STMT);
        $row=$result->fetch_array(MYSQLI_ASSOC);
        
        if(empty($row['ID']))
        {
            echo("<h1>nie udało się zalogować</h1>");
        }else
        {
            echo("zalogowano");
            $_SESSION['zalogowany']="123";
            $_SESSION['login']=$login;
            $_SESSION['ID']=$row['ID'];

            header("Location: glowna.php");
            exit();
        }
        mysqli_close($DB);
        
    }
}
?>


<html>
    <head>
        <meta charset="UTF-8">

    </head>
    <body style="text-align:center;">
        <br />
        <br />
        Zaloguj się!
        <form method="post" action="index.php">
            <input type="text" name="login" placeholder="login" autocomplete="off"><br />
            <input type="text" name="haslo" placeholder="hasło" autocomplete="off"><br />
            <br />
            <button type="submit">Zaloguj się</button>
        </form>
        <br />
        Zarejestruj się
        <form method="post" action="register.php">
            <input type="text" name="login" placeholder="login" autocomplete="off"><br />
            <input type="text" name="haslo" placeholder="hasło" autocomplete="off"><br />
            <br />
            <button type="submit">Nowe konto</button>
        </form>
        

    </body>
</html>