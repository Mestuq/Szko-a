var el=[];
var maxel=0;

alert("123");

function add()
{
    var backup="<div class='skoczek'><img src='frog.png' id='zaba" + maxel + "'></div>";
    document.getElementById("line").innerHTML+=backup;
    
    maxel++;
    el.push(new zaba(maxel));
}

function all()
{
    for(var i=0;i>maxel;i++)
    {
        el[i].skok();
    }
    /*maxel.forEach(function(entry) {
        console.log(entry);
    });*/
    //alert();
    
}
setInterval(function(){ 
    all(); 
}, 1000);

class zaba
{

    constructor(now)
    {
        this.idd=now;
        this.st=0;
        this.y=0;
        this.prz=0;
    }
    
    skok()
    {
        alert("dojscie do klasy");
        if(this.prz<50)
        {
            this.prz++;
        }
        else 
        {
            if(this.st==0)this.st=1;
            else if(this.st==1)this.st=0;
            this.prz=0;
        }
        if(this.st==0)
            this.y+=this.prz;
        if(this.st==1)
            this.y-=this.prz;
        
    }

    synchro()
    {
        document.getElementById("zaba"+this.idd).style.bottom=window.innerHeight-this.y+"px";
    }
    

}


document.body.onkeyup = function(e){
    if(e.keyCode == 32){
        add();
    }
}