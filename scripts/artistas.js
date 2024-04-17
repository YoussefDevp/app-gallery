import { creaMenu, creaFooter } from "./compnents.js";
creaMenu()
creaFooter(document.querySelector('footer'))

const blog = "http://localhost:3000/artistas";
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
        const {paragraph,image} = object;

    return ` 
    <div> 
    <p>${paragraph}</p> 
    <img src="${image}" alt="" srcset="">
    </div>
    
    `
}).join("");

main.innerHTML = displayArticle;
}
displayArticle()