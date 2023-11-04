const puntero = document.querySelector('.puntero');

document.addEventListener('mousemove', (e) => {
    puntero.style.left = (e.clientX - puntero.offsetWidth / 2) + 'px';
    puntero.style.top = (e.clientY - puntero.offsetHeight / 2) + 'px';
});

document.addEventListener('mouseenter', () => {
    puntero.style.display = 'block';
});

document.addEventListener('mouseleave', () => {
    puntero.style.display = 'none';
});



//ojito
document.addEventListener('DOMContentLoaded', function () {
    const passwordField = document.getElementById('pass');
    const toggleButton = document.getElementById('toggle-password');
  
    toggleButton.addEventListener('click', function () {
      if (passwordField.type === 'password') {
        passwordField.type = 'text';
        toggleButton.classList.remove('fa-eye-slash');
        toggleButton.classList.add('fa-eye');
        toggleButton.style.color = '#8c8388';
      } else {
        passwordField.type = 'password';
        toggleButton.classList.remove('fa-eye');
        toggleButton.classList.add('fa-eye-slash');
        toggleButton.style.color = '#8c8388';
      }
    });
  });