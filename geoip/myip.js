function getIPFromAmazon() {
  fetch("https://checkip.amazonaws.com/").then(res => res.text()).then(data => console.log(data))
}
