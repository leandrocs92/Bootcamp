var tarefaNova = document.getElementById("inputWrapper").value;

document.getElementById('submit').addEventListener('click', adicionaTarefa);

function adicionaTarefa() {
    alert(tarefaNova);
}