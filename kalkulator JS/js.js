var a="";
var zn="";
var z=0;
var b="";

function num(act)
{
    document.getElementById("sr").innerHTML +=act;
    if(z==0)
       a+=act;
    if(z==1)
       b+=act;
}
function znak(act)
{
    if(z==0)
        z=1;
    document.getElementById("sr").innerHTML = "";
    zn=act;
}
function obl()
{
    if(z==1)
    {
        document.getElementById("sr").innerHTML = kalkulator();
        z=2;
    }
    else if(z!=1)
    {
        a="";
        b="";
        zn="";
        z=0;
        document.getElementById("sr").innerHTML ="";
        
    }
}


function kalkulator()
{
    switch (zn)
    {
        case '*':
            return parseFloat(a)*parseFloat(b);
        break;
        case '-':
            return parseFloat(a)-parseFloat(b);
        break;
        case '+':
            return parseFloat(a)+parseFloat(b);
        break;
        case '/':
            if(b!=0)
            return parseFloat(a)/parseFloat(b);
            return "dzielenie przez zero!";
        break;   
    }
}

