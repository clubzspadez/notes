//$   ===========================================================================
//  *$          _______  _______  _______  _______ _________
//  *$         (  ____ )(  ____ \(  ___  )(  ____ \\__   __/
//  *$         | (    )|| (    \/| (   ) || (    \/   ) (
//  *$         | (____)|| (__    | (___) || |         | |
//  *$         |     __)|  __)   |  ___  || |         | |
//  *$         | (\ (   | (      | (   ) || |         | |
//  *$         | ) \ \__| (____/\| )   ( || (____/\   | |
//  *$         |/   \__/(_______/|/     \|(_______/   )_(
//
// !                                                    __
// !                                          |\     /|/  \
// !                                          | )   ( |\/) )
// !                                          | |   | |  | |
// !                                          ( (   ) )  | |
// !                                           \ \_/ /   | |
// !                                            \   /  __) (_
// !                                             \_/   \____/

//$   ===========================================================================

/**
 * ! SOLID
 *
 *
 * !Concepts
 * ?Single responsibility principle[6]
 *  *a class should have only a single responsibility (i.e. changes to only one part of the software's specification should be able to affect the specification of the class).
 * ?Open/closed principle[7]
 *  *"software entities … should be open for extension, but closed for modification."
 * ?Liskov substitution principle[8]
 *  *"objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program." See also design by contract.
 * ?Interface segregation principle[9]
 *  *"many client-specific interfaces are better than one general-purpose interface."[4]
 * ?Dependency inversion principle[10]
 *  *one should "depend upon abstractions, [not] concretions."[4]
 *
 * @param
 */

/**
 *!'    ______                    _    _                       _    _____                                 _
 *!'   |  ____|                  | |  (_)                     | |  / ____|                               | |
 *!'   | |__  _   _  _ __    ___ | |_  _   ___   _ __    __ _ | | | |      ___   _ __    ___  ___  _ __  | |_  ___
 *!'   |  __|| | | || '_ \  / __|| __|| | / _ \ | '_ \  / _` || | | |     / _ \ | '_ \  / __|/ _ \| '_ \ | __|/ __|
 *!'   | |   | |_| || | | || (__ | |_ | || (_) || | | || (_| || | | |____| (_) || | | || (__|  __/| |_) || |_ \__ \
 *!'   |_|    \__,_||_| |_| \___| \__||_| \___/ |_| |_| \__,_||_|  \_____|\___/ |_| |_| \___|\___|| .__/  \__||___/
 *!'                                                                                              | |
 *!'                                                                                              |_|
 **    -Immutablity
 **    -Pure Functions
 **    -Data Transformations
 **    -High-Order Functions
 **    -Recursion
 **    -Composition
 *
 **/

