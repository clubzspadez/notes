//! Version 2 REQUIRMENTS

/*
 todo - It should have a function to display todos
 todo - It should have a function to delete todos
 todo - It should have a function to add/store todos
 todo - It should have a function to change todos
*/

/*
*const todos = ["item1", "item2", "item3"];
*
* // function handleDisplay() {
* * //   console.log("My todos:", todos);
* * // }
* 
* // function handleDelete(itemToDelete) {
* * //   typeof itemToDelete === "number"
* * //     ? todos.splice(itemToDelete, 1)
* * //     : console.log("undefined or not an number");
* * //   handleDisplay();
* * // }

* * // function handleAdd todoItem) {
* * //   todos.push todoItem);
* * //   handleDisplay();
* * // }

* * // function handleChange(itemIndex, newValue) {
* //   todos[itemIndex] = newValue;
* //   handleDisplay();
* // }

* // handleAdd("item 4");
* // handleDelete();
* // handleChange(2, "new Item");
* 
*/

/*
 	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
*/

//! VERSION 3 REQUIRMENTS
/*
 todo - It should store the todos are on an object
 todo - It should have a handleDisplay method
 todo - It should have a handlecCange method
 todo - It should have a handleAdd method
 todo - It should have a handleChange method
*/

// const todosList = {
//   todos: ['item 1', 'item 2'],
//   handleDisplay() {
//     console.log("My todos:", this.todos);
//   },
//   handleDelete(itemToDelete) {
//     typeof itemToDelete === "number"
//       ? this.todos.splice(itemToDelete, 1)
//       : console.log("undefined or not an number");
//     this.handleDisplay();
//   },
//   handleAdd(todoItem) {
//     this.todos.push(todoItem);
//     this.handleDisplay();
//   },
//   handleChange(itemIndex, newValue) {
//     this.todos[itemIndex] = newValue;
//     this.handleDisplay();
//   }
// };

/*
 	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
*/

//! VERSION 4 REQUIRMENTS
/*
 todo - todoList.handleAdd should add objects
   * todoText property will be on the object
	 * completed property will be on the object
 todo - todoList.handleChange should change the todoText property
 todo - todoList.toggleCompleted should change the completed property
*/

// const todosList = {
// 	todos: [],

//   handleDisplay() {
//     console.log("My todos:", this.todos);
// 	},

//   handleDelete(itemToDelete) {
//     typeof (itemToDelete === "number")
//       ? this.todos.splice(itemToDelete, 1)
//       : console.log("undefined or not an number");
//     this.handleDisplay();
// 	},

//   handleAdd(todoItem) {
//     this.todos.push({
//       todoText: todoItem,
//       completed: false
//     });
//     this.handleDisplay();
// 	},

//   handleChange(itemIndex, newItemText) {
//     this.todos[itemIndex].todoText = newItemText;
//     this.handleDisplay();
// 	},

//   toggleCompleted(completedItem) {
// 		let todo = this.todos[completedItem];
// 		todo.completed = !todo.completed;
// 		this.handleDisplay();
// 	}
// };

// todosList.handleAdd("item 1");
// todosList.handleChange(0, "new item");
// // todosList.handleDelete(0);
// todosList.toggleCompleted(0);

/*
 	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
*/

//! VERSION 5 REQUIRMENTS
/*
 todo -  handleDisplay should show .todoText
 todo -  handleDisplay should tell you if .todos is empty
 todo -  handleDisplay should show .complete
*/

// const todosList = {
// 	todos: [],

//   handleDisplay() {
// 		if(this.todos.length === 0 ){
// 			console.log('There are no todos');
// 		} else {
// 			this.todos.forEach((todo) => {
// 				if(todo.completed){
// 					console.log(`(x) ${todo.todoText}`);
// 				} else {
// 					console.log(`() ${todo.todoText}`);
// 				}
// 			});
// 		}
// 	},

//   handleDelete(itemToDelete) {
//     typeof (itemToDelete === "number")
//       ? this.todos.splice(itemToDelete, 1)
//       : console.log("undefined or not an number");
//     this.handleDisplay();
// 	},

