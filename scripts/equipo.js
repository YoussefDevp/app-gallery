import { creaMenu, creaFooter } from "./compnents.js";

creaMenu()
creaFooter(document.querySelector('footer'))

const blog = "https://stellular-kringle-54ef61.netlify.app/.netlify/functions/api/equipo";
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
    console.log(playload)
    // title.innerText = playload.title.title;

    let displayArticle = playload.textresults.map((object) => {
        const {paragraph,image} = object;
        // <h2>${title}</h2>
    return ` 
    <div> 

    <img src="${image}" alt="">
    <p>${paragraph}</p> 
    </div>
    
    `
}).join("");

main.innerHTML = displayArticle;
}
    
displayArticle()