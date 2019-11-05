<?php
session_start();
if(!isset($_SESSION['zalogowany']))
{
    header("Location: index.php");
    exit();
}


?>
<html>
    <head>
        <meta charset="UTF-8">

    </head>
    <body>
        <?php 
            echo("Witaj ".$_SESSION['login']."<br />");
            echo("Twoje id to ".$_SESSION['ID']."<br />");
        ?>
        <button onclick="logout()">WYLOGUJ</button>


        <script>
        function logout()
        {
            window.location.href="loginout.php";
        }
        </script>
    </body>
</html>