//   handleAdd(todoItem) {
//     this.todos.push({
//       todoText: todoItem,
//       completed: false
//     });
//     this.handleDisplay();
// 	},

//   handleChange(itemIndex, newItemText) {
//     this.todos[itemIndex].todoText = newItemText;
//     this.handleDisplay();
// 	},

//   toggleCompleted(completedItem) {
// 		let todo = this.todos[completedItem];
// 		todo.completed = !todo.completed;
// 		this.handleDisplay();
// 	}
// };
// todosList.handleAdd('item 1');
// todosList.handleAdd('item 2');
// todosList.handleAdd('item 3');
// todosList.toggleCompleted(0);

/*
 	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
*/

//! VERSION 6 REQUIRMENTS
/*
 todo -  .toggleAll: If everything's true, make everything false
 todo -  .toggleAll: Otherwise, make everything true.
*/

// const todosList = {
//   todos: [],

//   handleDisplay() {
//     if (this.todos.length === 0) {
//       console.log("There are no todos");
//     } else {
//       this.todos.forEach(todo => {
//         if (todo.completed) {
//           console.log(`(x) ${todo.todoText}`);
//         } else {
//           console.log(`() ${todo.todoText}`);
//         }
//       });
//     }
//   },

//   handleDelete(itemToDelete) {
//     typeof (itemToDelete === "number")
//       ? this.todos.splice(itemToDelete, 1)
//       : console.log("undefined or not an number");
//     this.handleDisplay();
//   },

//   handleAdd(todoItem) {
//     this.todos.push({
//       todoText: todoItem,
//       completed: false
//     });
//     this.handleDisplay();
//   },

//   handleChange(itemIndex, newItemText) {
//     this.todos[itemIndex].todoText = newItemText;
//     this.handleDisplay();
//   },

//   toggleCompleted(completedItem) {
//     let todo = this.todos[completedItem];
//     todo.completed = !todo.completed;
//     this.handleDisplay();
//   },
//   toggleAll() {
//     //find how many items are in the todo's array
//     let totalItems = this.todos.length;
//     //grab the total completed values from the array
//     let completedArray = this.todos.map(todo => todo.completed);
//     // store how many values are true
//     let trueValues = completedArray.filter(
//       completedValue => completedValue === true
//     );
//     // check if total items and trueValues are equal
//     if (totalItems === trueValues.length) {
//       // if true set all todos.completed to false
//       this.todos.forEach(todo => (todo.completed = false));
//     } else {
//       // if false set all todos.completed to true
//       this.todos.forEach(todo => (todo.completed = true));
//     }
//   }
// };
// todosList.handleAdd("item 1");
// todosList.handleAdd("item 2");
// todosList.handleAdd("item 3");
// todosList.toggleCompleted(0);
// todosList.toggleCompleted(1);
// todosList.toggleCompleted(2);
// todosList.toggleAll();
// console.log(todosList.todos);

/*
!-OBJECTS
 *- {} // arrays, functions, named objects
!-Primitives
 *- String // 'Text!'
 *- Number // 1, 2, 3, 4
 *- Boolean //true, fasle
 *- Undefined //value that hasn't been set
 *- Null // 'Nothing'


 !Comparing values
 value1 === value1 // true
 {} === {}  //false

!({} === {}) => reference(memory address) === reference(memory address)
* ob1 === obj1 //true because we are comparing the same value not a reference to a different object

var myPrimitive = 10;
var myObejct = {name: 'Jon'};

myPrimitve [ 10  ]
myObject [ memory address 1   ] --> [ {name: 'Jon'} ]

*/

// var myH1 = { color: 'blue'};
// // myH1 [ memory address 1] --> {color: 'blue'}
// var myH2 = myH1;
// // myH2 [memory address 1] --> {color: 'blue'}
// myH2.color = 'red';
// myH2 [memory address 1] --> {color: 'red'}
// myH1 [memory address 1] --> {color: 'red'}
// console.log(myH1);