/***
 *$     _____           _   _                                         
 *$    /  ___|         | | (_)            _                           
 *$    \ `--.  ___  ___| |_ _  ___  _ __ (_)                          
 *$     `--. \/ _ \/ __| __| |/ _ \| '_ \                             
 *$    /\__/ /  __/ (__| |_| | (_) | | | |_                           
 *$    \____/ \___|\___|\__|_|\___/|_| |_(_)                          
 *$     _____                          _        _     _ _ _ _         
 *$    |_   _|                        | |      | |   (_) (_) |        
 *$      | | _ __ ___  _ __ ___  _   _| |_ __ _| |__  _| |_| |_ _   _ 
 *$      | || '_ ` _ \| '_ ` _ \| | | | __/ _` | '_ \| | | | __| | | |
 *$     _| || | | | | | | | | | | |_| | || (_| | |_) | | | | |_| |_| |
 *$     \___/_| |_| |_|_| |_| |_|\__,_|\__\__,_|_.__/|_|_|_|\__|\__, |
 *$                                                              __/ |
 *$                                                             |___/ 
 *
 *
 * # TO BE IMMUTABLE IS TO BE UNCHANGEABLE
 *
 *  * In a functional program, data is immutable. It does not change.
 *  * Instead of changing original data structures, we build copies of those data structures and use them instead
 *
 * # Example --------------------------
 *
 * let color_lawn = {
 *     title: "lawn",
 *     color: "#00FF00",
 *     rating: 4
 * }
 *
 *  var rateColor = function(color, rating) {
 *      return Object.assign({}, color, {rating:rating})
 *  }
 *
 *    console.log(rateColor(color_lawn, 5).rating) // 5
 *    console.log(color_lawn.rating) // 4
 *
 *   * In this example we create a function that takes two parameters, color and rating
 *   * these parameters reference the color object we expect to receive, and the rating number.
 *   * The function returns an Object.assign() which creates a new empty object, that takes the properties of the color_lawn object, and overwrites the rating property.
 *   * In our Console.log we can see that the first invokation is made for the rateColor function, we pass the color_lawn(color) object, and a number(rating).
 *   * Since rateColor returns an object we can chain our invokation with dot notation for the rating property on our returned object. We receive a 5 for our new data.
 *   * Our second Console.log shows us that the original data for color_lawn.rating which is still instact meaning we did not modify the original contents
 *
 *  * Another way to do this: ES6 Style
 *    const rateColor = (color, rating) => ({
 *          ...color,
 *            rating
 *          })
 *
 *    * Using features from ES6 we can explicily return an object
 *    * in this object we are using the spread operator to grab our color_lawn object properties
 *    * and overwrite out rating property
 * # End Example -------------------------------
 * 

/**
 *#       _____           __  _                                                  
 *#      / ___/___  _____/ /_(_)___  ____  _                                     
 *#      \__ \/ _ \/ ___/ __/ / __ \/ __ \(_)                                    
 *#     ___/ /  __/ /__/ /_/ / /_/ / / / /                                       
 *#    /____/\___/\___/\__/_/\____/_/ /_(_)                                      
 *#        ____                     ______                 __  _                 
 *#       / __ \__  __________     / ____/_  ______  _____/ /_(_)___  ____  _____
 *#      / /_/ / / / / ___/ _ \   / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
 *#     / ____/ /_/ / /  /  __/  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  ) 
 *#    /_/    \__,_/_/   \___/  /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/  
 *                                                                              
 *
 * 
 * # Pure functions are naturally testable
 * 
 * * A pure function does not change anything in its environment(global or related outer lexical scope)
 * * A pure function is pretty simple. Everything needed for it operate is available via arguments. You control the arguments and can estimate the outcome
 *
 * $Example -------------------------------------
 *  
 * const frederick = {
    name: "Frederick Douglass", 
    canRead: false,
    canWrite: false
    }
    const selfEducate = (person) => { 
      person.canRead = true 
      person.canWrite = true
      return person
    }
    console.log( selfEducate(frederick) )
    console.log( frederick )
    // {name: "Frederick Douglass", canRead: true, canWrite: true}
    // {name: "Frederick Douglass", canRead: true, canWrite: true}
 * 
 *  * In this example we have an object named fredrick that contains several properties.
 *  * We create a function called selfEducate that takes a person object and modifies that objects properties
 *  * that function also returns that object with the modified properties. As we console.log the function
 *  * and the object, we can see that both objects have been modified. Making this function impure.
 *  * It has changed/mutated this object outside it's scope. How can we do better? Look below:
 * 
 *  const frederick = {
    name: "Frederick Douglass", 
    canRead: false,
    canWrite: false
    }
    const selfEducate = person => ({
    ...person, 
    canRead: true, 
    canWrite: true
    })
    console.log( selfEducate(frederick) )
    console.log( frederick )
    // {name: "Frederick Douglass", canRead: true, canWrite: true}
    // {name: "Frederick Douglass", canRead: false, canWrite: false}
 *  
 *  * In this example we have a function that takes a person object, but returns a completely new object as a copy from that person object.
 *  * using the spread operator we copy the contents of the object in our explicty returned object, while setting new properties for our new object.
 *  * This function doesn't change the object outside of it's own scope. Looking at the console.logs we can see that our function
 *  * contains properties that are different from the original object. 
 * 
 * # End Example ----------------------------------------
 * 
 * * 3 Rules to follow to write pure functions:
 *   !1. The function should take in at least one argument
 *   !2. The function should return a value or another function
 *   !3. The function should not change or mutate any of its arguments
 * 
 * 
 */

