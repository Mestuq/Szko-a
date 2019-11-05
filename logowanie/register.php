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
        $STMT=mysqli_prepare($DB,"SELECT ID FROM users where users.login=?;");
        mysqli_stmt_bind_param($STMT,"s",$login);
        mysqli_stmt_execute($STMT);
        $result=mysqli_stmt_get_result($STMT);
        $row=$result->fetch_array(MYSQLI_ASSOC);
        
        if(empty($row['ID']))
        {
            echo("Trwa zakładanie nowego konta");

            $STMTregister=mysqli_prepare($DB,"INSERT INTO `users` (`login`, `haslo`) VALUES (?, ?);");
            mysqli_stmt_bind_param($STMTregister,"ss",$login,$haslo);
            mysqli_stmt_execute($STMTregister);

            header("Location: glowna.php");
            exit();
        }else
        {
            echo("Takie konto już istnieje!");
        }
        mysqli_close($DB);
        
    }
}
?>


