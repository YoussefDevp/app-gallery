import { creaMenu, creaFooter } from "./compnents.js";

creaMenu()
creaFooter(document.querySelector('footer'))

const blog = "http://localhost:3000/venta";
const main = document.querySelector("#main");
const title = document.querySelector("#title");

const getArticle = async () => {
const res = await fetch(blog);
const data = await res.json();
console.log(data)
return data
}

const displayArticle = async () => {
const playload = await getArticle();
title.innerText = playload.title.title;

let displayArticle = playload?.textresults?.map((object) => {
 const {image,paragraph} = object;

return ` 
<div>
   
        <p>${paragraph}</p> 
     
        <div class="card">
        <img src="${image}">
        <button class="btn">
                Compra ahora
        </button>
        </div>
        
</div>


`

}).join("");
main.innerHTML = displayArticle;
}
displayArticle()