//https://wesbos.com/javascript/03-the-tricky-bits/closures
const innerVar = "Hey I am an inner var";

function outer(){
    const outerVar = "Hey I am the outer Var"

    function inner(){
        const innerVar = "Hey I am an inner var";
        console.log(innerVar);
        console.log(outerVar);
    }
    return inner()
}

function createGreeting(greeting = "") {
    const myGreet = greeting.toUpperCase();

    return function(name) {
        return `${myGreet} ${name}`;
    };
}

const sayHello = createGreeting("Hello")
//inner scope references something in outer score, which is called a closure.

function createGame(gameName){
    let score = 0; //score is private

    return function win(){ //this function is returned taking the variable input, and keeping the score in memory
        score ++;
        return `Your name ${gameName} score is ${score}`
    }
}

const hockeyGame = createGame("Hokey")
const basketBallGame = createGame("basketBall")
const soccerGame = createGame("Soccer")