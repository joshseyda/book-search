let elem = document.querySelector('.tap-target');
let instance = M.TapTarget.init(elem);
instance.addEventListener("click", instance.open());