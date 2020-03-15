// *           _____                   _______                   _____                    _____
// !          /\    \                 /::\    \                 /\    \                  /\    \
// $         /::\____\               /::::\    \               /::\    \                /::\    \
// ?        /::::|   |              /::::::\    \             /::::\    \              /::::\    \
// #       /:::::|   |             /::::::::\    \           /::::::\    \            /::::::\    \
// *      /::::::|   |            /:::/~~\:::\    \         /:::/\:::\    \          /:::/\:::\    \
// !     /:::/|::|   |           /:::/    \:::\    \       /:::/  \:::\    \        /:::/__\:::\    \
// $    /:::/ |::|   |          /:::/    / \:::\    \     /:::/    \:::\    \      /::::\   \:::\    \
// ?   /:::/  |::|   | _____   /:::/____/   \:::\____\   /:::/    / \:::\    \    /::::::\   \:::\    \
// #  /:::/   |::|   |/\    \ |:::|    |     |:::|    | /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \
// * /:: /    |::|   /::\____\|:::|____|     |:::|    |/:::/____/     \:::|    |/:::/__\:::\   \:::\____\
// ! \::/    /|::|  /:::/    / \:::\    \   /:::/    / \:::\    \     /:::|____|\:::\   \:::\   \::/    /
// $  \/____/ |::| /:::/    /   \:::\    \ /:::/    /   \:::\    \   /:::/    /  \:::\   \:::\   \/____/
// ?          |::|/:::/    /     \:::\    /:::/    /     \:::\    \ /:::/    /    \:::\   \:::\    \
// #          |::::::/    /       \:::\__/:::/    /       \:::\    /:::/    /      \:::\   \:::\____\
// *          |:::::/    /         \::::::::/    /         \:::\  /:::/    /        \:::\   \::/    /
// !          |::::/    /           \::::::/    /           \:::\/:::/    /          \:::\   \/____/
// $          /:::/    /             \::::/    /             \::::::/    /            \:::\    \
// ?         /:::/    /               \::/____/               \::::/    /              \:::\____\
// #         \::/    /                 ~~                      \::/____/                \::/    /
// !          \/____/                                           ~~                       \/____/

//*
//*
//*                                                                                       ,---,
//*         ,---.                                 ,--,                                 ,`--.' |
//*        /__./|            __  ,-.            ,--.'|    ,---.        ,---,          /    /  :
//*   ,---.;  ; |          ,' ,'/ /|  .--.--.   |  |,    '   ,'\   ,-+-. /  |        :    |.' '
//*  /___/ \  | |   ,---.  '  | |' | /  /    '  `--'_   /   /   | ,--.'|'   |        `----':  |
//*  \   ;  \ ' |  /     \ |  |   ,'|  :  /`./  ,' ,'| .   ; ,. :|   |  ,"' |           '   ' ;
//*   \   \  \: | /    /  |'  :  /  |  :  ;_    '  | | '   | |: :|   | /  | |           |   | |
//*    ;   \  ' ..    ' / ||  | '    \  \    `. |  | : '   | .; :|   | |  | |           '   : ;
//*     \   \   ''   ;   /|;  : |     `----.   \'  : |_|   :    ||   | |  |/            |   | '
//*      \   `  ;'   |  / ||  , ;    /  /`--'  /|  | '.'\   \  / |   | |--'             '   : |
//*       :   \ ||   :    | ---'    '--'.     / ;  :    ;`----'  |   |/                 ;   |.'
//*        '---"  \   \  /            `--'---'  |  ,   /         '---'                  '---'
//*                `----'                        ---`-'
//*

