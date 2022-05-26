var num1 = Number(prompt("Digite o primeiro valor"));
var num2 = Number(prompt("Digite o segundo valor"));
var soma = num1 + num2;

if (num1 == num2) {
    if (soma < 10) {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é menor que 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é menor que 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é menor que 10 e igual 20`);
        }
    } else if (soma > 10) {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é maior que 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é maior que 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é maior que 10 e igual 20`);
        }
    } else {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é igual a 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é igual a 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} são iguais. Sua soma é ${soma}, que é igual a 10 e igual 20`);
        }
    }
} else {
    if (soma < 10) {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é menor que 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é menor que 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é menor que 10 e igual 20`);
        }
    } else if (soma > 10) {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é maior que 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é maior que 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é maior que 10 e igual 20`);
        }
    } else {
        if (soma < 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é igual a 10 e menor que 20`);
        } else if (soma > 20) {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é igual a 10 e maior que 20`);
        } else {
            alert(`Os números ${num1} e ${num2} não são iguais. Sua soma é ${soma}, que é igual a 10 e igual 20`);
        }
    }
}