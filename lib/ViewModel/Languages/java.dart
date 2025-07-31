class Java {
  static List java = [
    [
      {
        "img": "",
        "topic": "what is java",
        "para":
            '''What is Java?Java is a popular programming language, created in 1995.It is owned by Oracle, and more than 3 billion devices run Java.It is used for:Mobile applications (specially Android apps) Desktop applications Web applications Web servers and application servers Games Database connection And much, much more!  

          Why Use Java?
          Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)
          It is one of the most popular programming language in the world
          It has a large demand in the current job market
          It is easy to learn and simple to use
          It is open-source and free
          It is secure, fast and powerful
          It has a huge community support (tens of millions of developers)
          Java is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs
          As Java is close to C++ and C#, it makes it easy for programmers to switch to Java or vice versa'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/java-program-structure.png?alt=media&token=10fe977f-2006-4793-b7cd-886705412ffe",
        "topic": "java syntax",
        "para":
            '''In the previous chapter, we created a Java file called Main.java, and we used the following code to print "Hello World" to the screen'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/data%20types.jpeg?alt=media&token=581e000f-3e3c-41f4-9ba1-9f4159eae82e",
        "topic": "Data Types and Variables",
        "para":
            '''In Java, data types are used to define the type of data that can be stored in variables. Java has two main categories of data types: primitive data types and reference data types. Primitive data types include int, double, boolean, char, etc., and they store simple values. Reference data types include objects, arrays, and user-defined types that refer to objects.

Variables serve as containers to store values of specific data types.
 Before using a variable, it must be declared with its data type. 
 Variables can be assigned new values throughout the program's execution, allowing dynamic manipulation of data.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/control-flow.png?alt=media&token=1ab01356-7260-45a6-80cc-3913f682552d",
        "topic": "Control Flow Statements",
        "para":
            '''Control flow statements in Java determine the order of execution of instructions in a program. These statements enable decision-making and looping in the code. The key control flow statements are:

if-else: Used for conditional branching. The program executes certain code blocks based on the evaluation of a condition. If the condition is true, the code within the "if" block is executed; otherwise, the code within the "else" block (if provided) is executed.

switch: Allows multi-way branching based on the value of an expression. It provides a clean way to handle multiple cases based on the value of a variable.

for loop: Used for iterative execution of a block of code a fixed number of times. It is often used when the number of iterations is known beforehand.

while loop: Used for iterative execution of a block of code as long as a condition is true. It is typically used when the number of iterations is not known beforehand.

do-while loop: Similar to the while loop, but the code block executes at least once before the condition is checked.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/OOP.png?alt=media&token=05085515-9b73-4d3e-8184-ef246ffe505e",
        "topic": "Object-Oriented Programming (OOP) ",
        "para":
            '''Java is a fully object-oriented programming language, which means it follows the principles of OOP. OOP is a programming paradigm based on the concept of "objects" that encapsulate data and behavior. The four main principles of OOP are:

Encapsulation: The bundling of data (attributes) and methods (behavior) that operate on the data into a single unit, i.e., an object. Encapsulation ensures that the internal workings of an object are hidden from the outside world, promoting data security and integrity.

Inheritance: The ability of a class to inherit properties and behaviors from another class, establishing a parent-child relationship. Inheritance allows for code reuse and the creation of hierarchical class structures.

Polymorphism: The ability of objects of different classes to be treated as objects of a common superclass. This allows different classes to implement the same methods in different ways, enabling dynamic method binding and flexibility in method invocation.

Abstraction: The process of simplifying complex reality by modeling classes to represent real-world entities and their interactions. Abstraction allows developers to focus on essential attributes and behaviors of objects, hiding unnecessary details.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/methods.png?alt=media&token=bc9f9b57-bd87-4ad2-9ae8-eef89fccc52b",
        "topic": "Methods ",
        "para":
            '''Methods in Java are blocks of code within a class that perform specific tasks. They encapsulate reusable code, promote modularity, and make code maintenance easier. Methods have a return type (or void if they don't return anything), a name, and zero or more parameters.

Method declaration includes the access modifier (public, private, protected, or package-private), followed by the return type, method name, and parameter list. The method body contains the actual implementation of the method.

Method overloading allows a class to have multiple methods with the same name but different parameter lists, while method overriding is used to provide a different implementation of a method in a subclass.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/print-array-in-java.png?alt=media&token=ca7f1a47-2d0c-4161-8709-c66bad3b958d",
        "topic": "Arrays and Collections",
        "para":
            '''Arrays and collections are used to store multiple elements in Java. Arrays are used to store a fixed number of elements of the same data type, while collections can dynamically grow and shrink in size. Java's Collections Framework provides various classes and interfaces to work with collections efficiently.

In Java, arrays are indexed from 0 to (length-1), and elements can be accessed using their index. However, arrays have a fixed size, and if the size needs to be changed dynamically, collections are preferred.

The Collections Framework includes interfaces like List (ordered collection), Set (unordered, unique elements), and Map (key-value pairs). The most commonly used classes are ArrayList, LinkedList, HashSet, and HashMap.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/exception.png?alt=media&token=cdf8a9bd-2e37-4183-9540-744335610e59",
        "topic": "Exception Handling",
        "para":
            '''Exception handling in Java is essential for managing unexpected runtime errors that can occur during program execution. Java provides a robust mechanism to handle exceptions, ensuring that the program continues to run gracefully, even if exceptions occur.

Exceptions are objects that represent unusual conditions in the program. When an exceptional event occurs, an exception is thrown, causing the normal flow of the program to halt. Exception handling is done using try, catch, finally, and throw blocks.

The try block encloses the code that might throw an exception. If an exception is thrown, it is caught by the appropriate catch block based on the type of exception. The finally block, if provided, is executed regardless of whether an exception occurred or not.

Custom exceptions can be created by extending the Exception class or one of its subclasses, allowing developers to handle specific exceptional scenarios in their applications.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/filehandling.png?alt=media&token=5b054055-d99a-4ff8-b858-fb8d3b1d928b",
        "topic": "File Handling ",
        "para":
            '''File handling is crucial for reading and writing data to files in a Java program. It enables applications to store and retrieve data from the file system. Java provides various classes in the java.io package for file handling operations.

To read data from a file, FileReader and BufferedReader are commonly used. To write data to a file, FileWriter and BufferedWriter are used. File handling operations should be enclosed in try-catch blocks to handle potential exceptions that may occur during file access.

File handling is commonly used for reading configuration files, handling logs, reading user data, and more. It is an essential aspect of many Java applications.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/What-is-multithreading-in-java.png?alt=media&token=a8c001b1-bfed-4842-934f-2967720ac5a2",
        "topic": "Multithreading",
        "para":
            '''Multithreading in Java allows a program to execute multiple threads simultaneously, making effective use of system resources and enhancing performance. Threads are lightweight subprocesses within a process, and they execute independently and concurrently.

Java provides built-in support for multithreading through the Thread class and Runnable interface. Threads can be created by extending the Thread class or implementing the Runnable interface and overriding the run() method.

Care must be taken when working with multithreading to avoid issues such as race conditions and deadlocks. Synchronization mechanisms like synchronized blocks and locks help in managing access to shared resources and avoiding concurrent conflicts.

Multithreading is commonly used in applications where multiple tasks can be performed concurrently, such as web servers, GUI applications, and real-time simulations.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/input.jpeg?alt=media&token=54c4ff7a-44a9-46f7-8770-129ad20e77b7",
        "topic": "Input and Output (I/O) Streams",
        "para":
            '''Input and Output (I/O) streams in Java are used for reading data from and writing data to various sources, such as files, network connections, and standard input/output (stdin/stdout).

Java provides two types of I/O streams: byte streams and character streams. Byte streams are used for handling binary data, while character streams are used for handling textual data.

The java.io package includes classes like FileInputStream and FileOutputStream for byte streams and FileReader and FileWriter for character streams. Additionally, there are buffered streams (e.g., BufferedInputStream, BufferedWriter) that improve I/O performance by reducing the number of actual read and write operations.

Properly managing I/O streams is crucial for efficient data handling and preventing resource leaks in Java applications.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Serilization%20and%20DeSerialization%20in%20Java%20with%20example.png?alt=media&token=72810fe4-9ffe-4d3a-bdd0-f4a5457bbc7e",
        "topic": "Serialization and Deserialization",
        "para":
            '''Serialization is the process of converting Java objects into a byte stream, allowing them to be saved to a file or transmitted over a network. Deserialization is the reverse process, where the byte stream is converted back into Java objects.

The java.io.Serializable interface is used to indicate that a class can be serialized. By default, all of its non-static and non-transient data members are serialized. However, developers can control the serialization process by implementing custom serialization using special methods like writeObject() and readObject().

Serialization is commonly used in distributed systems, where objects need to be sent across the network or stored persistently. It allows objects to be easily transmitted and reconstructed without losing their state.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/lambda.png?alt=media&token=6ee6fe49-665b-4284-a77d-246f094a68d6",
        "topic": "Lambda Expressions",
        "para":
            '''Lambda expressions, introduced in Java 8, are a concise and powerful way to implement functional interfaces. A functional interface is an interface with a single abstract method. Lambda expressions provide a way to pass behavior as an argument to a method or constructor, essentially treating code as data.

Lambda expressions reduce boilerplate code when using functional interfaces, making the code more readable and maintainable. They often replace the need to create anonymous inner classes when working with interfaces like Runnable, ActionListener, and Comparator.

The syntax of a lambda expression consists of parameters (if any), the arrow token ->, and the body of the lambda (expression or block). The lambda expression's body represents the implementation of the single abstract method of the functional interface.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/annotation.png?alt=media&token=0830a224-fc41-45d5-994e-9a580b79643c",
        "topic": "Annotations",
        "para":
            '''Annotations are a form of metadata added to Java code that can be read by tools and frameworks at compile-time or runtime. They provide additional information about classes, methods, fields, and other program elements.

Java annotations are denoted with an @ symbol, followed by the annotation name. Some built-in annotations in Java include @Override, @Deprecated, and @SuppressWarnings.

Annotations are widely used in frameworks like Spring, Hibernate, and JUnit, where they play a crucial role in configuring the behavior of applications and enhancing code readability.

Custom annotations can also be created to suit specific application requirements, making annotations a powerful feature for extending the functionality of Java applications.''',
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/collection.png?alt=media&token=ee39fadb-d9af-435e-8877-f17f92b3baf1",
        "topic": "Java Collections Framework ",
        "para":
            '''The Java Collections Framework provides a set of classes and interfaces to handle collections of objects efficiently. It is designed to abstract away the complexity of data structures and algorithms for managing groups of elements.

The core interfaces of the Java Collections Framework include List, Set, Queue, and Map. These interfaces have various implementations, such as ArrayList, LinkedList, HashSet, PriorityQueue, and HashMap.

Collections in the framework support common operations like adding, removing, searching, and iterating over elements. They also provide algorithms for sorting, filtering, and transforming collections.

The Collections Framework is extensively used in Java development for data manipulation, data storage, and solving algorithmic problems.

Mastering these 15 important Java language topics will provide you with a strong foundation to write efficient, maintainable, and reliable Java applications. Whether you're building web applications, mobile apps, or enterprise solutions, a thorough understanding of these concepts is vital for success in Java programming.''',
      },
    ],
    [
      {
        "question": "What is Java primarily known for?",
        "option1": "Being a scripting language",
        "option2": "Being an operating system",
        "option3": "Being a low-level programming language",
        "option4": "Being platform-independent",
        "answer": "Being platform-independent"
      },
      {
        "question": "What is the syntax to declare a variable in Java?",
        "option1": " int x;",
        "option2": "x = 10;",
        "option3": "variable x;",
        "option4": "None of the above",
        "answer": "None of the above"
      },
      {
        "question": "What is the entry point method in a Java program?",
        "option1": "main",
        "option2": "start",
        "option3": "run",
        "option4": "begin ",
        "answer": "main "
      },
      {
        "question":
            "Which access modifier provides the widest visibility in Java?",
        "option1": "private",
        "option2": "protected",
        "option3": "default",
        "option4": "public",
        "answer": "public"
      },
      {
        "question": "Which keyword is used to inherit a class in Java?",
        "option1": "implements",
        "option2": " extends",
        "option3": "inherits",
        "option4": "derives",
        "answer": " extends"
      },
      {
        "question": "What is a package in Java?",
        "option1": "A collection of classes and interfaces",
        "option2": " A folder that contains only interfaces",
        "option3": "A folder that contains only classes",
        "option4": "A namespace that organizes classes and interfaces",
        "answer": "A namespace that organizes classes and interfaces"
      },
      {
        "question":
            "Which keyword is used to explicitly throw an exception in Java?",
        "option1": "catch",
        "option2": "throw",
        "option3": "throws",
        "option4": "try",
        "answer": "throw"
      },
      {
        "question": "What does the 'static' keyword mean in Java?",
        "option1": "It declares a constant variable.",
        "option2":
            " It indicates that a variable or method belongs to the class, not the instance. ",
        "option3": "It restricts access to the class members.",
        "option4": "It creates a new instance of the class.",
        "answer":
            " It indicates that a variable or method belongs to the class, not the instance. "
      },
      {
        "question":
            "Which data type should be used to store a whole number in Java?",
        "option1": " float",
        "option2": "int",
        "option3": " double",
        "option4": "long",
        "answer": "int"
      },
      {
        "question":
            "What is the purpose of the finally block in Java exception handling?",
        "option1": "It is executed when an exception is caught.",
        "option2": " It is executed before the try block.",
        "option3": " It is executed before the catch block.",
        "option4": "It is executed only if there is no exception.",
        "answer": "It is executed when an exception is caught."
      },
      {
        "question": "What is the purpose of the break statement in Java?",
        "option1": " It terminates the program.",
        "option2": "It skips the current iteration of a loop.",
        "option3": "It jumps to a specified label.",
        "option4": " It throws an exception.",
        "answer": "It skips the current iteration of a loop."
      },
      {
        "question":
            "Which class is the superclass of all other classes in Java?",
        "option1": "System",
        "option2": "object",
        "option3": "class",
        "option4": "super",
        "answer": "object"
      },
      {
        "question":
            "Which method is called automatically when an object is created in Java?",
        "option1": "create()",
        "option2": "new()",
        "option3": " start()",
        "option4": "constructor",
        "answer": "constructor"
      },
      {
        "question": "What is the purpose of the StringBuilder class in Java?",
        "option1": "To build graphical user interfaces.",
        "option2": " To create threads for parallel processing.",
        "option3": "To create and manipulate strings efficiently. ",
        "option4": "To handle exceptions.",
        "answer": "To create and manipulate strings efficiently. "
      },
      {
        "question": "What is the default value of a boolean variable in Java?",
        "option1": "false",
        "option2": "0",
        "option3": "1",
        "option4": "true",
        "answer": "false"
      },
      {
        "question": "Which operator is used to create an object in Java?",
        "option1": "new",
        "option2": "*",
        "option3": "&",
        "option4": " ->",
        "answer": "new"
      },
      {
        "question": "What is the result of the expression 10 % 3 in Java?",
        "option1": "1",
        "option2": "3",
        "option3": "0",
        "option4": "10",
        "answer": "1"
      },
      {
        "question": "What is the purpose of the continue statement in Java?",
        "option1": "It terminates the loop.",
        "option2":
            "It skips the remaining code in the loop and moves to the next iteration.",
        "option3": "It jumps to a specified label.",
        "option4": "It starts the loop again from the beginning.",
        "answer":
            "It skips the remaining code in the loop and moves to the next iteration."
      },
      {
        "question":
            "Which method is used to read data from the standard input in Java?",
        "option1": " readLine()",
        "option2": "read()",
        "option3": " input()",
        "option4": " nextLine() ",
        "answer": " nextLine() "
      },
    ],
  ];
}
