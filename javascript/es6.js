// ! LEARNING CODE
// * Slow is Smooth, Smooth is Fast.
// * Within that context, moving fast (or rushing it) is reckless and can potentially be fatal.
// const obj = {
//? es5
// method: function(){
//
// }

//! es6
//   method(){
//     console.log(this);
//   }
// };

// obj.method();

// function simpleArraySum(n, ar) {
//   let sum = 0;
//   for(let i = 0; i < n; i++){
//       sum += ar[i];
//   }
//   console.log(sum);
// }

// simpleArraySum(6, [1, 2, 3, 4, 5 ,6]);

/*
! When javascript runs in any enviroment a global execution context is always running 
* with that global context which is a global object, a 'this' variable is created
* when calling 'this' you need to be mindful of which context/object it is being called from 

! 'this' refers to the context or object
? I.E: this = window object in chrome console
 * when running js in an enviroment, the compiler will run a global execution which will create a global object
  * in this case it refers to the global window

! The execution context is created in two phases
  ! Phase 1  Creation Phase
  * Global object, 'this', outer environment, and sets up Memory space for variables 
  * and functions(What people call 'hoisting')
  * the entire functions is set in memory that is why they can execute complete code 
  * while variables are set in memory, their values are set to undefined

  {
   let a;   --> Gets stored in creation phase with value undefined

    function b (){   ---> Gets stored completely in memory 
      console.log( a)
    };

    console.log(a); ---> in execution phase it will print undefined 

    a = 'String';  ----> a now contains a string

    console.log(a);  ---> will print the string

  }
  ! Phase 2 Code Execution or Execution Phase 
  * Goes through the code line by line 
  * Single Threaded, Synchronous Execution
   ? Single Threaded: One command at a time

! Function invocation( running the function()) and execution stack 
  * any time you execute or invoke a function in javascript a new execution context is created and put on the execution stack
  ? IE : When you run the following:
*/
const example1 = {
  // * pretend this object is the global lexical scope
  // * and the folllowing functions in this object are running or being executed in the global object
  // * we are using es6 syntax for these methods
  // function b(){
  // };
  // function a(){
  //   b();
  // };
  // a();
  // ? The following execution stack should look as follows:(From bottom to top)                       |-------------->------------------->--|
  /*                                                                                                   |                                     |
    * [ b() exection context ] --------------------------------------------------------------------------3.  Once this finishes it will pop    |
    *                                                                                                    |   off the stack and go back down    |
      ? this context will check for any variables and functions to store in memory but there are none    |                                     |
      ? no other execution contexts will be created                                                      |                                     |                              
    * [ a() execution context]---------------------------------------------------------------------------2.                                  [B context pops off]                     
      ? variables and functions will be stored in memory during the creation phase I.e: b()              |                                     |
      ? then the execution phase will hit the invocation of b() which will                               |                                     | 
      ! create another execution context for b()                                                         |                                     |
    * [Global Execution Context]    ---------------------------------------------------------------------|                                   [A context pops off] 
      ? variables and functions will be stored in memory during the creation phase                       |                                     |
      ? then in the execution phase the code will go line by line invoking any functions that happen     |                                     |
      ? to be in place.                                                                                  |                                     |
      ! Since a() is being invoked a new execution context will take place ------------------------------ 1.                                  [ Global Execution Context]
      */
};