//!    ___              _                                 __                           _         ___              _ _           _   _             _
//!   / _ \            | |                               / _|                         | |       / _ \            | (_)         | | (_)           | |
//!  / /_\ \_ __   __ _| |_ ___  _ __ ___  _   _    ___ | |_    __ _   _ __   ___   __| | ___  / /_\ \_ __  _ __ | |_  ___ __ _| |_ _  ___  _ __ | |
//!  |  _  | '_ \ / _` | __/ _ \| '_ ` _ \| | | |  / _ \|  _|  / _` | | '_ \ / _ \ / _` |/ _ \ |  _  | '_ \| '_ \| | |/ __/ _` | __| |/ _ \| '_ \| |
//!  | | | | | | | (_| | || (_) | | | | | | |_| | | (_) | |   | (_| | | | | | (_) | (_| |  __/ | | | | |_) | |_) | | | (_| (_| | |_| | (_) | | | |_|
//!  \_| |_/_| |_|\__,_|\__\___/|_| |_| |_|\__, |  \___/|_|    \__,_| |_| |_|\___/ \__,_|\___| \_| |_/ .__/| .__/|_|_|\___\__,_|\__|_|\___/|_| |_(_)
//!                                         __/ |                                                    | |   | |
//!                                        |___/                                                     |_|   |_|
//!
//
//
//
//
//
//
//


/*
* *   What is node.js? : JavaScript runtime built on V8. Uses event-driven, non-blocking I/O model
* -> A wrapper around a VM(virtual machine) like V8/Chakra
*  - Comes with some feature rich built in modules(fs, http, crypto, zip, ...)
*  - Comes with Asynchronous APIs (no threads)
*  - C++ add ons
*  - ships with great Debugger and other utilities
*  - NPM
*  - Module dependancy manager
*  -
*
*
* *  THE V8 JAVASCRIPT ENGINE
*
*
*
                            +------------------------+-------------------+
                            |   Javascript(Chrome)   |        C++        |
                            +------------------------+-------------------+
                            | localeStorage.getItem  | Some C++ function |
                            | document.querySelector | Some C++ function |
                            +------------------------+-------------------+
                            *

                                              Results
           +--------------------+      <-----------------------+    +---------------+
           |                    |                                   |               |
           |    CHROME          |                                   |      V8       |
           |                    |         JavaScript code           |               |
           +--------------------+      +----------------------->    +---------------+


                             +------------------+-------------------+
                             | Javascript(Node) |        C++        |
                             +------------------+-------------------+
                             | fs.readFile      | Some C++ function |
                             | os.platform      | Some C++ function |
                             +------------------+-------------------+
                             *
                                              Results
           +--------------------+      <-----------------------+    +---------------+
           |                    |                                   |               |
           |    Node            |                                   |      V8       |
           |                    |         JavaScript code           |               |
           +--------------------+      +----------------------->    +---------------+
*
*
*
*
* */
/**
 *
 *
 * Basic node Exmaple
 *
 * ! Description: Simple file that declares a few functions and invokes them
 *
 * var mathlib = require('./lib/math');
 * var jokesLib = require('./lib.jokes');
 *
 * // App Object
 * var  app = {};
 *
 *  //Configuration
 *app.config ={
   'timeBetweenJokes' : 1000
 };
 *
 * //Function that prints a random joke
 *app.printAJoke = function(){

  // Get all the jokes
  var allJokes = jokesLib.allJokes();

  // Get the length of the jokes
  var numberOfJokes = allJokes.length;

  // Pick a number between 1 and the number of jokes
  var randomNumber = mathLib.getRandomNumber(1, numberOfJokes);

  // Get the joke at that position in the array (minus one)
  var selectedJoke = allJokes(randomNumber - 1);

  // Send the joke to the console
  console.log(selectedJoke);

 };
 // function that loops indefinitely calling print joke
 app.initLoop = function(){

  // setInterval https://nodejs.org/api/timers.html#timers_setinterval_callback_delay_args
  // setInterval(callback, delay[, ...args])
  setInterval(app.printAJoke, app.config.timeBetweenJokes)

 };
 *
 *
 * // init app
 * app.initloop();
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
*/

