function printCallback(titleized_names) {
  titleized_names.forEach((element) => {
    console.log(element)
  })
}

function titleize(names, callback) {
  titleized_names = names.map(name => `Mx. ${name} Jingleheimer Schmidt`)
  callback(titleized_names)
}

titleize(["Mary", "Brian", "Leo"], printCallback)
