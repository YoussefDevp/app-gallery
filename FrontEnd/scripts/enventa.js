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
        <img src="${image}">
</div>


`

}).join("");
main.innerHTML = displayArticle;
}
displayArticle()