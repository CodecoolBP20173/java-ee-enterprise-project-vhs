$(document).ready(function () {
    authButtons();
});


function authButtons()
{
    let loginButton = document.getElementById("loginButton");
    let logoutButton = document.getElementById("logoutButton");
    let registerButton = document.getElementById("registerButton");
    let logLabelContent = document.getElementById("logLabel").innerText;

    if(logLabelContent === "You are not logged in"){
        loginButton.style.visibility = "visible";
        registerButton.style.visibility = "visible";
        logoutButton.style.visibility = "hidden";
    } else {
        loginButton.style.visibility = "hidden";
        registerButton.style.visibility = "hidden";
        logoutButton.style.visibility = "visible";
    }
    console.log("running auth buttons...")
}
