if(!localStorage.getItem('counter')){
    localStorage.setItem('counter',0)
}

const heading = document.querySelector('h3');

function count(){

    let counter = localStorage.getItem('counter');
    counter++;
    heading.innerHTML = counter;
    localStorage.setItem('counter', counter);

}

/*document.addEventListener('DOMContentLoaded', function(){
    type_here_the_function
    document.querySelector('button').onclick = count;
});*/
document.querySelector('h3').innerHTML = localStorage.getItem('counter')
document.querySelector('button').onclick = count;

//setInterval(count, 1000)