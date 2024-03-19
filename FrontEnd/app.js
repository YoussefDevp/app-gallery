const blog = "http://localhost:3000/blog";
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
        const {title,image,paragraph} = object;

    return ` 
    <article id="article"> 
    <h1>${title}</h1>
    <img src="${image}">
    <p>${paragraph}</p> 
    </article>
    
    `
}).join("");

main.innerHTML = displayArticle;
}

displayArticle()


// const displayText = async () => {
//     const playload = await getText();

//     let displayText = playload.map((object) => {
//         const {paragraph} = object;

//     return `  
//     <p>${paragraph}</p>
//     `
// }).join("");

// text.innerHTML = displayText;
// }

// displayText();