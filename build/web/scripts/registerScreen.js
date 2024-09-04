//Javascript para cambio de "pestaña" entre iniciar sesión y registrarse.

const $register = document.querySelector(".register");
const $stSession = document.querySelector(".stSession");
const $signUp = document.querySelector(".signUp");
const $signIn = document.querySelector(".signIn");

$register.addEventListener("click", e => {
	$signIn.classList.add("show");
	$signUp.classList.remove("show");
})

$stSession.addEventListener("click", e => {
	$signUp.classList.add("show");
	$signIn.classList.remove("show");
})