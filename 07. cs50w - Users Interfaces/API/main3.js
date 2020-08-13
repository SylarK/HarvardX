btn_generate = document.querySelector('#generate');

btn_generate.addEventListener('click', getElements)

function getElements(){
    fetch('https://api.jikan.moe/v3/search/anime?q=Bleach/pictures')
        .then(res => res.json())
        .then(data => console.log(data['mal_id'][0]))
        
}