// const simpleCipher(encrypted, k) {

// }

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let solve = "VTAOG";

let simpleCipher = (encrypted, k) => {
  encrypted = encrypted.trim().toUpperCase();
  let decrypted = "";
  for (let i = 0; i < encrypted.length; i++) {
    let index = alphabet.indexOf(encrypted[i]);
    let newIndex = index - k;
    if (newIndex < 0) newIndex += 26;
    decrypted += alphabet[newIndex];
  }
  return decrypted;
};

console.log(simpleCipher(solve, 2));