/*

! Functions, Context, variable enviroments
  * Variable enviroments refer to where the variables live are how they relate to each other
  {
    function b(){
      let myVar; 
      console.log(myVar); //undefined
    }
    function a(){
      let myVar = 2;
      console.log(myVar);  //2
      b();
    }
    let myVar = 1;
    console.log(myVar); // 1
    a();
  }
    ? The following execution stack should look as follows:(From bottom to top)                            |-------------->------------------->--|
                                                                                                           |                                     |
      * [ b() exection context ] --------------------------------------------------------------------------3.  Once this finishes it will pop    |
      *                                                                                                    |   off the stack and go back down    |
        ? myVar will be stored in memory and then during exection myVar will be undefined as there are no  |                                     |
        ? values being assigned                                                                            |                                     |                              
      * [ a() execution context]---------------------------------------------------------------------------2.                                  [B context pops off]                     
        ? a will store myVar in memory and then during exectuon myVar will be assigned a value of 2        |                                     |
        ? then the execution phase will hit the invocation of b() which will                               |                                     | 
        ! create another execution context for b()                                                         |                                     |
      * [Global Execution Context]    ---------------------------------------------------------------------|                                   [A context pops off] 
        ? functions a and b will be stored in memory                                                       |                                     |
        ? myVar is stored in mermory, then during exectuion myVar will be assigned a value of 1            |                                     |
        ? then a will be executed                                                                          |                                     |
        ! Since a() is being invoked a new execution context will take place ------------------------------ 1.                                  [ Global Execution Context]

  }


 ! The Scope Chain 
  * Explains the order in which a scopes variable enviroment may fallback into the out scope or into the lexical environment where function was stored in memory
  * Example 1
  {
    function b(){
      console.log(myVar); // 1
    }
    function a(){
      let myVar = 2;
      console.log(myVar);  //2
      b();
    }
    let myVar = 1;
    console.log(myVar); // 1
    a();
  }

  ? The following execution stack should look as follows:(From bottom to top)                              |-------------->------------------->--|
                                                                                                           |                                     |
      * [ b() exection context ] --------------------------------------------------------------------------3.  Once this finishes it will pop    |
      *                                                                                                    |   off the stack and go back down    |
        ? there are no variables or functions being stored in memory, so we must reference an outer scope  |                                     |
        ? since lexically b() is in the global scope the myVar will be assigned 1                          |                                     |                              
      * [ a() execution context]---------------------------------------------------------------------------2.                                  [B context pops off]                     
        ? a will store myVar in memory and then during exectuon myVar will  be assigned a value of 2       |                                     |
        ? then the execution phase will hit the invocation of b() which will                               |                                     | 
        ! create another execution context for b()                                                         |                                     |
      * [Global Execution Context]    ---------------------------------------------------------------------|                                   [A context pops off] 
        ? functions a and b will be stored in memory                                                       |                                     |
        ? myVar is stored in mermory, then during exectuion myVar will be assigned a value of 1            |                                     |
        ? then a() will be executed                                                                        |                                     |
        ! Since a() is being invoked a new execution context will take place ------------------------------ 1.                                  [ Global Execution Context]

  * Example 2
  {
    function a(){
      let myVar = 2;
      console.log(myVar);  //2

      function b(){
        console.log(myVar); // 2
      }

      b();
    }

    let myVar = 1;
    console.log(myVar); // 1
    a();
  }
  ? The following execution stack should look as follows:(From bottom to top)                              |-------------->------------------->--|
                                                                                                           |                                     |
      * [ b() exection context ] --------------------------------------------------------------------------3.  Once this finishes it will pop    |
      *                                                                                                    |   off the stack and go back down    |
        ? there are no variables or functions being stored in memory, so we must reference an outer scope  |                                     |
        ? since lexically b() is in the a()'s scope the myVar will be assigned a value of 2                |                                     |                              
      * [ a() execution context]---------------------------------------------------------------------------2.                                  [B context pops off]                     
        ? a will store myVar and function b in memory. During exectuon myVar will  be assigned a value of 2|                                     |
        ? then the execution phase will hit the invocation of b() which will                               |                                     | 
        ! create another execution context for b()                                                         |                                     |
      * [Global Execution Context]    ---------------------------------------------------------------------|                                   [A context pops off] 
        ? function a will be stored in memory                                                              |                                     |
        ? myVar is stored in mermory, then during exectuion myVar will be assigned a value of 1            |                                     |
        ? then a() will be executed                                                                        |                                     |
        ! Since a() is being invoked a new execution context will take place ------------------------------ 1.                                  [ Global Execution Context]


  ! Types and Javascript - Dynamic Typing 
  * You don't specify the type of data a variables holds, the javascript engine figures it out while your code is running
  ? Static tpying you define the type of variable
    * EX: bool isNew = 'hello'; //an error
  ? Dynamic tpying:
    *EX: var/const/let isNew = true; //no errors
    *EX: const isNew = 'Yolo'; //no errros
   ? PRIMITIVE TPYES that exist in javascript to store in variables (primitive types are a single value. I.E not an object)
    * boolean - true or false
    * number - floating point
    * string - characters
    * undefined - lack of existence
    * null - empty 
    * symbols 

  ! Operators - syntactical functions( +, - , % , / , etc) 
  * Generally take two parameters and return a result 
  * These are special type of functions that use infix notation : +( 2, 3) ===> 2 + 3;
  ? Precedence Operator type            Associativity        Individual operator
    *19        Grouping                     n/a                 ( … )
    *18        Member Access            left‐to‐right           … . …
              Computed Member           left‐to‐right           … [ … ]  
                new (with argument list)    n/a                 new … ( … )
    *17          Function Call           left‐to‐right            … ( … )
                new (without argument list) right‐to‐left         new …
    *16         Postfix Increment             n/a                  … ++
                Postfix Decrement           n/a                     … ‐‐
    *15           Logical NOT             right‐to‐left             ! …
                    Bitwise NOT           right‐to‐left             ~ …
                     Unary Plus           right‐to‐left             + …
                    Unary Negation         right‐to‐left             ‐ …
                  Prefix Increment          right‐to‐left           ++ …
                  Prefix Decrement          right‐to‐left          ‐‐ …
                    typeof                  right‐to‐left          typeof …
                    void                  right‐to‐left             void …
                    delete                right‐to‐left             delete …
    *14         Multiplication            left‐to‐right               … * …
                   Division              left‐to‐right                 … / …
                  Remainder               left‐to‐right                … % …
    *13           Addition                left‐to‐right                 … + …
                Subtraction               left‐to‐right                 … ‐ …
    *12 BitwiseLeft Shift                  left‐to‐right               … << …
                  Bitwise Right Shift       left‐to‐right              … >> …
                  Bitwise Unsigned Right Shift left‐to‐right           … >>> …
    *11             Less Than              left‐to‐right              … < …
              Less Than Or Equal           left‐to‐right              … <= …
                Greater Than                left‐to‐right              … > …
            Greater Than Or Equal          left‐to‐right              … >= …
                    in                      left‐to‐right              … in …
                  instanceof                 left‐to‐right           … instanceof …
    *10           Equality                  left‐to‐right              … == …
                Inequality                left‐to‐right               … != …
                StrictEquality              left‐to‐right             … === …
                Strict Inequality          left‐to‐right                … !== …
    *9 Bitwise AND left‐to‐right … & …
    *8 Bitwise XOR left‐to‐right … ^ …
    *7 Bitwise OR left‐to‐right … | …
    *6 Logical AND left‐to‐right … && …
    *5 Logical OR left‐to‐right … || …
    *4 Conditional right‐to‐left … ? … : …
    *3 Assignment right‐to‐left … = …
    … += …
    … ‐= …
    … *= …
    … /= …
    … %= …
    … <<= …
    … >>= …
    … >>>= …
    … &= …
    … ^= …
    … |= …
   *2 yield right‐to‐left yield …
   *1 Spread n/a ... …

   ! Coercion = Converting a value from one type to another
   * happens quite often since Javascript is dynamically typed
   * 
   * 
   *
 
   !By Value vs By Reference
   *  var a = primitve value [ a  0x001 memory location or value ] - points to --> Primitive Value 
   *  var b = a [ by has  memory location or value of 0x002 ] - points to ---> Copy of primitive Value 
   *  This is know by value. These variables become the same by copying the value into two seperate spots of memory
   * 
   * var a =  { object } ; [ a points to memory location or value of object 0x001 ]
   * var b = a ; [ b points to same memory location 0x001 of object ]
   * This is call by Reference and all objects interact by Reference when setting them equal to eachother and passing them to other functions
  
   ! Mutate - To Change something
    ? Immutable means it can't be changed

  ! Objects, functions, and this
   * When functions are invokes, an execution context is created 
   * Creation Phase [ The function has Variable enviroment where all the variables are stored in memory], 
   * Creation Phase [ The function has a Outer Environment or where the function sits in the lexical scope so it can reference outer variables/functions]
   * Creation Phase [ 'this' is created for the function which can point at different functions/objects depending on how it's called]
   ? Certain examples how 'this' can be used when functions are invoked or created

   {
     var c = {
      name: 'Jonathan',
      log(){
        var self = this;
        self.name = 'Updated Jon';
        console.log(self);
        
        var setName = function(newName){
          self.name = newName;
          }
        setName('Jonathan is back');
        console.log(self);
      }
    }

    c.log();
   }


  ! Arrays 
  * Arrays can hold primitives and objects(including functions)
  

  {
    const arry = [
      num,
      'string',
      undefined,
      null,
      boolean,h
      {
        // Object
      },
      function(){
        // object
      }
    ]
  }

 ! IIFE's Immediately invoked function expressions 
  *functions being invoked right after their creation(

  {
    const func = function(parameter){
      return ` this is your ${parameter}`;
    }('whats up');

    console.log(func) // 'this is your 'whats up''

    * Function statment beening seen as a function expression since it is inside the paranthesis
    
    (function(parameter){
      console.log(` this is your ${parameter}`);
    }('whats up'))
  }

  !Closures
   * A closure is the combination of a function and the lexical environment within which that function was declared.
   
   {
     * Provided by Mozilla
     function init() {
        var name = 'Mozilla'; // name is a local variable created by init
        function displayName() { // displayName() is the inner function, a closure
          alert(name); // use variable declared in the parent function    
        }
        displayName();    
      }

      init();

   }

   ? The following execution stack should look as follows:(From bottom to top)                             |-------------->------------------->--|
                                                                                                           |                                     |
      * [ displayName() exection context ] ----------------------------------------------------------------3.  Once this finishes it will pop    |
      *                                                                                                    |   off the stack and go back down    |
        ? we're calling the alert method with the variable name                                            |                                     |
        ? since lexically displayName() is in the init()'s scope alert will use names value 'Mozilla'      |                                     |                              
      * [ init() execution context]------------------------------------------------------------------------2.                                  [ context pops off]                     
    ? init will store name and function displayName in memory. During exectuon name will assgined 'Mozzila'|                                     |
        ? then the execution phase will hit the invocation of displayName()                                |                                     | 
        ! create another execution context for displayName()                                               |                                     |
      * [Global Execution Context]    ---------------------------------------------------------------------|                                   [init context pops off] 
        ? function init will be stored in memory                                                           |                                     |
        ? then init() will be executed                                                                     |                                     |
        ! Since init() is being invoked a new execution context will take place ---------------------------1.                                  [ Global Execution Context]

  !closure example with function factory 

  {
    function chooseNumber(num){
      
      return function()

    }

  }

  !Closures and callbacks
   ?Callback function: A function you give to another function, to be run when the other function is finished
    * So the function you invoke, 'calls back' by calling the function you gave it when it finishes.
    {

      ! higher-order function (takes in a callback and will execute it)
      function tellMeWhenDone(callback){

        const a = 1000; //some work
        const b = 2000; //some work
        
        / will invoke the callback
        callback();
      }

      tellMeWhenDone( function() {
        console.log('this function backing passed is a call back.');

      });

    }

  ! call(), apply(), bind()
    * call() will invoke the function with parameters, and the this assigned
      ? function a(){

      ? }

     ? a.call(this, param1 , param 2)
    * apply() will invoke the function with the this assigned and will also take params but in an array
    * bind will return a copy of the function with the this assigned, and any params that you want to set as  preset
    *

  ! functional programming 
  * functions that behave as objects, that can be passed as parameters
  * 
  
  ! Object-oriented Javascript and prototypal inheritance (Inheritance: One object gets access to the properties and methods of another object)
  ? Classical vs prototypal inheritance
  * Classical
      * Verbose. (Massive trees that may interact) 
  * Prototypal
      * Simple.
      * Flexible
      * Extensible 
      * Easy to understand
  ? Understanding the prototype
   *
   * 
   * [Object] - have the following, each object can have it's own prototype
   *  -> [props(methods that can be attached)] - [ proto{} object property so that the obj can use to find or attach methods]
    {
    
      const person = {
        firstname: 'default',
        lastname: 'default',
        getFullName(){
          return this.firstname + '' + this.lastname;
        }
      };

      const john = {
        firstname: 'John',
        lastname: 'Doe'
      };


      john.__proto__ = person;

      /John is the first object being called, and its prototype is set to person {}
      /going down the prototype chain since john's properties are set within the object
      /getfullName uses the properties that come first in the chain before hitting the prototpye
      john.getFullName(); //John Doe


    }

   ? Everything is an Object(or a primitive)
   *
   * 
   ? Reflect and extend 
   * Reflection: an object can look at itself, listing and changing its properties and methods
   * 
  
  !BUILDING OBJECTS
  * Function constructors, 'new', and the history of javascript
  * using new operator creates and new object
      
  {
    function Person(){
      this.firstname = 'john';
      this.lastname = 'doe';
    };
    
    /here we create a variable named john,
    / we then assign it a object with the properties from Person();
    /   john is assigned a new ->  empty {} with properties from Person()
    var john = new Person();
    
  }
  * new --> {} with properties from Person function constructor
  
  {
    function Person(firstname, lastname){
      this.firstname = firstname;
      this.lastname = lastname;
    };
    
    var jane = new Person('Jane', 'doe');

    console.log(jane);
    -->Output 
    jane = {
      this.firstname: 'Jane',
      this.lastname: 'doe'
    }
    
  }

  *function constructors: a normal function that is used to construct objects

! Function constructors and '.prototype'

0 Comma / Sequence left‐to‐right … , …
? DOM - Document object model 
* The document object is an key value pair on the global object
* hence when using it in js you specifiy document.methodName
* looking at the global object will give you some good ideas as to what works within the window
* all the native code on the global object are things you can look at 

! Javascript undefined
*/