// myH1 [ mem address 1] ->  color: blue
// myH2 [mem address 2] -> color:blue
// myH2 [mem address 2] -> color: red

/*
 	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
	 -=============-------=============-------=============-------=============-------=============-------=============-------=============------
*/

//! VERSION 7 REQUIRMENTS
/*
 todo -  There should be a "Display todos" button and a "toggle all" button in the app.
 todo -  Clicking "Display todos" should run todoList.displaytTodos.
 todo - Clicking "Toggle All" should run todoList.toggleAll
*/

const todoList = {
  todos: [],

  displayTodo() {
    if (this.todos.length === 0) {
      console.log("There are no todos");
    } else {
      this.todos.forEach(todo => {
        if (todo.completed) {
          console.log(`(x) ${todo.todoText}`);
        } else {
          console.log(`() ${todo.todoText}`);
        }
      });
    }
  },

  deleteTodo(itemToDelete) {
    typeof (itemToDelete === "number")
      ? this.todos.splice(itemToDelete, 1)
      : console.log("undefined or not an number");
    this.displayTodo();
  },

  addTodo(todoItem) {
    this.todos.push({
      todoText: todoItem,
      completed: false
    });
    this.displayTodo();
  },

  changeTodo(itemIndex, newItemText) {
    this.todos[itemIndex].todoText = newItemText;
    this.displayTodo();
  },

  toggleCompleted(completedItem) {
    let todo = this.todos[completedItem];
    todo.completed = !todo.completed;
    this.displayTodo();
  },
  toggleAll() {
    let totalItems = this.todos.length;
    let completedArray = this.todos.map(todo => todo.completed);
    let trueValues = completedArray.filter(
      completedValue => completedValue === true
    );
    if (totalItems === trueValues.length) {
      this.todos.forEach(todo => (todo.completed = false));
    } else {
      this.todos.forEach(todo => (todo.completed = true));
    }
    this.displayTodo();
  }
};

// //We need access to the buttons
// const displayTodos = document.getElementById('displayTodos');
// const toggleAll = document.getElementById('toggleAll');
//  //Display Todos --> handleDisplay method
// 	displayTodos.addEventListener("click", function() {
// 		todosList.handleDisplay();
// 	});
//  //Toggle All --> toggleAll method
//  displayTodos.addEventListener("click", function() {
// 	todosList.toggleAll();
// });

//We will need to run methods when the buttons are clicked
//We will

// ! FOCUS ON UNDERSTANDING, NOT BUILDING FROM SCRATCH

//! V8 REFACTORING OUR CODE
/*
 todo - move current access of event listeners to html onclick
 todo - created handlers object to keep methods organized and contained
 todo - it should have working controls for .handleAdd
 todo - it should have working controls for .handleChange
 todo - it should have working controls for .handleDelete
 todo - it should have working controls for .toggleCompleted
*/

const handlers = {
  handleDisplay() {
    todosList.displayTodo();
  },
  handleAdd() {
    todoList.addTodo();
  },
  handleChange() {
    todoList.changeTodo();
  },
  handleCompleted() {
    todoList.toggleCompleted();
  },
  toggleAll() {
    todosList.toggleAll();
  }
};

//! V9 Display our tasks
/*
 todo - There should be an li element for every todo
 todo - Each li element should contain .todoText
 todo - Each li element should show .completed
*/

// const ul = document.getElementById('tasks');
// const liTask = document.createElement('li');

// ul.appendChild(liTask);

//! V10
/*
 todo - There should be a way to create delete buttons
 todo - there should be a delete button for each todo
 todo - Each li should have an id that has the todo position
 todo - Delete buttons should have access to the todo id
 todo - clicking delete should update todoList.todos and the DOM
*/

//

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

const Person = function(name, age) {
  this.name = name;
  this.age = age;
};

Person.prototype.handleRequest = function() {};

Person.date = 45;
const obj1 = new Person("jon", 16);

console.log(Person.date);

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
