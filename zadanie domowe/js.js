var started=false;
function start()
{
    if(!started)
        started=true;
    else 
        location.reload();
    document.getElementById("menu").style.visibility = "hidden";
    document.getElementById("game").style.visibility = "visible";
    decide();
}

var now=100;
var hlf=100;
var gr=true;

var min=0;
var max=100;

function decide()
{
    if(Math.round( max )-Math.round( min )<=1)
        koniec();
    
    document.getElementById("how").innerHTML="minimum: "+min+" maksimum:"+max;

    gr=!gr;
    hlf=Math.round(min+((max-min)/2));
    
    
    var str="Czy twoja liczba jest ";
    if(gr)
        str+="<u>większa</u> bądź równa ";
    else 
        str+="<u>mniejsza</u> bądź równa ";
    str+=hlf+"?";
    document.getElementById("txt").innerHTML = str;
}

function tak()
{
    if(gr==true)
        min=hlf;
    else
        max=hlf;
    decide();
}
function nie()
{
    if(gr==true)
        max=hlf;
    else
        min=hlf;
    decide();
}
function koniec()
{
    document.getElementById("menu").style.visibility = "visible";
    document.getElementById("game").style.visibility = "hidden";
    document.getElementById("new").innerHTML = "twoja liczba to " + Math.round( (min+max)/2 ) ;
    document.getElementById("del").innerHTML = " Jeszcze raz! ";
}