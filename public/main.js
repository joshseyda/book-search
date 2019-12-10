var elem = document.querySelector('.tap-target');
var instance = M.TapTarget.init(elem);
instance.addEventListener("click", instance.open());