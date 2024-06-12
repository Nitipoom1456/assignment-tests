/* 
Check duplicate items from list A and list B and append to a new list. Using your 
preferred programming language. 
    List A : [1,2,3,5,6,8,9] 
    List B : [3,2,1,5,6,0]
*/

// solution 1 JS function
let A = [1, 2, 3, 5, 6, 8, 9];
let B = [3, 2, 1, 5, 6, 0];

let setB = new Set(B);
console.log(setB);

let dup = A.filter((n) => setB.has(n));
console.log(dup);

// solution 2 loop through 2 lists and create new duplicate list
let listA = [1, 2, 3, 5, 6, 8, 9];
let listB = [3, 2, 1, 5, 6, 0];
let dupList = [];

for (let i = 0; i < listA.length; i++) {
  for (let j = 0; j < listB.length; j++) {
    if (listA[i] == listB[j]) {
      dupList.push(listA[i]);
    }
  }
}
console.log(dupList);
