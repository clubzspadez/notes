using System;

namespace firstConsoleApp
{
    //name of program/file commona pattern in CSharp
    class Program
    {
        //main method that our app runs from
        static void Main(string[] args)
        {
            //write to console
            Console.WriteLine("What is your name?");
            // read string and store to variable that is a string
            string name = Console.ReadLine();
            // write to console what string is in the argument, and the name variable
            Console.WriteLine("My name is " + name);
            //Obtains the next character or function key pressed by the user.The pressed key is optionally displayed in the console window.
            Console.ReadKey();
        }
    }
}
