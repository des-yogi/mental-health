//Фильтрация на странице
(function(){
  const containerEl = document.getElementById('containerFltr');
  if (!containerEl) return;

  var mixer = mixitup(containerEl, {
    selectors: {
      target: '.mix'
    },
    animation: {
      "duration": 250,
      "nudge": true,
      "reverseOut": false,
      "effects": "fade translateZ(-100px)"
    },
    controls: {
      toggleLogic: 'and'
    },
    classNames: {
      block: 'aside-nav',
      elementFilter: 'filter-btn-',
      delineatorElement: '__'
    }
  });
}());
