document.addEventListener("DOMContentLoaded", function(){

const feedback=document.getElementById("feedback");

if(feedback){

if(feedback.innerText.includes("Goed")){

feedback.style.color="green";

}else{

feedback.style.color="red";

}

}

});