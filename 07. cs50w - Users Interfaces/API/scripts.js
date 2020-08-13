el = document.querySelector('#content');

document.querySelector('form').onsubmit = ativar 


function ativar() {

    value = document.querySelector('#myCEP').value
    content = document.querySelector('#content')
    remove(content)

    fetch('http://viacep.com.br/ws/'+value+'/json/')
    .then(res => res.json())
    .then(data => {

        console.log(data['localidade'])

        //percorrendo obj
        for (var property in data){

            if (data[property] != ''){
                li = document.createElement('li')
                li.class = 'lista'
                li.innerHTML = property.toUpperCase() + ' : ' + data[property]
    
               content.appendChild(li)
            } 
            console.log(property + " = " + data[property]);
          }

    })
    .catch(error => console.log('ERROR'))


    return false;
};

function remove(lista){
    while(lista.firstChild){
        lista.removeChild(lista.firstChild)
    }
}
