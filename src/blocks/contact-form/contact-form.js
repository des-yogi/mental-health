(function(){
  var phoneElems = document.getElementsByClassName('phone-mask');
  Array.prototype.forEach.call(phoneElems, function (item) {
    var phoneMask = IMask(
      item, {
        mask: '+{38} (\\000) 000 00 00',
        lazy: false // make placeholder always visible
    });
  });
}());
