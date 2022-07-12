// https://stackoverflow.blog/2022/07/06/why-perl-is-still-relevant-in-2022/
// This is how you do in node.js.
const {
  createHash
} = require('node:crypto');

const hash = createHash('sha256');
data = 'Stack Overflow is cool';
hash.update(data);
console.log(hash.copy().digest('hex'));
