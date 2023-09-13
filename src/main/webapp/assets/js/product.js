// Function to open the popup

let openPopUpBtns = document.querySelectorAll('#openPopupBtn');

openPopUpBtns.forEach(function(button) {
    button.addEventListener('click', function() {
        // Show the popup when the button is clicked
        document.getElementById('popup').style.display = 'block';
        console.log("success");
    });
});


// Function to close the popup
document.getElementById('closePopupBtn').addEventListener('click', function() {
    document.getElementById('popup').style.display="none";
});