/***
 *$       _____           __  _                                                                                      
 *$      / ___/___  _____/ /_(_)___  ____  _                                                                         
 *$      \__ \/ _ \/ ___/ __/ / __ \/ __ \(_)                                                                        
 *$     ___/ /  __/ /__/ /_/ / /_/ / / / /                                                                           
 *$    /____/\___/\___/\__/_/\____/_/ /_(_)                                                                          
 *$        ____        __           ______                      ____                           __  _                 
 *$       / __ \____ _/ /_____ _   /_  __/________ _____  _____/ __/___  _________ ___  ____ _/ /_(_)___  ____  _____
 *$      / / / / __ `/ __/ __ `/    / / / ___/ __ `/ __ \/ ___/ /_/ __ \/ ___/ __ `__ \/ __ `/ __/ / __ \/ __ \/ ___/
 *$     / /_/ / /_/ / /_/ /_/ /    / / / /  / /_/ / / / (__  ) __/ /_/ / /  / / / / / / /_/ / /_/ / /_/ / / / (__  ) 
 *$    /_____/\__,_/\__/\__,_/    /_/ /_/   \__,_/_/ /_/____/_/  \____/_/  /_/ /_/ /_/\__,_/\__/_/\____/_/ /_/____/  
 *
 * # functional programming is all about transforming data from one form to another
 * 
 * * Two core functions in javascrip that you must master in order to be proficient with functional javascript
 * * Array.map & Array.reduce
 * * We will take a look at how these functions and some other core functions transform data from one type to another
 * 
 * $ Example -----------------------------------
 * 
 * * Array.join 
 *   const schools = [ 
 *       "Yorktown", 
 *       "Wakefield"
 *       "Washington & Lee",
 *   ]
 * 
 *  console.log(schools.join(', '))
 *  / 'Yorktown, Washington & Lee, Wakefield'
 *  
 *  * join is a built in method for Arrays. We use it to create a new string from our array. Given the arguments
 *  * we can set a limit to how the string should be joined from the array. 
 * 
 * * Array.filter
 * 
 *  const wSchools = schools.filter(school => school[0] === "W")
 *  console.log( wSchools )
    // ["Washington & Lee", "Wakefield"]
 *  
 *  * filter, is also a built in method. We use it to create a new array from the source array. The function takes a 'predicate'(function that returns a true or false).
 *  * filter will invoke this predicate on each item in the array to see if the item(in the function it is an argument) meets the requirment of true/false
 *  * filter creates a new array of the items that check true in the predicate 
 *  * If we need to remove an item from an array, it would be better to use filter as it is immutable. Alternatives like pop, or splice modify the original array. 
 * 
 *    const cutSchool = (cut, list) => list.filter(school => school !== cut)
      console.log(cutSchool("Washington & Lee", schools).join(" * ")) 
      // "Yorktown * Wakefield"
      console.log(schools.join("\n"))
      // Yorktown
      // Washington & Lee
      // Wakefield
 *  
 * * In the example above we have a function named cutSchool that takes a school to cut, and a list of schools
 * * In this function we use filter on the list array to check if the school in the list is not equal to the school to cut.
 * * If the school is not equal to the school to cut, it should return true. In this case when we log the function with the school to cut
 * * and the schools passed in. We get two schools back in an array, followed by .join to create a new string spaced with *
 * * If we console.log the schools array, we can see that the original array is still in its orginal state
 *
 * * Array.map
 *  * map takes a function that will be performed on every item in the array(they are arguments in the function) and returns a new array.
 * const highSchools = schools.map(school => `${school} High School`) 
 * console.log(highSchools.join("\n"))
    //  Yorktown High School
    //  Washington & Lee High School
    //  Wakefield High School
    console.log(schools.join("\n"))
    //  Yorktown
    //  Washington & Lee
    //  Wakefield
 * 
 *  * In this example we create a highSchools variable that will contain a new array returned from schools.map.
 *  * schools.map executes a function on each item in the array that returns a template literal of the school argument with High School added
 *  * when we log the highschools array with .join we get a new string of each item in the array being printed on a new line as a string.
 *  * Again we can console log the schools array with .join to verify the original state. 
 *  ! In the example above we produced an array of strings from an array of strings
 *  
 *  !.map can produce and array of objects, values, arrays, other functions, and type
 * 
 *  const highSchools = schools.map(school => ({ name: school }))
 * 
 *  console.log( highSchools )
    // [
    //   { name: "Yorktown" },
    //   { name: "Washington & Lee" },
    //   { name: "Wakefield" }
    // ]

 *  * In the example about we iterate over the schools array and return a new array.
 *  * We return an object for the name of each school. Essentially this new array contains objects produced from an array that contians strings
 * 
 *  *  Modifying an entry in an array of objects below 
 * 
 *  let schools = [
      { name: "Yorktown"},
      { name: "Stratford" },
      { name: "Washington & Lee"}, { name: "Wakefield"}
    ]
    let updatedSchools = editName("Stratford", "HB Woodlawn", schools)
    
    console.log( updatedSchools[1] ) // { name: "HB Woodlawn" } 
    console.log( schools[1] )  // { name: "Stratford" }

    const editName = (oldName, name, arr) => 
      arr.map(item => {
            if (item.name === oldName){ 
              return {
                  ...item,
                    name
              } 
            } else {
            return item 
              }
      })

 *   *In the example about we grab the array schools, that contains objects and pass it as a third argument to a function named editName.
 *  * Edit name take three params.(The old name of the school, the new name to replace it, and the array to that it should mimic that data from)
 *  * editName function returns a new array from the map method. In map we are checking to see if every item in the array is strictly equal to the current oldname of the school we want to change.
 *  * If it is then we can return a new object grabbing a copy of the current item and overwriting the name with the New name of the school.
 *  * If none of those criteria are met then we just return each item.
 *  * from the console.logs we can see that updateSchools contains the return array from editName 
 *
 *   
 *  const schools = { 
 *            "Yorktown": 10, 
 *            "Washington & Lee": 2, 
 *            "Wakefield": 5
          }
    const schoolArray = Object.keys(schools).map(key => ({
            name: key,
            wins: schools[key]
            })
          )
    console.log(schoolArray)
//      [
          {
    //     name: "Yorktown",
    //     wins: 10
    //   },
    //   {
    //     name: "Washington & Lee",
    //     wins: 2
    //   },
    //   {
    //     name: "Wakefield",
    //     wins: 5
    //   }vvvv
    // ]
 * 
 *  * In the example above we create a schoolArray variable. Here we use Object.keys(object) which takes an object and returns the keys from that object
 *  * into an an array. We then use .map on that array to lopp through the array. We return on object for each items in that array with the properties name, and win.
 *  * We take the current key and assign it name, and grab that value of the key from the schools object and assign it to wins.
 *  * Now schoolArray contains an array of objects with the properites name, win with assigned values from the previous object. 
 *                                                                                                            
 */

