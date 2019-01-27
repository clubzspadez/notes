/**
 *#'  ██████╗ ██████╗  █████╗  ██████╗████████╗██╗ ██████╗██╗███╗   ██╗ ██████╗      █████╗ ██╗      ██████╗  ██████╗ ██████╗ ██╗████████╗██╗  ██╗███╗   ███╗███████╗
 *$'  ██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║██╔════╝██║████╗  ██║██╔════╝     ██╔══██╗██║     ██╔════╝ ██╔═══██╗██╔══██╗██║╚══██╔══╝██║  ██║████╗ ████║██╔════╝
 **'  ██████╔╝██████╔╝███████║██║        ██║   ██║██║     ██║██╔██╗ ██║██║  ███╗    ███████║██║     ██║  ███╗██║   ██║██████╔╝██║   ██║   ███████║██╔████╔██║███████╗
 *!'  ██╔═══╝ ██╔══██╗██╔══██║██║        ██║   ██║██║     ██║██║╚██╗██║██║   ██║    ██╔══██║██║     ██║   ██║██║   ██║██╔══██╗██║   ██║   ██╔══██║██║╚██╔╝██║╚════██║
 *$'  ██║     ██║  ██║██║  ██║╚██████╗   ██║   ██║╚██████╗██║██║ ╚████║╚██████╔╝    ██║  ██║███████╗╚██████╔╝╚██████╔╝██║  ██║██║   ██║   ██║  ██║██║ ╚═╝ ██║███████║
 *#'  ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
 *'
 */

function reverseInt(n) {
  const num = n.toString().split("");
  return Math.sign(n)
    ? parseInt(
        "-" +
          num
            .splice(1, num.length)
            .reverse()
            .join("")
      )
    : parseInt(
        n
          .toString()
          .split("")
          .reverse()
          .join("")
      );
}

//computer grab int
//computer check if int is negative
// if negative return value reversed with - negative in front
// if positive just reverse value
console.log(reverseInt(-501));

function maxChar(str) {
  const chars = {};
  let max = 0;
  let maxChar = "";

  for (let char of str) {
    !chars[char] ? (chars[char] = 1) : chars[char]++;
  }

  for (let char in chars) {
    //loop through character Map
    // if key value object[key] is greater than max
    //set max = object[key]--> value
    // set maxCharacter = current character in object
    if (chars[char] > max) {
      max = chars[char];
      maxChar = char;
    }
  }
  console.log(maxChar);
  console.log(chars);

  return maxChar;
}

maxChar("HELLO");
// ex: array: [1,2,3,4,5] size: 2 chunk([1,2,3,4,5] , 2) ---> [[1,2], [3,4], [5]]

//

function chunk(arry, size) {
  //computer create empty array for chunked data
  //for each element in the "unchunked" array
  //computer retrieve the last element in "chunked"
  //computer if last element does not exist or if its length is equal to chunk size
  //push a new chunk into "chunked" with the current element
  //else add current element into the chunk
  const chunked = [];

  for (let el of arry) {
    const last = chunked[chunked.length - 1];

    if (!last || last.length === size) {
      chunked.push([el]);
    } else {
      last.push(el);
    }
  }
  return chunked;
}

console.log(chunk([1, 2, 3, 4, 5], 2));

//ANAGRAM
//anagrams('rail safety', 'fairy tales') --> true
function anagram(strA, strB) {
  //lowercase str
  let charMap = {};
  let charMap2 = {};

  let string1 = strA
    .replace(/[^\w]/g, "")
    .toLowerCase()
    .split("");

  let string2 = strB
    .replace(/[^\w]/g, "")
    .toLowerCase()
    .split("");

  if (string1.length === string2.length) {
    createCharacterMap(string1, charMap);
    createCharacterMap(string2, charMap2);

    for (let key in charMap) {
      if (charMap[key] !== charMap2[key]) {
        return false;
      } else {
        return true;
      }
    }
  }
}

function createCharacterMap(string, object) {
  for (let char of string) {
    !object[char] ? (object[char] = 1) : object[char]++;
  }
  return object;
}
console.log(anagram("rails safety", "fairys tales"));

// captitalize each first letter in a word
//capitalization('a short sentence'); --> 'A Short Sentence'

function capitalize(string) {
  return string
    .split(" ")
    .map(word => word[0].toUpperCase() + word.slice(1))
    .join(" ");
}

console.log(capitalize("lool this is stupid hahaha"));

//! Fuck, I don't know. Let's figure it out.

function steps(n) {
  for (let row = 0; row < n; row++) {
    let stair = [];
    for (let column = 0; column < n; column++) {
      if (column <= row) {
        stair.push("#");
      } else {
        stair.push(" ");
      }
    }
    console.log(stair);
  }
}

steps(3);

// vowels('Hi there!') -->  3

function vowels(str) {
  let vowelCount = 0;

  str
    .toLowerCase()
    .split("")
    .forEach(letter => {
      if (
        letter === "a" ||
        letter === "i" ||
        letter === "o" ||
        letter === "u" ||
        letter === "e"
      ) {
        vowelCount += 1;
      }
    });
  return vowelCount;
}

console.log(vowels("Why! Is your face different?"));

// fibonacci series
// fib(4) === 3

// grab input
// create array
// iterate through array from length of input
// start at 0
//  add 1
// add from previous number

function fib(nth) {
  let fibArry = [0, 1];
  let num = 0;

  for (let i = fibArry.length; i < nth + 1; i++) {
    num = fibArry[i + 1] + fibArry[i + 0];
    fibArry.push(num);
  }
  // 4 --> 3
  // 0-> 0, 1 -> 1 , 2 --> 0+1, 3--> 1+1, 4--> 1+2
  //  [0, 1, 1 ,2 ,3, 5, 8, 13, 21 , 34 ]
  return fibArry;
  //  [0, 1, 2, 3, 4]i
}

console.log(fib(5));
