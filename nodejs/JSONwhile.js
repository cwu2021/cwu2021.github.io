const fs = require("fs");
fs.readFile("./customer.json", "utf8", (err, jsonString) => {
        if (err) {
                console.log("Error reading file from disk:", err);
                return;
        }
        try {
                const customer = JSON.parse(jsonString);
                console.log("Customer address is:", customer.address);
        } catch (err) {
                console.log("Error parsing JSON string:", err);
        }
});

// https://www.w3schools.com/js/tryit.asp?filename=tryjs_while
let text = "";
let i = 0;
while (i < 10) {
  text += "<br>The number is " + i;
  i++;
}

console.log(text);
