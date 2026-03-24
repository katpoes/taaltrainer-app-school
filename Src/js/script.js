document.addEventListener("DOMContentLoaded",()=>{

const feedback=document.getElementById("feedback");

if(!feedback)return;

if(feedback.innerText.includes("Goed")){

feedback.style.color="green";

}else{

feedback.style.color="red";

}

});