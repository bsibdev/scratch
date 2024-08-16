//https://dev.to/tomekbuszewski/module-pattern-in-javascript-56jm

/*const someModule = (function() {})();

const Formatter = (function() {
    const log = (message) => console.log(`[${Date.now()}] Logger: ${message}`);

    const makeUppercase = (text) => {
        log("Making uppercase");
        return text.toUpperCase();
    };
    return {
        makeUppercase,
    }
})();

//modules can house not only functions, but arrays, objects, and primitives as well.

*/
/*let timesRun = 0;
const Formatter = (function() {


    const log = (message) => console.log(`[$Date.now()}] Logger: ${message}`);
    const setTimesRun = () => {
        log("Setting times run");
        ++timesRun;
    }
    const makeUppercase = (text) => {
        log("Making uppercase");
        setTimesRun();
        return text.toUpperCase();
    };
    return {
        makeUppercase,
        timesRun,
    }
})();
//run counter doesn't work
*/

/*
//use reference types to count
const Formatter = (function() {
    const log = (message) => console.log(`[${Date.now()}] Logger: ${message}`);
    const timesRun = [];

    const makeUppercase = (text) => {
        log("Making uppercase");
        timesRun.push(null);//<--
        return text.toUpperCase();
    };
    return {
        timesRun,
        makeUppercase,
    }
})();
*/

const Formatter = (function(doc) {
    const log = (message) => console.log(`[${Date.now()}] Logger: ${message}`);

    const makeUppercase = (text) => {
        log("Making uppercase");
        return text.toUpperCase;
    };
    
    const writeToDOM = (selector,message) => {
        if(!!doc && "querySelector" in doc) {
            doc.querySelector(selector).innerHTML = message;
        }
    }
    return {
        makeUppercase,
        writeToDOM,
    }
})(document);