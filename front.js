$.get("http://localhost/new%20tray/back.php").then(function(data) {

var obj={};
const obj1= new Array();


let j=0;
for(let i=0;i<data.length;i++){
      obj=JSON.stringify(data[i]);
      obj1[j] = JSON.parse(obj);

   
    j++;

} 
//houni sna3na tableaux esmou obj1 fyh les donneé lkoul sous forme d'objet  ken t7eb taffichih affichih bel for kima haka

    /*for(let k=0;k<obj1.length;k++){
      console.log(obj1[k]);}
     if(inp==obj1[k].ville){
      console.log("yes yes yes ");
     }
     else     { console.log("leeeeeeeeee ")};
    }*/

    
    $('#btn').click(function(){
       var inp = $('#texte');
        for(let y=0;y<obj1.length;y++){
          
     if (inp.val()==obj1[y].codepostal){
        //alert(inp.val());
    var res=obj1[y].codepostal ;
     }
    }
    for(let k=0;k<obj1.length;k++){
    if(obj1[k].codepostal==res) {
      $('#l').append('<option>' + obj1[k].ville + '</option>');
    }
  }
  
    $('#l').change(function(){
    var optionText = $("#l option:selected").text();
    //optionText =  JQuery(#l option:selected).text();
    console.log("f",optionText);
   //alert("vous avez sélectionné ",optionText);
   
    //var pos =$.inArray(optionText, obj1);
    //if(pos!=-1){
      //console.log(pos,obj1[pos]);
    for(let p=0;p<obj1.length;p++){
      if(obj1[p].ville==optionText){
       // console.log("yes existe",obj1[p].codepostal);
$('#new').replaceWith('<p style="background-color: #b0d5ff; height: 100%; width:100%">'+obj1[p].info+'</p>');

var map = L.map('map').setView([obj1[p].lat,obj1[p].lang], 13);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);




if (obj1[p].statistique>=70)
  {
    var circle = L.circle([obj1[p].lat,obj1[p].lang], 500, {
    color: 'red',
    fillColor: '#f03',
    //fillOpacity: 0.5
}).addTo(map);
  
  }
  else if (obj1[p].statistique==10)
  {
    //console.log("no no no");
    var circle1 = L.circle([obj1[p].lat,obj1[p].lang], 500, {
    color: 'green',
    fillColor: '#7CFC00',
    //fillOpacity: 0.5
}).addTo(map);
  }
  else if (obj1[p].statistique>10 && obj1[p].statistique<70){
    console.log("no no no");
    var circle2 = L.circle([obj1[p].lat,obj1[p].lang], 500, {
    color: 'orange',
    fillColor: 'orange',
   // fillOpacity: 0.5
}).addTo(map);

      }
    }}
       } );  //console.log(optionText);
    

        /*


  }*/
     
  
});
    
  
    
    
});