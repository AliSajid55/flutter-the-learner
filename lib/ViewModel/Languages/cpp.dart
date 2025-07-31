class Cpp {
  static List cpp = [
    [
      {
        "img": "",
        "topic": "Overview of C++",
        "para":
            '''C++ is a statically typed, compiled, general-purpose, case-sensitive, free-form programming
language that supports procedural, object-oriented, and generic programming.
C++ is regarded as a middle-level language, as it comprises a combination of both highlevel and low-level language features.
C++ was developed by Bjarne Stroustrup starting in 1979 at Bell Labs in Murray Hill, New
Jersey, as an enhancement to the C language and originally named C with Classes but later
it was renamed C++ in 1983.
C++ is a superset of C, and that virtually any legal C program is a legal C++ program'''
      },
      {
        "img": "",
        "topic": "Object-Oriented Programming",
        "para":
            '''C++ fully supports object-oriented programming, including the four pillars of object-oriented development:
 Encapsulation
 Data hiding
 Inheritance
 Polymorphism'''
      },
      {
        "img": "",
        "topic": "Standard Libraries",
        "para": '''Standard C++ consists of three important parts:
 The core language giving all the building blocks including variables, data types and
literals, etc.
 The C++ Standard Library giving a rich set of functions manipulating files, strings, etc.
 The Standard Template Library (STL) giving a rich set of methods manipulating data
structures, etc.'''
      },
      {
        "img": "",
        "topic": "The ANSI Standard",
        "para":
            '''The ANSI standard is an attempt to ensure that C++ is portable; that code you write for
Microsoft's compiler will compile without errors, using a compiler on a Mac, UNIX, a Windows
box, or an Alpha.
The ANSI standard has been stable for a while, and all the major C++ compiler manufacturers
support the ANSI standard.'''
      },
      {
        "img": "",
        "topic": "Learning C++",
        "para":
            '''The most important thing while learning C++ is to focus on concepts.
The purpose of learning a programming language is to become a better programmer; that is,
to become more effective at designing and implementing new systems and at maintaining old
ones.
C++ supports a variety of programming styles. You can write in the style of Fortran, C,
Smalltalk, etc., in any language. Each style can achieve its aims effectively while maintaining
runtime and space efficiency.
Use of C++
C++ is used by hundreds of thousands of programmers in essentially every application
domain.
C++ is being highly used to write device drivers and other software that rely on direct
manipulation of hardware under real-time constraints.
C++ is widely used for teaching and research because it is clean enough for successful
teaching of basic concepts.
Anyone who has used either an Apple Macintosh or a PC running Windows has indirectly used
C++ because the primary user interfaces of these systems are written in C++.'''
      },
      {
        "img": "",
        "topic": "Environment Setup",
        "para":
            '''If you are still willing to set up your environment for C++, you need to have the following two
softwares on your computer.
Text Editor:
This will be used to type your program. Examples of few editors include Windows Notepad,
OS Edit command, Brief, Epsilon, EMACS, and vim or vi.
Name and version of text editor can vary on different operating systems. For example,
Notepad will be used on Windows and vim or vi can be used on windows as well as Linux, or
UNIX.
C++ Compiler:
This is an actual C++ compiler, which will be used to compile your source code into final
executable program.
Most C++ compilers don't care what extension you give to your source code, but if you don't
specify otherwise, many will use .cpp by default.
Most frequently used and free available compiler is GNU C/C++ compiler, otherwise you can
have compilers either from HP or Solaris if you have the respective Operating Systems.
Installing GNU C/C++ Compiler:
Windows Installation:
To install GCC at Windows you need to install MinGW. To install MinGW, go to the MinGW
homepage, www.mingw.org, and follow the link to the MinGW download page. Download the latest version of the MinGW installation program which should be named MinGW-
<version>.exe.
While installing MinGW, at a minimum, you must install gcc-core, gcc-g++, binutils, and the
MinGW runtime, but you may wish to install more.
Add the bin subdirectory of your MinGW installation to your PATH environment variable so
that you can specify these tools on the command line by their simple names.
When the installation is complete, you will be able to run gcc, g++, ar, ranlib, dlltool, and
several other GNU tools from the Windows command line.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2Fbasic%20syntax.JPG?alt=media&token=cf0af0a4-a6c4-4253-8d98-35189f39e14d",
        "topic": " Basic Syntax ",
        "para": '''Let us now briefly look into what a class,
object, methods, and instant variables mean.
 Object -
Objects have states and behaviors. Example: A dog has states - color, name,
breed as well as behaviors - wagging, barking, and eating. An object is an instance of
a class.
 Class -
A class can be defined as a template/blueprint that describes the
behaviors/states that object of its type support.
 Methods - A method is basically a behavior. A class can contain many methods. It is
in methods where the logics are written, data is manipulated and all the actions are
executed.
 Instant Variables -
Each object has its unique set of instant variables. An object's
state is created by the values assigned to these instant variables.
Let us look at the various parts of the below program:
1. The C++ language defines several headers, which contain information that is either
necessary or useful to your program. For this program, the header <iostream> is
needed.
2. The line using namespace std; tells the compiler to use the std namespace.
Namespaces are a relatively recent addition to C++.
3. The next line ‘// main() is where program execution begins.’ is a single-line
comment available in C++. Single-line comments begin with // and stop at the end of
the line.
4. The line int main() is the main function where program execution begins.
5. The next line cout << "This is my first C++ program."; causes the message "This
is my first C++ program" to be displayed on the screen.
6. The next line return 0; terminates main() function and causes it to return the value 0
to the calling process.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FCompile%20%26%20Execute%20C%2B%2B%20Program.JPG?alt=media&token=64f029e7-ee94-4804-807c-379042548735",
        "topic": "Compile & Execute C++ Program",
        "para":
            '''Let's look at how to save the file, compile and run the program. Please follow the steps given
below:
1. Open a text editor and add the code as above.
2. Save the file as: hello.cpp
3. Open a command prompt and go to the directory where you saved the file.
4. Type 'g++ hello.cpp' and press enter to compile your code. If there are no errors in
your code the command prompt will take you to the next line and would generate a.out
executable file.
5. Now, type 'a.out' to run your program.
6. You will be able to see ' Hello World ' printed on the window.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FSemicolons%20%26%20Blocks%20in%20C%2B%2B.JPG?alt=media&token=30f60ecc-701f-4e12-9828-4ff5ba9b2f02",
        "topic": "Semicolons & Blocks in C++",
        "para":
            '''In C++, the semicolon is a statement terminator. That is, each individual statement must be
ended with a semicolon. It indicates the end of one logical entity.
For example, following are three different statements:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FC%2B%2B%20Identifiers.JPG?alt=media&token=69baae57-fc00-4247-8df1-16c23ca131d5",
        "topic": "C++ Identifiers",
        "para":
            '''A C++ identifier is a name used to identify a variable, function, class, module, or any other
user-defined item. An identifier starts with a letter A to Z or a to z or an underscore (_)
followed by zero or more letters, underscores, and digits (0 to 9).
C++ does not allow punctuation characters such as @, \$, and % within identifiers. C++ is a
case-sensitive programming language. Thus, Manpower and manpower are two different
identifiers in C++.
Here are some examples of acceptable identifiers:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FC%2B%2B%20Keywords.JPG?alt=media&token=d3a919b8-807e-409d-911f-e2e927e37d00",
        "topic": "C++ Keywords",
        "para":
            '''The following list shows the reserved words in C++. These reserved words may not be used
as constant or variable or any other identifier names.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FTrigraphs%20in%20C%2B%2B.JPG?alt=media&token=085f8e5e-aab6-4a79-9f05-7fe3a551f87f",
        "topic": "Trigraphs in C++",
        "para":
            '''A few characters have an alternative representation, called a trigraph sequence. A trigraph is
a three-character sequence that represents a single character and the sequence always starts
with two question marks.
Trigraphs are expanded anywhere they appear, including within string literals and character
literals, in comments, and in preprocessor directives.
All the compilers do not support trigraphs and they are not advised to be used because of
their confusing nature.
Following are most frequently used trigraph sequences:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FComments%20In%20C%2B%2B.JPG?alt=media&token=ce7e835f-994c-4244-82c4-a53871a0d78d",
        "topic": "COMMENTS In C++",
        "para":
            '''C++ supports single-line and multi-line comments. All characters available inside any
comment are ignored by C++ compiler.
C++ comments start with /* and end with */.
A comment can also start with //, extending to the end of the line.
Within a /* and */ comment, // characters have no special meaning. Within a // comment, /*
and */ have no special meaning.
// For example:
'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FDATA%20TYPES.JPG?alt=media&token=053d570d-ebbe-40d2-b0ce-3597bf00c72d",
        "topic": "DATA Types",
        "para": '''Primitive Built-in Types:
C++ offers the programmer a rich assortment of built-in as well as user defined data types.
Following table lists down seven basic C++ data types:
Several of the basic types can be modified using one or more of these type modifiers:
 signed
 unsigned
 short
 long
'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FEnumerated%20Data%20Types.JPG?alt=media&token=1fea1913-f5fb-4295-b9ce-ad5c149a779d",
        "topic": "Enumerated Data Types",
        "para":
            '''An enumerated type declares an optional type name and a set of zero or more identifiers that
can be used as values of the type. Each enumerator is a constant whose type is the
enumeration.
Creating an enumeration requires the use of the keyword enum. The general form of an
enumeration type is:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FVariable%20types.JPG?alt=media&token=b44e85d1-cac4-4560-8212-b92d37964ff9",
        "topic": "VARIABLE Types",
        "para":
            '''A variable provides us with named storage that our programs can manipulate. Each variable
in C++ has a specific type, which determines the size and layout of the variable's memory;
the range of values that can be stored within that memory; and the set of operations that can
be applied to the variable.
The name of a variable can be composed of letters, digits, and the underscore character. It
must begin with either a letter or an underscore. Upper and lowercase letters are distinct
because C++ is case-sensitive:
There are following basic types of variable in C++:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FVariable%20Declaration%20in%20C%2B%2B.JPG?alt=media&token=c976dcf7-76de-41a3-8538-6940c6cbd53b",
        "topic": "Variable Declaration in C++",
        "para": '''A variable declaration has its meaning at the time
of compilation only, compiler needs actual variable declaration at the time of linking of the
program.
A variable declaration is useful when you are using multiple files and you define your variable
in one of the files which will be available at the time of linking of the program. You will
use extern keyword to declare a variable at any place. Though you can declare a variable
multiple times in your C++ program, but it can be defined only once in a file, a function or a
block of code.
Example:
Try the following example where a variable has been declared at the top, but it has been
defined inside the main function:'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FInitializing%20Local%20and%20Global%20Variables.JPG?alt=media&token=5032aae7-fbfc-410a-848c-e258fb3dcb09",
        "topic": "Initializing Local and Global Variables",
        "para":
            '''When a local variable is defined, it is not initialized by the system, you must initialize it
yourself. Global variables are initialized automatically by the system when you define them
as follows:
It is a good programming practice to initialize variables properly, otherwise sometimes
program would produce unexpected result.'''
      },
      {
        "img": "",
        "topic": "OPERATORS",
        "para":
            '''An operator is a symbol that tells the compiler to perform specific mathematical or logical
manipulations. C++ is rich in built-in operators and provide the following types of operators:
 Arithmetic Operators
 Relational Operators
 Logical Operators
 Bitwise Operators
 Assignment Operators
 Misc Operators
This chapter will examine the arithmetic, relational, logical, bitwise, assignment and other
operators one by one.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FArithmetic%20Operators.JPG?alt=media&token=c861226f-a0ab-467f-830c-a2117138a23f",
        "topic": "Arithmetic Operators",
        "para":
            "There are following arithmetic operators supported by C++ language:"
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FRelational%20Operators.JPG?alt=media&token=8812cb2d-a5fa-426e-882f-2e379e4ae602",
        "topic": "Relational Operators",
        "para":
            "There are following relational operators supported by C++ language"
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FExample%20code%20of%20Arithmitec%20operator.JPG?alt=media&token=debcf2cc-26c2-44d6-a4df-150a54231220",
        "topic": "Example of Arithmetic Operators",
        "para":
            '''Try the following example to understand all the arithmetic operators available in C++.
Copy and paste the following C++ program in test.cpp file and compile and run this program.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/C%2B%2B%20course%20pics%2FExample%20code%20of%20Rational%20operator.JPG?alt=media&token=31e9c796-6e3d-4242-a812-c8bf19348f02",
        "topic": "Example of Rational Operators",
        "para":
            '''Try the following example to understand all the relational operators available in C++.
Copy and paste the following C++ program in test.cpp file and compile and run this program.'''
      },
    ],
    [
      {
        "question": "Who invented C++?",
        "option1": "Dennis Ritchie",
        "option2": "Ken Thompson",
        "option3": "Brian Kernighan",
        "option4": "Bjarne Stroustrup",
        "answer": "Bjarne Stroustrup"
      },
      {
        "question": "C++ is an extension of which programming language?",
        "option1": "C",
        "option2": "Java",
        "option3": "Python",
        "option4": "JavaScript",
        "answer": "Python"
      },
      {
        "question":
            "Which feature of C++ allows a class to have multiple functions with the same name but different parameter lists?",
        "option1": "Encapsulation",
        "option2": "Inheritance",
        "option3": "Polymorphism",
        "option4": "Abstraction",
        "answer": "Polymorphism"
      },
      {
        "question":
            "Which keyword is used to create a new object of a class in C++?",
        "option1": "new",
        "option2": "this",
        "option3": "class",
        "option4": "object",
        "answer": "new"
      },
      {
        "question":
            "Which operator is used to access the member functions and variables of an object in C++?",
        "option1": "->",
        "option2": ".",
        "option3": "::",
        "option4": "=>",
        "answer": "."
      },
      {
        "question":
            "What is the correct syntax for declaring a pointer in C++?",
        "option1": "int pointer = &x;",
        "option2": "int pointer x;",
        "option3": "int* x;",
        "option4": "int x*;",
        "answer": "int* x;"
      },
      {
        "question":
            "Which type of inheritance allows a class to inherit from multiple base classes in C++?",
        "option1": "Single Inheritance",
        "option2": "Multiple Inheritance",
        "option3": "Hierarchical Inheritance",
        "option4": "Multilevel Inheritance",
        "answer": "Multiple Inheritance"
      },
      {
        "question":
            "What is the keyword used to define a constant variable in C++?",
        "option1": "final",
        "option2": "const",
        "option3": "static",
        "option4": "immutable",
        "answer": "const"
      },
      {
        "question":
            "Which C++ standard introduced the 'auto' keyword for type inference?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question":
            "What is the correct way to dynamically allocate memory for an array in C++?",
        "option1": "int arr = new int[size];",
        "option2": "int arr[size];",
        "option3": "int arr[] = new int[size];",
        "option4": "int arr = new[size] int;",
        "answer": "int arr[] = new int[size];"
      },
      {
        "question":
            "Which header file is needed to work with file input and output in C++?",
        "option1": "<fileio>",
        "option2": "<fstream>",
        "option3": "<iofile>",
        "option4": "<datastream>",
        "answer": "<fstream>"
      },
      {
        "question":
            "What is the function used to read a character from the standard input in C++?",
        "option1": "get()",
        "option2": "cin.get()",
        "option3": "read()",
        "option4": "getline()",
        "answer": "cin.get()"
      },
      {
        "question":
            "In C++, which loop is executed at least once even if the condition is false?",
        "option1": "for loop",
        "option2": "while loop",
        "option3": "do-while loop",
        "option4": "switch loop",
        "answer": "do-while loop"
      },
      {
        "question":
            "Which C++ standard introduced the 'nullptr' keyword for representing a null pointer?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question":
            "What is the correct way to delete a dynamically allocated array in C++?",
        "option1": "delete arr;",
        "option2": "delete[] arr;",
        "option3": "delete(size, arr);",
        "option4": "free(arr);",
        "answer": "delete[] arr;"
      },
      {
        "question": "What is the purpose of the 'friend' keyword in C++?",
        "option1":
            "To define a friend function that can access private members of a class",
        "option2": "To declare a friend class that inherits from another class",
        "option3":
            "To define a friend function that can override virtual functions",
        "option4":
            "To specify a friend namespace that can access class members",
        "answer":
            "To define a friend function that can access private members of a class"
      },
      {
        "question": "Which C++ standard introduced the 'range-based for loop'?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question":
            "What is the correct way to include the standard C++ library in a C++ program?",
        "option1": "#include <stdlib>",
        "option2": "#include <iostream>",
        "option3": "#include <string>",
        "option4": "#include <stdio>",
        "answer": "#include <iostream>"
      },
      {
        "question":
            "In C++, what is the purpose of the 'virtual' keyword when used with a member function?",
        "option1":
            "To specify that the function can be overridden in derived classes",
        "option2":
            "To declare a function that is automatically called when an object is created",
        "option3": "To indicate that the function returns a virtual object",
        "option4":
            "To define a function that is only accessible by the base class",
        "answer":
            "To specify that the function can be overridden in derived classes"
      },
      {
        "question":
            "What is the correct way to define a constructor for a class in C++?",
        "option1": "class MyClass { constructor() {} };",
        "option2": "class MyClass { void constructor() {} };",
        "option3": "class MyClass { MyClass() {} };",
        "option4": "class MyClass { function MyClass() {} };",
        "answer": "class MyClass { MyClass() {} };"
      },
      {
        "question":
            "Which C++ standard introduced the 'constexpr' keyword for declaring constant expressions?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question":
            "In C++, what is the purpose of the 'static' keyword when used with a class member?",
        "option1":
            "To declare a member function that is called automatically when an object is created",
        "option2":
            "To indicate that the member belongs to the base class and not to the derived class",
        "option3":
            "To define a member that is shared by all objects of the class",
        "option4":
            "To specify a member that can be accessed without creating an object of the class",
        "answer":
            "To define a member that is shared by all objects of the class"
      },
      {
        "question":
            "What is the correct way to access the address of a variable in C++?",
        "option1": "var.address",
        "option2": "&var",
        "option3": "address(var)",
        "option4": "*var",
        "answer": "&var"
      },
      {
        "question":
            "In C++, what is the function used to output data to the standard output?",
        "option1": "put()",
        "option2": "cout.put()",
        "option3": "write()",
        "option4": "cout",
        "answer": "cout"
      },
      {
        "question": "What is the purpose of the 'explicit' keyword in C++?",
        "option1":
            "To specify that a class constructor can be implicitly called",
        "option2":
            "To prevent automatic type conversion in certain constructor calls",
        "option3":
            "To define a function that can be explicitly called by the user",
        "option4":
            "To indicate that a function should be inlined by the compiler",
        "answer":
            "To prevent automatic type conversion in certain constructor calls"
      },
      {
        "question": "Which C++ standard introduced the 'range-based for loop'?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question": "In C++, what is the purpose of the 'this' pointer?",
        "option1": "To store the memory address of the object",
        "option2": "To access the static members of a class",
        "option3": "To point to the base class in a derived class",
        "option4": "To point to the current object",
        "answer": "To point to the current object"
      },
      {
        "question":
            "What is the correct way to define a destructor for a class in C++?",
        "option1": "class MyClass { destructor() {} };",
        "option2": "class MyClass { void destructor() {} };",
        "option3": "class MyClass { MyClass() {} ~MyClass() {} };",
        "option4": "class MyClass { function ~MyClass() {} };",
        "answer": "class MyClass { MyClass() {} ~MyClass() {} };"
      },
      {
        "question":
            "Which C++ standard introduced the 'nullptr' keyword for representing a null pointer?",
        "option1": "C++98",
        "option2": "C++03",
        "option3": "C++11",
        "option4": "C++14",
        "answer": "C++11"
      },
      {
        "question":
            "What is the correct way to define a member function outside the class definition in C++?",
        "option1": "void MyClass::function() {}",
        "option2": "void function() {}",
        "option3": "MyClass::function() {}",
        "option4": "function() {}",
        "answer": "void MyClass::function() {}"
      },
    ],
  ];
}
