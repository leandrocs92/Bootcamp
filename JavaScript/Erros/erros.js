function verificaArray(array, tamanho) {
    try {
        if (!array && !tamanho) throw new ReferenceError("Envie os parâmetros");

        if (typeof array !== 'object') throw new TypeError('Array precisa ser do tipo object');

        if (typeof tamanho !== 'number') throw new TypeError('O tamanho precisa ser do tipo number');

        if (array.length !== tamanho) throw new RangeError('Tamanho inválido');

        return array;
    } catch (error) {
        if (error instanceof ReferenceError) {
            console.log("Este erro é um ReferenceError!");
            console.log(error.message);
        } else if (error instanceof TypeError) {
            console.log("Este erro é um TypeError!");
            console.log(error.message);
        } else if (error instanceof RangeError) {
            console.log("Este erro é um RangeError!");
            console.log(error.message);
        } else {
            console.log("Tipo de erro não esperado: " + error);
        }
    }
}


console.log(verificaArray([1, 2, 3, 5, 7], 5));