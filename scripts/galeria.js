import { creaMenu, creaFooter } from "./compnents.js";

creaMenu()
creaFooter(document.querySelector('footer'))

const blog = "https://stellular-kringle-54ef61.netlify.app/.netlify/functions/api/galeria";
const main = document.querySelector("#main");


const getArticle = async () => {
    const res = await fetch(blog);
    const data = await res.json();
    console.log(data)
    return data
}

const displayArticle = async () => {
    const playload = await getArticle();
    

    let displayArticle = playload.map((object) => {
        const {image} = object;
      
    return ` 
    <div> 

    <img src="${image}" alt="">
    </div>
    
    `
}).join("");

main.innerHTML = displayArticle;
}
    
displayArticle()