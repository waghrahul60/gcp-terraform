console.log("ajax tutorial in one video");

let fetchBtn = document.getElementById('fetchBtn');
fetchBtn.addEventListener('click',buttonClickHandler)

function buttonClickHandler(){
    console.log("Button click");

    //xhr obj
    const xhr = new XMLHttpRequest();

    //open object
    xhr.open('GET','https://jsonplaceholder.typicode.com/todos/1',true);

    //whaat to do on progress
    xhr.onprogress = function(){
        console.log('in progress');
    }

    xhr.onreadystatechange = function(){
        console.log()
    }

    //whaat to do on response is ready
    xhr.onload = function(){
        if(this.status === 200)
        {
            console.log(this.responseText);
        }else
        {
            console.error('Error');
        }
    }
    xhr.send();

    console.log('We are done');
}