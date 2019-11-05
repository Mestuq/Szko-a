<?php
session_start();
if(isset($_SESSION['zalogowany']))
{
    session_destroy();
    unset($_SESSION);
}
header("Location: index.php");
?>