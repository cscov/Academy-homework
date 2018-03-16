const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

reader.question('Would you like some tea? > ', function (userRes1) {
  console.log(`You replied: ${userRes1}`);

  reader.question('Would you like some biscuits? > ', function (userRes2) {
    console.log(`You replied: ${userRes2}`);
  })
})


reader.close();