//  ! Rendering Elements with React
// * React renders elements of objects

/**
 *! 1. Specify a root node to render an element on the DOM
 * * EX: <div id="app"> </div>
 *
 *! 2. Create an element to render
 * * const element = <h1>Hello World!</h1>
 * ? Using ReactDOM(which is for rendering on web) we can access the render() method
 * ? The render method takes (/ The element/, and the root node that it should render that element on )
 *
 *! 3. Updating the Rendered Element
 * * React elements are immutable. In practice most react Apps only call ReactDOM.render() once
 * * React only updates whats necessary meaning it will compare the element and its children properties to see what state needs to be changed
 * ? IE: If you check a react app in console, you will see only changes to certain areas of the DOM, and not the entire DOM itself
 *
 *
 *
 *
 *
 */

//$   ===========================================================================
//#  _______  _______  _______  _______  _______  _        _______  _       _________ _______
// #(  ____ \(  ___  )(       )(  ____ )(  ___  )( (    /|(  ____ \( (    /|\__   __/(  ____ \
// #| (    \/| (   ) || () () || (    )|| (   ) ||  \  ( || (    \/|  \  ( |   ) (   | (    \/
// #| |      | |   | || || || || (____)|| |   | ||   \ | || (__    |   \ | |   | |   | (_____
// #| |      | |   | || |(_)| ||  _____)| |   | || (\ \) ||  __)   | (\ \) |   | |   (_____  )
// #| |      | |   | || |   | || (      | |   | || | \   || (      | | \   |   | |         ) |
// #| (____/\| (___) || )   ( || )      | (___) || )  \  || (____/\| )  \  |   | |   /\____) |
// #(_______/(_______)|/     \||/       (_______)|/    )_)(_______/|/    )_)   )_(   \_______)
//
//#  _______  _        ______     _______  _______  _______  _______  _______
// #(  ___  )( (    /|(  __  \   (  ____ )(  ____ )(  ___  )(  ____ )(  ____ \
// #| (   ) ||  \  ( || (  \  )  | (    )|| (    )|| (   ) || (    )|| (    \/
// #| (___) ||   \ | || |   ) |  | (____)|| (____)|| |   | || (____)|| (_____
// #|  ___  || (\ \) || |   | |  |  _____)|     __)| |   | ||  _____)(_____  )
// #| (   ) || | \   || |   ) |  | (      | (\ (   | |   | || (            ) |
// #| )   ( || )  \  || (__/  )  | )      | ) \ \__| (___) || )      /\____) |
// #|/     \||/    )_)(______/   |/       |/   \__/(_______)|/       \_______)

