// Simple Timeout

// window.setTimeout( () => {
//   alert('HAMMERTIME');
// }, 5000);

// Timeout Plus Closure

// let hammerTime = function(time) {
//   window.setTimeout(function () {
//     console.log(`${time} is hammertime!`);
//   }, 6000);
//   console.log(`Timer set for ${time} seconds`);
// };

//Some tea? Some biscuits?
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?\n', (res) => {
    first = res;
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?\n', (res) => {
      second = res;
      console.log(`You replied ${res}.`);
      const firstRes = (first === 'yes') ? 'do' : 'don\'t';
      const secondRes = (second === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}

teaAndBiscuits();