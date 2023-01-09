const fahrenheitQuery = document.getElementById('fahrenheit-query');
const celsiusConverted = document.getElementById('fahrenheit-deg');

const celsiusQuery = document.getElementById('celsius-query');
const fahrenheitConverted = document.getElementById('celsius-deg');


fahrenheitQuery.addEventListener("input", function () {
    celsiusConverted.innerHTML = ((+fahrenheitQuery.value - 32) * 5 / 9).toFixed(2);
})
fahrenheitQuery.addEventListener("change", function () {
    if (fahrenheitQuery.value.length === 0) {
        celsiusConverted.innerHTML = '0';
    }
})


celsiusQuery.addEventListener("input", function () {
    fahrenheitConverted.innerHTML = ((9 / 5) * +celsiusQuery.value + 32).toFixed(2);
})
celsiusQuery.addEventListener("change", function () {
    if (celsiusQuery.value.length === 0) {
        fahrenheitConverted.innerHTML = '0';
    }
})