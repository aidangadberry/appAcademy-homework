hammertime = function() {
  alert('HAMMERTIME')
}

mySetTimeout = function() {
  window.setTimeout(hammertime, 5000)
}

hammerTime = function(time) {
  window.setTimeout(() => {
    alert(`${time} is hammertime!`)
  }, time)
}
