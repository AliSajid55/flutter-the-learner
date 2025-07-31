class CSharp {
  static List csharp = [
    [
      {
        "img": "",
        "topic": "OVERVIEW",
        "para":
            '''C# is a modern, general-purpose, object-oriented programming language developed
by Microsoft and approved by European Computer Manufacturers Association (ECMA)
and International Standards Organization (ISO).
C# is designed for Common Language Infrastructure (CLI), which consists of the
executable code and runtime environment that allows use of various high-level
languages on different computer platforms and architectures.
The following reasons make C# a widely used professional language:
 It is a modern, general-purpose programming language
 It is object oriented.
 It is component oriented.
 It is easy to learn.
 It is a tructured language.
 It produces efficient programs.
 It can be compiled on a variety of computer platforms.
 It is a part of .Net Framework.'''
      },
      {
        "img": "",
        "topic": "Features of C#",
        "para": '''Strong Programming Features of C#:
Following is the list of few important features of C#:
 Boolean Conditions
 Automatic Garbage Collection
 Standard Library
 Assembly Versioning
 Properties and Events
 Delegates and Events Management
 Easy-to-use Generics
 Indexers Conditional Compilation
 Simple Multithreading
 LINQ and Lambda Expressions
 Integration with Windows'''
      },
      {
        "img": "",
        "topic": "ENVIRONMENT",
        "para": '''The.NetFramework:
The .Net framework is a revolutionary platform that helps you to write the following
types of applications:
 Windows applications
 Web applications
 Web services
The .Net framework consists of an enormous library of codes used by the client
languages such as C#. Following are some of the components of the .Net framework:
 Common Language Runtime (CLR)
 The .Net Framework Class Library
 Common Language Specification
 Common Type System
 Metadata and Assemblies
 Windows Forms
 ASP.Net and ASP.Net AJAX
 ADO.Net
 Windows Workflow Foundation (WF)
 Windows Presentation Foundation
 Windows Communication Foundation (WCF)
 LINQ
'''
      },
      {
        "img": "",
        "topic": "IDE for C#",
        "para": '''IntegratedDevelopmentEnvironment(IDE)forC#
Microsoft provides the following development tools for C# programming:
 Visual Studio 2010 (VS)
 Visual C# 2010 Express (VCE)
 Visual Web Developer
The last two are freely available from Microsoft official website.
Using these tools,
you can write all kinds of C# programs from simple command-line applications to
more complex applications.
You can also write C# source code files using a basic text
editor like Notepad, and compile the code into assemblies using the command-line
compiler, which is again a part of the .NET Framework.
Visual C# Express and Visual Web Developer Express edition are trimmed down
versions of Visual Studio and has the same appearance.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2Fprogram%20structure.JPG?alt=media&token=e1c48a1b-fd02-45a3-9f68-8497b1774807",
        "topic": "Program Structure",
        "para": '''Creating Hello World Program:
A C# program consists of the following parts:
 Namespace declaration
 A class
 Class methods
 Class attributes
 A Main method
 Statements and Expressions
 Comments
Let us look at a simple code that prints the words "Hello World":'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2FCompiling%20and%20Executing%20the%20Program.JPG?alt=media&token=d3e42fb2-cbab-4aab-b04a-31b8b4f3d103",
        "topic": "Compiling and Executing the Program",
        "para":
            '''If you are using Visual Studio.Net for compiling and executing C# programs, take the
following steps:
 Start Visual Studio.
 On the menu bar, choose File -> New -> Project.
 Choose Visual C# from templates, and then choose Windows.
 Choose Console Application.
 Specify a name for your project and click OK button. This creates a new project
in Solution Explorer.
 Write code in the Code Editor.
 Click the Run button or press F5 key to execute the project. A Command
Prompt window appears that contains the line Hello World.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2Fcomment%20in%20c%23.JPG?alt=media&token=ca3a302c-3e76-489f-804e-64518702610e",
        "topic": "The class Keyword",
        "para": '''The class keyword is used for declaring a class:
Comments in C#:
Comments are used for explaining code. Compilers ignore the comment entries. The
multiline comments in C# programs start with /* and terminates with the characters
*/ as shown below:
'''
      },
      {
        "img": "",
        "topic": "C# Keywords",
        "para":
            '''Keywords are reserved words predefined to the C# compiler. These keywords cannot
be used as identifiers. However, if you want to use these keywords as identifiers, you
may prefix the keyword with the @ character.
In C#, some identifiers have special meaning in context of code, such as get and set
are called contextual keywords.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2FReserved%20keywords.JPG?alt=media&token=1b0f359f-5ace-4046-a681-52e1992fdb9d",
        "topic": "Reserved Keywords",
        "para": "The following table lists the Reserved keywords in C#:"
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2FContextual%20keywords.JPG?alt=media&token=28326ba8-0d59-44eb-8ca4-69ce5a4e8430",
        "topic": "Contextual Keywords",
        "para": "The following table lists the Contextual keywords in C#:"
      },
      {
        "img": "",
        "topic": "DATA TYPES",
        "para":
            '''The variables in C#, are categorized into the following types:
 Value types
 Reference types
 Pointer types'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2Fvalue%20data%20type.JPG?alt=media&token=7c9cc994-2313-4c10-a4d9-45beef26d903",
        "topic": "Value Data Type",
        "para":
            '''Value type variables can be assigned a value directly. They are derived from the class
System.ValueType.
The value types directly contain data. Some examples are int, char, and float, which
stores numbers, alphabets, and floating point numbers, respectively. When you
declare an int type, the system allocates memory to store the value.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2FReference%20data%20type.JPG?alt=media&token=202c6cdf-52b6-4eb2-905c-74056e9404c3",
        "topic": "Reference Data Type",
        "para":
            '''The reference types do not contain the actual data stored in a variable, but they
contain a reference to the variables.
In other words, they refer to a memory location. Using multiple variables, the
reference types can refer to a memory location. If the data in the memory location
is changed by one of the variables, the other variable automatically reflects this
change in value. Example of built-in reference types
are: object, dynamic, and string.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%23%20course%20pics%2FPointer%20data%20type.JPG?alt=media&token=a0b73744-a5b4-4d17-80d6-f91bd189881b",
        "topic": "Pointer Data Type",
        "para":
            '''Pointer type variables store the memory address of another type. Pointers in
C# have the same capabilities as the pointers in C or C++.
Syntax for declaring a pointer type is:'''
      }
    ],
    [
      {
        "question": "C# is a programming language, developed by _.",
        "option1": "Oracle",
        "option2": "Microsoft",
        "option3": "GNU project",
        "option4": "Google",
        "answer": "Microsoft"
      },
      {
        "question": "What does C# stand for?",
        "option1": "C Sharp",
        "option2": "Common Language Runtime",
        "option3": "C Standard",
        "option4": "Cross-platform Hypermedia",
        "answer": "C Sharp"
      },
      {
        "question": "In C#, which keyword is used to define a class?",
        "option1": "class",
        "option2": "struct",
        "option3": "interface",
        "option4": "namespace",
        "answer": "class"
      },
      {
        "question":
            "What is the correct syntax for declaring a variable in C#?",
        "option1": "int variableName;",
        "option2": "variableName = int;",
        "option3": "variableName int;",
        "option4": "int = variableName;",
        "answer": "int variableName;"
      },
      {
        "question": "Which data type is used to store whole numbers in C#?",
        "option1": "int",
        "option2": "string",
        "option3": "double",
        "option4": "char",
        "answer": "int"
      },
      {
        "question": "What is the symbol used for single-line comments in C#?",
        "option1": "//",
        "option2": "/* */",
        "option3": "<!-- -->",
        "option4": "##",
        "answer": "//"
      },
      {
        "question":
            "In C#, which loop is used to iterate over a collection of items?",
        "option1": "for loop",
        "option2": "while loop",
        "option3": "do-while loop",
        "option4": "foreach loop",
        "answer": "foreach loop"
      },
      {
        "question": "What does the 'using' keyword do in C#?",
        "option1": "Declares a namespace",
        "option2": "Imports a class library",
        "option3": "Defines a class",
        "option4": "Opens a file",
        "answer": "Imports a class library"
      },
      {
        "question": "In C#, how do you declare a constant variable?",
        "option1": "const variableName = value;",
        "option2": "var constant variableName = value;",
        "option3": "constant var variableName = value;",
        "option4": "constant variableName = value;",
        "answer": "const variableName = value;"
      },
      {
        "question":
            "Which C# keyword is used to create an instance of a class?",
        "option1": "object",
        "option2": "instance",
        "option3": "new",
        "option4": "create",
        "answer": "new"
      },
      {
        "question": "What is the correct way to define a method in C#?",
        "option1": "void methodName() {}",
        "option2": "methodName() {}",
        "option3": "function methodName() {}",
        "option4": "methodName function() {}",
        "answer": "void methodName() {}"
      },
      {
        "question": "In C#, what is the purpose of the 'this' keyword?",
        "option1": "To store the memory address of the object",
        "option2": "To access the static members of a class",
        "option3": "To point to the base class in a derived class",
        "option4": "To refer to the current instance of the class",
        "answer": "To refer to the current instance of the class"
      },
      {
        "question": "What is the correct way to handle exceptions in C#?",
        "option1": "try-catch",
        "option2": "try-finally",
        "option3": "catch-throw",
        "option4": "throw-try",
        "answer": "try-catch"
      },
      {
        "question":
            "What is the correct way to read user input from the console in C#?",
        "option1": "Console.read()",
        "option2": "Console.readLine()",
        "option3": "Console.input()",
        "option4": "Console.ReadLine()",
        "answer": "Console.ReadLine()"
      },
      {
        "question":
            "In C#, what does the 'async' keyword indicate when used with a method?",
        "option1":
            "To specify that the method should be executed synchronously",
        "option2": "To define a method that returns a Task or Task<T>",
        "option3": "To indicate that the method is an extension method",
        "option4": "To declare a method as asynchronous",
        "answer": "To declare a method as asynchronous"
      },
      {
        "question": "What is the correct way to format strings in C#?",
        "option1": "string.Format()",
        "option2": "string.FormatString()",
        "option3": "string.format()",
        "option4": "string.FormatString()",
        "answer": "string.Format()"
      },
      {
        "question": "In C#, how do you convert a string to an integer?",
        "option1": "int.Parse(stringValue)",
        "option2": "Convert.ToInt32(stringValue)",
        "option3": "stringValue.ToInt32()",
        "option4": "int.Convert(stringValue)",
        "answer": "int.Parse(stringValue)"
      },
      {
        "question":
            "What is the correct way to create a multi-line string in C#?",
        "option1": "string multilineString = 'Line 1 \n Line 2';",
        "option2": "string multilineString = 'Line 1' + 'Line 2';",
        "option3": "string multilineString = 'Line 1 \\n Line 2';",
        "option4": "string multilineString = 'Line 1' \\n 'Line 2';",
        "answer": "string multilineString = 'Line 1 \\n Line 2';"
      },
      {
        "question":
            "In C#, which collection type is used to store key-value pairs?",
        "option1": "List",
        "option2": "Dictionary",
        "option3": "Array",
        "option4": "Set",
        "answer": "Dictionary"
      },
      {
        "question":
            "What is the correct way to add elements to a List<T> in C#?",
        "option1": "list.Add(element)",
        "option2": "list.Insert(element)",
        "option3": "list.Push(element)",
        "option4": "list.Append(element)",
        "answer": "list.Add(element)"
      },
      {
        "question": "In C#, how do you sort elements in an array?",
        "option1": "array.Sort()",
        "option2": "Sort(array)",
        "option3": "array.Sort(array)",
        "option4": "Sort(array, ascending)",
        "answer": "array.Sort()"
      },
      {
        "question": "What is the correct way to define a property in C#?",
        "option1": "string Name { get; set; }",
        "option2": "void Name { get; set; }",
        "option3": "property Name { get; set; }",
        "option4": "get set Name;",
        "answer": "string Name { get; set; }"
      },
      {
        "question": "In C#, what is the purpose of the 'base' keyword?",
        "option1": "To specify the base address of a class",
        "option2": "To define a base class in a derived class",
        "option3": "To access the base class members from a derived class",
        "option4":
            "To declare a base method that can be overridden in derived classes",
        "answer": "To access the base class members from a derived class"
      },
      {
        "question":
            "What is the correct way to check if a string contains a specific substring in C#?",
        "option1": "string.Contains(substring)",
        "option2": "string.IndexOf(substring) > -1",
        "option3": "string.Substring(substring)",
        "option4": "string.Includes(substring)",
        "answer": "string.Contains(substring)"
      },
      {
        "question":
            "In C#, what is the purpose of the 'ref' keyword when used with a method parameter?",
        "option1": "To specify that the method returns a reference type",
        "option2": "To indicate that the method parameter is optional",
        "option3":
            "To pass a parameter by reference, allowing the method to modify its value",
        "option4": "To define a parameter that is passed by value",
        "answer":
            "To pass a parameter by reference, allowing the method to modify its value"
      },
      {
        "question":
            "What is the correct way to inherit from a base class in C#?",
        "option1": "class DerivedClass : BaseClass {}",
        "option2": "class DerivedClass extends BaseClass {}",
        "option3": "class DerivedClass : extends BaseClass {}",
        "option4": "class DerivedClass extends : BaseClass {}",
        "answer": "class DerivedClass : BaseClass {}"
      },
      {
        "question": "In C#, how do you access the length of an array?",
        "option1": "array.size",
        "option2": "array.length",
        "option3": "array.count",
        "option4": "array.Length",
        "answer": "array.Length"
      },
      {
        "question":
            "What is the correct way to define an abstract class in C#?",
        "option1": "class AbstractClass {}",
        "option2": "abstract class AbstractClass {}",
        "option3": "AbstractClass() {}",
        "option4": "void AbstractClass() {}",
        "answer": "abstract class AbstractClass {}"
      },
      {
        "question":
            "In C#, what is the purpose of the 'override' keyword when used with a method?",
        "option1": "To specify that the method can be called from any class",
        "option2":
            "To indicate that the method is overloaded with multiple definitions",
        "option3": "To define a new method that hides the base class method",
        "option4":
            "To indicate that the method is overriding a virtual or abstract method in the base class",
        "answer":
            "To indicate that the method is overriding a virtual or abstract method in the base class"
      },
      {
        "question":
            "What is the correct way to define a static constructor in C#?",
        "option1": "static void ClassName() {}",
        "option2": "static ClassName() {}",
        "option3": "static void ClassName() { }",
        "option4": "ClassName() {}",
        "answer": "static ClassName() {}"
      }
    ],
  ];
}
