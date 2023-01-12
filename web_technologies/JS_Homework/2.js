const userName = document.getElementById('user-query');
const greetingText = document.getElementById('greeting-user');

userName.addEventListener('change', function () {
    let text = 'Мир';
    if (userName.value) {
        const firstLetter = userName.value.charAt(0).toUpperCase();
        const remainingLetters = userName.value.slice(1);
        text = firstLetter + remainingLetters;
    }
    greetingText.innerHTML = text;
});