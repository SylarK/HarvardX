const cat_btn = document.querySelector('#cat-btn');
const dog_btn = document.querySelector('#dog-btn');
const img_cat = document.querySelector('#cat');
const img_dog = document.querySelector('#dog');



cat_btn.addEventListener('click', randomCat);
dog_btn.addEventListener('click', randomDog);

function randomCat(){
    fetch('https://api.thecatapi.com/v1/images/search')
        .then(res => res.json())
        .then(data => {
            img_cat.innerHTML = `<img src="${data[0]['url']}" alt="cat" />`
        });
}

function randomDog(){
    fetch('https://dog.ceo/api/breeds/image/random')
        .then(res => res.json())
        .then(data => {
            img_dog.innerHTML = `<img src="${data['message']}" alt="cat" />`
        })
}

