# DATA STRUCTURES AND ALGORITHMS

## Big O
![Big O Complexity Chart](bigOgraph.png)

  > Best Case - $\Omega $
  > Average Case - $ \theta $
  > Worst Case - $ O (Omnicro)$

<!-- $$ Log(O(n))$$ -->
First Big O Notation Example

$O(n)$(Fair - Good complexity)
```js
// Javascript
function logItems(n) {
    for(let i = 0; i < n; i++) {
        console.log(i)
    }
}

logItems(10)
```
 -> In the example above we pass the fuction a number(n), and we are iterating n times
 -> The number of operations will be porportional to n
 
![O(n)](o(n).png)

**Note**: Drop constants 
```js
// Javascript
function logItems(n) {
    for(let i = 0; i < n; i++) {
        console.log(i)
    }
    for(let j = 0; j < n; i++) {
        console.log(j)
    }
}

logItems(10
```
-> Our code ran n+n times or 2n
-> However, with constants we can drop them $O(2n)$ -> $O(n)$

$O(n^2)$(Horrible complexity)
```js
// Javascript
function logItems(n) {
    for(let i = 0; i < n; i++) {
        for(let j = 0; j < n; i++) {
            console.log(j)
        }
    }
}

logItems(10)
```
-> Our code runs n*n or $n^2$
![O(n)](oofn2.png)

## Linked lists 