//$   ===========================================================================

/**
 * ! Components and Props
 * * Components allow you to split UI into independent pieces(which are reusable)
 * ? Conceptually they are like javascript functions, they accepts inputs called props, and return react elements
 *
 * ! 1.Functional and Class Components ----------------------------------------------------------
 *  * Simplest component example below
 *
 * $ Example --------------------
 *  function Welcome(props){
 *   return <h1>Hello, {props.name}</h1>;
 *  }
 *  * the function accepts a props object which contains data
 *  * and returns a react element containing jsx
 * ! These components are "functional" because they are literally javascript functions
 *
 * ? Using es6 syntax to define a component
 *
 *  class Welcome extends React.Component {
 *    render(){
 *     return <h1> Hello, {this.props.name}</h1>;vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
 *    }
 *  }
 *
 * !This is class version of a component
 * # End Example --------------------
 *
 * ! 2. Rendering a Component ----------------------------------------
 *  * React elements can represent DOM tags, however they can also represent defined Components
 *
 * $ Example -----------------------
 *  const element = < div />;
 *  const element = <Welcome name="Sara" />
 *
 *        * When react sees an element representing a component, it passes JSX attributes
 *        * to this component as a single object called props
 *  function Welcome(props){
 *   return <h1>Hello, {props.name}</h1>;
 *  }
 *  const element = <Welcome name="Sara" />
 *  ReactDOM.render( element, document.getElementById('app'));
 *
 * # End Example -----------------
 *
 * * ReactDOM will call the render method passing in the elment to render, and the DOM node to render it on
 * * the Welcome component take a props object containing { name: 'Sara' }
 * * the component will return <h1>Hello, Sara</h1> as the element
 * * React DOM will update the dom to reflect this
 *
 * !!! Note: Always start a component with a capital letter other wise react will treat is as a DOM tag, ie: <div /> vs <Welcome />
 *
 * ! 3. Composing Components -------------------------------------------
 *
 * * Components can render other components in their ouput
 * * allowing us to use the same component for any level of detail
 *
 * $ Example ----------------------
 * $
 *
 *   function Welcome(props){
 *    return <h1>Hello, {props.name}</h1>
 *  };
 *
 *  function App(){
 *    return(
 *     <div>
 *        <Welcome name="Sara" />
 *        <Welcome name="Cahal" />
 *        <Welcome name="Edite" />
 *    </div>
 *    );
 *  };
 *
 *  ReactDOM.render(<App />, document.getElementById('app'));
 *
 *          * Welcome component is defined, taking props object and returning an h1 element with whatever properties
 *          * passed down. Then when define an app component that returns a div element with children components
 *          * Each child component contains an prop object with their respective key value pairs {name: 'Sara'}, {name: 'Cahal'}, {name: 'Edite}
 *          * We then call ReactDOM.render( to render the app component which contains its children components as well)
 *
 * # End Example --------------------------------------------------
 *
 *
 * ! 4. Extracting components
 *
 *   * the IDEA of splittling components into smaller components
 *   *
 *
 * ! 5. Props are read-only
 *  * A component must never modify its own props
 *  * whether class or function keep them as pure as possible
 */

/**
 * ! State and LifeCycle
 *
 *
 *
 *
 *
 */

/**
 * ! Handling Events
 *
 *
 *
 *
 *
 */

/**
 * ! Conditional Rendering
 *
 *
 *
 *
 *
 */

/**
 * ! Lists and Keys
 *
 *
 *
 *
 *
 */

/**
 * ! Forms
 *
 *
 *
 *
 *
 */

/**
 * ! Lifting State up
 *
 *
 *
 *
 *
 */

/**
 * ! Composition vs Inheritance
 *
 *
 *
 *
 *
 */

/**
 * ! Thinking In React
 *
 *
 *
 *
 *
 */
