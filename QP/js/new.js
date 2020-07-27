function showWelcome() {
    document.getElementById('welcome_p').style.display = "block";
    document.getElementById('instuctions_p').style.display = "none";
    document.getElementById('questions_p').style.display = "none";
}

function showInstructions() {
    document.getElementById('welcome_p').style.display = "none";
    document.getElementById('instuctions_p').style.display = "block";
    document.getElementById('questions_p').style.display = "none";
}

function showQuestions() {
    document.getElementById('welcome_p').style.display = "none";
    document.getElementById('instuctions_p').style.display = "none";
    document.getElementById('questions_p').style.display = "block";
}