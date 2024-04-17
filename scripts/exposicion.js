import { creaMenu, creaFooter } from "./compnents.js";

creaMenu()
creaFooter(document.querySelector('footer'))


const blog = "http://localhost:3000/expo";
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
    <div id="expo"> 

    <img src="${image}" alt="">
    </div>
    
    `
}).join("");

main.innerHTML = displayArticle;
}
    
displayArticle()