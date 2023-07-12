using System;

namespace HelloWorld
{
    public class Program
    {
        static void Main()
        {
            Console.WriteLine("Welcome to the learning program.");
            Console.WriteLine("Please enter your name: ");
            string strName = Console.ReadLine();
            Console.WriteLine("Name entered is: " + strName);
            Console.WriteLine("Please enter your age: ");
            int intAge = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The age entered: " + intAge);
            Console.ReadLine();
        }
    }
}