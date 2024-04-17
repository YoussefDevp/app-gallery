const blog = "https://stellular-kringle-54ef61.netlify.app/.netlify/functions/api/home";
const main = document.querySelector(".main");
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
    <img src="${image}">
        <p>${paragraph}</p> 
       
    </div>

`

}).join("");
main.innerHTML = displayArticle;
}
displayArticle()