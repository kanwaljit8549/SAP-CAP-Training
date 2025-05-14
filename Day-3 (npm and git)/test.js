// const fs = require('node.fs');

const utils = require('./utils');             // importing the utils.js (here) (basic importing using a variable) (can also use the latest ES module)
console.log(utils.addnumbers(1,1));          // calling the addition function

// ------------------------ES Module Calling Format (latest)-------------------------
// import { addnumbers } from './utils.js';
// console.log(addnumbers(1,1));        