let array = [];

function preencheArray(array) {
    for (let i = 0; i < 15; i++) {
        array.push(Math.floor(Math.random() * (1000 - 0 + 1)) + 0);
    }

    console.log(array);
}


function substituiPares(array) {
    if (!array) return -1;
    if (!array.length) return -1;

    for (let i = 0; i < array.length; i++) {
        if (array[i] === 0) {
            console.log("Você já é zero.")
        } else if (array[i] % 2 === 0) {
            console.log(`Substituindo ${array[i]} por 0...`);
            array[i] = 0;
        }
    }

    return array;
}

console.log(preencheArray(array));

console.log(substituiPares(array));