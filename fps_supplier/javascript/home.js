function stockItem(itemName,itemPrice,itemQuantity){
    this.itemName=itemName;
    this.itemPrice=itemPrice;
    this.itemQuantity=itemQuantity;
}
function request(stockItems,statusCode){
    this.stockItems=stockItems;
    this.statusCode=statusCode;
}
let stockItems=[new stockItem("Rice",20,1),new stockItem("wheat",15,2),new stockItem("Maze",18,3),new stockItem("Barley",60,2),new stockItem("Sugar",25,5),];
var total=0;
stockItems.forEach((item) => {  
    var li=$("<li></li>").html("<h3>"+item.itemName+"->"+item.itemPrice+"RS   "+item.itemQuantity+"kg</h3>");
    $("ol#delivered").append(li);
total+=(item.itemPrice*item.itemQuantity);
  });
$("h2.total").text(total+"RS");


let requests=[new request([new stockItem("Rice",20,1),new stockItem("dheat",20,1),new stockItem("wheat",20,1)],1),new request([new stockItem("dheat",20,1),new stockItem("Maze",20,1),new stockItem("Rice",20,1),new stockItem("wheat",20,1)],1)];

var i=0;
requests.forEach((it)=>{

   var k=$('<li class="pre'+i+'"></li>').html('<ol class="newRequestsScroll'+i+'"></ol><button class="acceptButton newRequestsScroll'+i+'">Accept</button><button class="declineButton newRequestsScroll'+i+'">Decline</button>');

   $("ol.newMainScroll").append(k);

   it.stockItems.forEach((item)=>{
    
    var li=$("<li></li>").html("<h3>"+item.itemName+"->"+item.itemPrice+"RS   "+item.itemQuantity+"kg</h3>");
    $("ol.newRequestsScroll"+i).append(li);

    } );
   i++;

   
});

let acceptedRequests=[new request([new stockItem("Rice",20,1),new stockItem("dheat",20,1),new stockItem("wheat",20,1)],2),new request([new stockItem("dheat",20,1),new stockItem("Maze",20,1),new stockItem("Rice",20,1),new stockItem("wheat",20,1)],3),new request([new stockItem("Rice",20,1),new stockItem("dheat",20,1),new stockItem("wheat",20,1)],0),];

var j=0;
acceptedRequests.forEach((ite)=>{
    var statusText="";
   if(ite.statusCode==2){
statusText="Delivered";
   }else if(ite.statusCode==3){
    statusText="Waiting for Confirmation";
   }else if(ite.statusCode==0){
    statusText="Confirmed";
   }
   else{
    statusText="Error";
   }
   var k=$('<li class="pre2'+j+'"></li>').html('<ol class="acceptedRequestsScroll'+j+'"></ol><button class="reqStatusButton acceptedRequestsScroll'+j+'">'+statusText+'</button>');

   $("ol.acceptedRequestsScroll").append(k);

   ite.stockItems.forEach((item)=>{
    
    var li1=$("<li></li>").html("<h3>"+item.itemName+"->"+item.itemPrice+"RS   "+item.itemQuantity+"kg</h3>");
    $("ol.acceptedRequestsScroll"+j).append(li1);

    } );
   j++;

   
});
