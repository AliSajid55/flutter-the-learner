class Dart {
static  List dart = [
    [
      {
        "img": "",
        "topic": "Codelabs of dart",
        "para": '''Codelabs:

The Dart codelabs provide a guided, hands-on coding experience—no download required!
General
Dart cheatsheet:
Use DartPad to learn or remind yourself of some of the most commonly used, yet unique features of the Dart language.
Iterable collections:
Use DartPad to learn or remind yourself of how to use lists, sets, and other iterable collections in Dart, with special attention to filtering and mapping values.
Asynchronous programming: futures, async, await:
Use DartPad to learn or remind yourself of how to write asynchronous code using futures and the async and await keywords.
Records and Patterns in Dart 3:
Discover Dart 3’s new records and patterns features. Learn how you can use them in a Flutter app to help you write more readable and maintainable Dart code.
Null safety:
Use DartPad to learn about Dart’s null-safe type system.
Flutter:
To learn about Flutter, try one of the Flutter codelabs.'''
      },
      {
        "img": "",
        "topic": "Dart cheatsheet codelab",
        "para":
            '''The Dart language is designed to be easy to learn for coders coming from other languages, but it has a few unique features. This codelab—which is based on a Dart language cheatsheet written by and for Google engineers—walks you through the most important of these language features.
The embedded editors in this codelab have partially completed code snippets. You can use these editors to test your knowledge by completing the code and clicking the Run button. If you need help, click the Hint button. To run the code formatter (dart format), click Format. The Reset button erases your work and restores the editor to its original state.
String interpolation
To put the value of an expression inside a string, use \${expression}. If the expression is an identifier, you can omit the {}.
Here are some examples of using string interpolation:
String	 	Result
'\${3 + 2}'	 	'5'
'\${"word".toUpperCase()}'	 	'WORD'
'\$myObject'	 	The value of myObject.toString()'''
      },
      {
        "img": "",
        "topic": "Getters and setters",
        "para":
            '''You can define getters and setters whenever you need more control over a property than a simple field allows.
For example, you can make sure a property’s value is valid:
class MyClass {
int _aProperty = 0;

int get aProperty => _aProperty;

set aProperty(int value) {
if (value >= 0) {
_aProperty = value;
}
}
}
You can also use a getter to define a computed property:
class MyClass {
final List<int> _values = [];

void addValue(int value) {
_values.add(value);
}

// A computed property.
int get count {
return _values.length;
}
}'''
      },
      {
        "img": "",
        "topic": "Parameters and Exceptions",
        "para": '''Optional positional parameters
Dart has two kinds of function parameters: positional and named. Positional parameters are the kind you’re likely familiar with:
int sumUp(int a, int b, int c) {
return a + b + c;
}
// ···
int total = sumUp(1, 2, 3);
With Dart, you can make these positional parameters optional by wrapping them in brackets:
int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
int sum = a;
if (b != null) sum += b;
if (c != null) sum += c;
if (d != null) sum += d;
if (e != null) sum += e;
return sum;
}
// ···
int total = sumUpToFive(1, 2);
int otherTotal = sumUpToFive(1, 2, 3, 4, 5);
Optional positional parameters are always last in a function’s parameter list. Their default value is null unless you provide another default value:
int sumUpToFive(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
// ···
}
// ···
int newTotal = sumUpToFive(1);
print(newTotal); // <-- prints 15
Named parameters
Using a curly brace syntax at the end of the parameter list, you can define parameters that have names.
Named parameters are optional unless they’re explicitly marked as required.
void printName(String firstName, String lastName, {String? middleName}) {
print('\$firstName \${middleName ?? ''} \$lastName');
}
// ···
printName('Dash', 'Dartisan');
printName('John', 'Smith', middleName: 'Who');
// Named arguments can be placed anywhere in the argument list
printName('John', middleName: 'Who', 'Smith');
As you might expect, the default value of a nullable named parameter is null, but you can provide a custom default value.
If the type of a parameter is non-nullable, then you must either provide a default value (as shown in the following code) or mark the parameter as required (as shown in the constructor section).
void printName(String firstName, String lastName, {String middleName = ''}) {
print('\$firstName \$middleName \$lastName');
}
A function can’t have both optional positional and named parameters.
Exceptions
Dart code can throw and catch exceptions. In contrast to Java, all of Dart’s exceptions are unchecked exceptions. Methods don’t declare which exceptions they might throw, and you aren’t required to catch any exceptions.
Dart provides Exception and Error types, but you’re allowed to throw any non-null object:
throw Exception('Something bad happened.');
throw 'Waaaaaaah!';
Use the try, on, and catch keywords when handling exceptions:
try {
breedMoreLlamas();
} on OutOfLlamasException {
// A specific exception
buyMoreLlamas();
} on Exception catch (e) {
// Anything else that is an exception
print('Unknown exception: \$e');
} catch (e) {
// No specified type, handles all
print('Something really unknown: \$e');
}
The try keyword works as it does in most other languages. Use the on keyword to filter for specific exceptions by type, and the catch keyword to get a reference to the exception object.
If you can’t completely handle the exception, use the rethrow keyword to propagate the exception:
try {
breedMoreLlamas();
} catch (e) {
print('I was just trying to breed llamas!');
rethrow;
}
To execute code whether or not an exception is thrown, use finally:
try {
breedMoreLlamas();
} catch (e) {
// ... handle exception ...
} finally {
// Always clean up, even if an exception is thrown.
cleanLlamaStalls();
}'''
      },
      {
        "img": "",
        "topic": "Constructors",
        "para": '''Using this in a constructor
Dart provides a handy shortcut for assigning values to properties in a constructor: use this.propertyName when declaring the constructor:
class MyColor {
int red;
int green;
int blue;

MyColor(this.red, this.green, this.blue);
}

final color = MyColor(80, 80, 128);
This technique works for named parameters, too. Property names become the names of the parameters:
class MyColor {
...

MyColor({required this.red, required this.green, required this.blue});
}

final color = MyColor(red: 80, green: 80, blue: 80);
In the preceding code, red, green, and blue are marked as required because these int values can’t be null. If you add default values, you can omit required:
MyColor([this.red = 0, this.green = 0, this.blue = 0]);
// or
MyColor({this.red = 0, this.green = 0, this.blue = 0});
Named constructors:
To allow classes to have multiple constructors, Dart supports named constructors:
class Point {
double x, y;

Point(this.x, this.y);

Point.origin()
    : x = 0,
y = 0;
}'''
      },
      {
        "img": "",
        "topic": "Iterable collections",
        "para":
            '''An Iterable is a collection of elements that can be accessed sequentially.
In Dart, an Iterable is an abstract class, meaning that you can’t instantiate it directly. However, you can create a new Iterable by creating a new List or Set.
Both List and Set are Iterable, so they have the same methods and properties as the Iterable class.
Iterable<int> iterable = [1, 2, 3];

You can instead read elements with elementAt(), which steps through the elements of the iterable until it reaches that position.
Iterable<int> iterable = [1, 2, 3];
int value = iterable.elementAt(1);
Checking conditions:
When working with Iterable, sometimes you need to verify that all the elements of a collection satisfy some condition.
You might be tempted to write a solution using a for-in loop like this one:
for (final item in items) {
if (item.length < 5) {
return false;
}
}
return true;
However, you can accomplish the same using the every() method:
return items.every((item) => item.length >= 5);'''
      },
      {
        "img": "",
        "topic": "Mapping",
        "para":
            '''Mapping Iterables with the method map() enables you to apply a function over each of the elements, replacing each element with a new one.
Iterable<int> output = numbers.map((number) => number * 10);
In this example, each element of the Iterable numbers is multiplied by 10.
You can also use map() to transform an element into a different object—for example, to convert all int to String, as you can see in the following example:
Iterable<String> output = numbers.map((number) => number.toString());'''
      },
      {
        "img": "",
        "topic": "Handling errors",
        "para": '''To handle errors in an async function, use try-catch:
try {
print('Awaiting user order...');
var order = await fetchUserOrder();
} catch (err) {
print('Caught error: \$err');
}
Within an async function, you can write try-catch clauses the same way you would in synchronous code.
Example: async and await with try-catch
Future<void> printOrderMessage() async {
try {
print('Awaiting user order...');
var order = await fetchUserOrder();
print(order);
} catch (err) {
print('Caught error: \$err');
}
}
Future<String> fetchUserOrder() {
// Imagine that this function is more complex.
var str = Future.delayed(
const Duration(seconds: 4),
() => throw 'Cannot locate user order');
return str;
}
void main() async {
await printOrderMessage();
}'''
      },
      {
        "img": "",
        "topic": "7.	Variables",
        "para": '''Variable
Here’s an example of creating a variable and initializing it:
var name = 'Bob';
Variables store references. The variable called name contains a reference to a String object with a value of “Bob”.
The type of the name variable is inferred to be String, but you can change that type by specifying it. If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).
Object name = 'Bob';
Another option is to explicitly declare the type that would be inferred:
String name = 'Bob';'''
      },
      {
        "img": "",
        "topic": "Comments",
        "para": '''Single-line comments:
A single-line comment begins with //. Everything between // and the end of line is ignored by the Dart compiler.
void main() {
// TODO: refactor into an AbstractLlamaGreetingFactory?
print('Welcome to my Llama farm!');
}
Multi-line comments:
A multi-line comment begins with /* and ends with */. Everything between /* and */ is ignored by the Dart compiler (unless the comment is a documentation comment; see the next section). Multi-line comments can nest.
void main() {
/*
   * This is a lot of work. Consider raising chickens.

  Llama larry = Llama();
  larry.feed();
  larry.exercise();
  larry.clean();
   */
}
Documentation comments:
Documentation comments are multi-line or single-line comments that begin with /// or /**. Using /// on consecutive lines has the same effect as a multi-line doc comment.
Inside a documentation comment, the analyzer ignores all text unless it is enclosed in brackets. Using brackets, you can refer to classes, methods, fields, top-level variables, functions, and parameters. The names in brackets are resolved in the lexical scope of the documented program element.
Here is an example of documentation comments with references to other classes and arguments:
/// A domesticated South American camelid (Lama glama).
///
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
///
/// Just like any other animal, llamas need to eat,
/// so don't forget to [feed] them some [Food].
class Llama {
String? name;

/// Feeds your llama [food].
///
/// The typical llama eats one bale of hay per week.
void feed(Food food) {
// ...
}

/// Exercises your llama with an [activity] for
/// [timeLimit] minutes.
void exercise(Activity activity, int timeLimit) {
// ...
}
}'''
      },
      {
        "img": "",
        "topic": "Operators",
        "para": '''Arithmetic operators:
assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // Result is a double
assert(5 ~/ 2 == 2); // Result is an int
assert(5 % 2 == 1); // Remainder

assert('5/2 = \${5 ~/ 2} r \${5 % 2}' == '5/2 = 2 r 1');

Operator	     Meaning
++var	var = var + 1 (expression value is var + 1)
var++	var = var + 1 (expression value is var)
--var	var = var - 1 (expression value is var - 1)
var--	var = var - 1 (expression value is var)
Equality and relational operators:
assert(2 == 2);
assert(2 != 3);
assert(3 > 2);
assert(2 < 3);
assert(3 >= 3);
assert(2 <= 3);
Logical operators:
You can invert or combine boolean expressions using the logical operators.
Operator	Meaning
!expr	inverts the following expression (changes false to true, and vice versa)
||	logical OR
&&	logical AND
Here’s an example of using the logical operators:
if (!done && (col == 0 || col == 3)) {
// ...Do something...
}'''
      },
      {
        "img": "",
        "topic": "9.	Metadata",
        "para":
            '''Use metadata to give additional information about your code. A metadata annotation begins with the character @, followed by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor.
Three annotations are available to all Dart code: @Deprecated, @deprecated, and @override. For examples of using @override, see Extending a class. Here’s an example of using the @Deprecated annotation:
class Television {
/// Use [turnOn] to turn the power on instead.
@Deprecated('Use turnOn instead')
void activate() {
turnOn();
}

/// Turns the TV's power on.
void turnOn() {...}
// ···
}
You can define your own metadata annotations. Here’s an example of defining a @Todo annotation that takes two arguments:
class Todo {
final String who;
final String what;

const Todo(this.who, this.what);
}
And here’s an example of using that @Todo annotation:
@Todo('Dash', 'Implement this function')
void doSomething() {
print('Do something');
}
Metadata can appear before a library, class, typedef, type parameter, constructor, factory, function, field, parameter, or variable declaration and before an import or export directive. You can retrieve metadata at runtime using reflection.
'''
      },
      {
        "img": "",
        "topic": "Libraries",
        "para": '''Using libraries:
Use import to specify how a namespace from one library is used in the scope of another library.
For example, Dart web apps generally use the dart:html library, which they can import like this:
import 'dart:html';
The only required argument to import is a URI specifying the library. For built-in libraries, the URI has the special dart: scheme. For other libraries, you can use a file system path or the package: scheme. The package: scheme specifies libraries provided by a package manager such as the pub tool. For example:
import 'package:test/test.dart';
Specifying a library prefix:
If you import two libraries that have conflicting identifiers, then you can specify a prefix for one or both libraries. For example, if library1 and library2 both have an Element class, then you might have code like this:
import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

// Uses Element from lib1.
Element element1 = Element();

// Uses Element from lib2.
lib2.Element element2 = lib2.Element();
Importing only part of a library:
If you want to use only part of a library, you can selectively import the library. For example:
// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;
The library directive:
To specify library-level doc comments or metadata annotations, attach them to a library declaration at the start of the file.
/// A really great test library.
@TestOn('browser')
library;
Implementing libraries:
See Create Packages for advice on how to implement a package, including:
•	How to organize library source code.
•	How to use the export directive.
•	When to use the part directive.
•	How to use conditional imports and exports to implement a library that supports multiple platforms.'''
      },
      {
        "img": "",
        "topic": "Loops",
        "para": '''For loops:
You can iterate with the standard for loop. For example:
var message = StringBuffer('Dart is fun');
for (var i = 0; i < 5; i++) {
message.write('!');
}
Closures inside of Dart’s for loops capture the value of the index. This avoids a common pitfall found in JavaScript. For example, consider:
var callbacks = [];
for (var i = 0; i < 2; i++) {
callbacks.add(() => print(i));
}

for (final c in callbacks) {
c();
}
The output is 0 and then 1, as expected. In contrast, the example would print 2 and then 2 in JavaScript.
Sometimes you might not need to know the current iteration counter when iterating over an Iterable type, like List or Set. In that case, use the for-in loop for cleaner code:
for (final candidate in candidates) {
candidate.interview();
}
To process the values obtained from the iterable, you can also use a pattern in a for-in loop:
for (final Candidate(:name, :yearsExperience) in candidates) {
print('\$name has \$yearsExperience of experience.');
}
Iterable classes also have a forEach() method as another option:
var collection = [1, 2, 3];
collection.forEach(print); // 1 2 3
While and do-while:
A while loop evaluates the condition before the loop:
while (!isDone()) {
doSomething();
}
A do-while loop evaluates the condition after the loop:
do {
printLine();
} while (!atEndOfPage());
'''
      },
      {
        "img": "",
        "topic": "Branches",
        "para": '''If:
Dart supports if statements with optional else clauses. The condition in parentheses after if must be an expression that evaluates to a boolean:
if (isRaining()) {
you.bringRainCoat();
} else if (isSnowing()) {
you.wearJacket();
} else {
car.putTopDown();
}
To learn how to use if in an expression context, check out Conditional expressions.
If-case:
Dart if statements support case clauses followed by a pattern:
if (pair case [int x, int y]) return Point(x, y);
If the pattern matches the value, then the branch executes with any variables the pattern defines in scope.
In the previous example, the list pattern [int x, int y] matches the value pair, so the branch return Point(x, y) executes with the variables that the pattern defined, x and y.
Otherwise, control flow progresses to the else branch to execute, if there is one:
if (pair case [int x, int y]) {
print('Was coordinate array \$x,\$y');
} else {
throw FormatException('Invalid coordinates.');
},'''
      },
      {
        "img": "",
        "topic": "Switch statements",
        "para":
            '''A switch statement evaluates a value expression against a series of cases. Each case clause is a pattern for the value to match against. You can use any kind of pattern for a case.
When the value matches a case’s pattern, the case body executes. Non-empty case clauses jump to the end of the switch after completion. They do not require a break statement. Other valid ways to end a non-empty case clause are a continue, throw, or return statement.
Use a default or wildcard _ clause to execute code when no case clause matches:
var command = 'OPEN';
switch (command) {
case 'CLOSED':
executeClosed();
case 'PENDING':
executePending();
case 'APPROVED':
executeApproved();
case 'DENIED':
executeDenied();
case 'OPEN':
executeOpen();
default:
executeUnknown();
}'''
      },
      {
        "img": "",
        "topic": "Error handling",
        "para": '''Exceptions:
Your Dart code can throw and catch exceptions. Exceptions are errors indicating that something unexpected happened. If the exception isn’t caught, the isolate that raised the exception is suspended, and typically the isolate and its program are terminated.
In contrast to Java, all of Dart’s exceptions are unchecked exceptions. Methods don’t declare which exceptions they might throw, and you aren’t required to catch any exceptions.
Dart provides Exception and Error types, as well as numerous predefined subtypes. You can, of course, define your own exceptions. However, Dart programs can throw any non-null object—not just Exception and Error objects—as an exception.
Throw:
Here’s an example of throwing, or raising, an exception:
throw FormatException('Expected at least 1 section');
You can also throw arbitrary objects:
throw 'Out of llamas!';
Because throwing an exception is an expression, you can throw exceptions in => statements, as well as anywhere else that allows expressions:
void distanceTo(Point other) => throw UnimplementedError();
Catch:
Catching, or capturing, an exception stops the exception from propagating (unless you rethrow the exception). Catching an exception gives you a chance to handle it:
try {
breedMoreLlamas();
} on OutOfLlamasException {
buyMoreLlamas();
}
To handle code that can throw more than one type of exception, you can specify multiple catch clauses. The first catch clause that matches the thrown object’s type handles the exception. If the catch clause does not specify a type, that clause can handle any type of thrown object:
try {
breedMoreLlamas();
} on OutOfLlamasException {
// A specific exception
buyMoreLlamas();
} on Exception catch (e) {
// Anything else that is an exception
print('Unknown exception: \$e');
} catch (e) {
// No specified type, handles all
print('Something really unknown: \$e');
}
Finally:
To ensure that some code runs whether or not an exception is thrown, use a finally clause. If no catch clause matches the exception, the exception is propagated after the finally clause runs:
try {
breedMoreLlamas();
} finally {
// Always clean up, even if an exception is thrown.
cleanLlamaStalls();
}
The finally clause runs after any matching catch clauses:
try {
breedMoreLlamas();
} catch (e) {
print('Error: \$e'); // Handle the exception first.
} finally {
cleanLlamaStalls(); // Then clean up.
}
Assert:
During development, use an assert statement— assert(<condition>, <optionalMessage>); —to disrupt normal execution if a boolean condition is false.
// Make sure the variable has a non-null value.
assert(text != null);

// Make sure the value is less than 100.
assert(number < 100);

// Make sure this is an https URL.
assert(urlString.startsWith('https'));
To attach a message to an assertion, add a string as the second argument to assert (optionally with a trailing comma):
assert(urlString.startsWith('https'),
'URL (\$urlString) should start with "https".');'''
      },
    ],
    [
      {
        "question": "Dart is an?",
        "option1": "open-source",
        "option2": "general-purpose",
        "option3": "programming language",
        "option4": "All of the above",
        "answer": "All of the above"
      },
      {
        "question": "Which company developed Dart?",
        "option1": "Google",
        "option2": "Apple",
        "option3": "Microsoft",
        "option4": "Amazon",
        "answer": "Google"
      },
      {
        "question": "What type of language is Dart?",
        "option1": "Compiled language",
        "option2": "Interpreted language",
        "option3": "Scripting language",
        "option4": "All of the above",
        "answer": "Compiled language"
      },
      {
        "question": "What is the primary use of Dart?",
        "option1": "Game development",
        "option2": "Web development",
        "option3": "AI and Machine Learning",
        "option4": "Robotics",
        "answer": "Web development"
      },
      {
        "question": "In which year was Dart first introduced?",
        "option1": "2005",
        "option2": "2011",
        "option3": "1998",
        "option4": "2016",
        "answer": "2011"
      },
      {
        "question":
            "Dart is used for building mobile applications with which framework?",
        "option1": "Flutter",
        "option2": "React Native",
        "option3": "Xamarin",
        "option4": "Ionic",
        "answer": "Flutter"
      },
      {
        "question": "What is the file extension for Dart source files?",
        "option1": ".dart",
        "option2": ".java",
        "option3": ".py",
        "option4": ".js",
        "answer": ".dart"
      },
      {
        "question": "Which type of inheritance does Dart support?",
        "option1": "Single inheritance",
        "option2": "Multiple inheritance",
        "option3": "Hybrid inheritance",
        "option4": "Dart doesn't support inheritance",
        "answer": "Single inheritance"
      },
      {
        "question":
            "What is the main purpose of the 'async' and 'await' keywords in Dart?",
        "option1": "To define a variable",
        "option2": "To handle exceptions",
        "option3": "To work with asynchronous code",
        "option4": "To create loops",
        "answer": "To work with asynchronous code"
      },
      {
        "question":
            "Which IDE (Integrated Development Environment) is commonly used for Dart development?",
        "option1": "Eclipse",
        "option2": "Visual Studio Code",
        "option3": "IntelliJ IDEA",
        "option4": "NetBeans",
        "answer": "Visual Studio Code"
      },
      {
        "question": "Dart is heavily inspired by which programming language?",
        "option1": "Java",
        "option2": "C++",
        "option3": "JavaScript",
        "option4": "Python",
        "answer": "JavaScript"
      },
      {
        "question": "Dart's syntax is similar to which language?",
        "option1": "Python",
        "option2": "C#",
        "option3": "Ruby",
        "option4": "Swift",
        "answer": "Python"
      },
      {
        "question":
            "Which keyword is used to declare a constant variable in Dart?",
        "option1": "final",
        "option2": "let",
        "option3": "const",
        "option4": "var",
        "answer": "const"
      },
      {
        "question": "Dart has built-in support for which type of reflection?",
        "option1": "Static reflection",
        "option2": "Dynamic reflection",
        "option3": "No reflection",
        "option4": "Compile-time reflection",
        "answer": "Dynamic reflection"
      },
      {
        "question": "In Dart, what does the 'async' keyword indicate?",
        "option1": "The function will run synchronously",
        "option2": "The function returns a Future",
        "option3": "The function is a constructor",
        "option4": "The function will run indefinitely",
        "answer": "The function returns a Future"
      },
      {
        "question":
            "Which symbol is used for the null-aware (conditional) operator in Dart?",
        "option1": "?",
        "option2": "&",
        "option3": "%",
        "option4": "\$",
        "answer": "?"
      },
      {
        "question":
            "Dart uses a Just-In-Time (JIT) compiler for which type of development?",
        "option1": "Web development",
        "option2": "Mobile app development",
        "option3": "Server-side development",
        "option4": "Desktop application development",
        "answer": "Web development"
      },
      {
        "question":
            "What is the purpose of the 'get' and 'set' keywords in Dart?",
        "option1": "To define getter and setter methods",
        "option2": "To define global variables",
        "option3": "To create loops",
        "option4": "To handle exceptions",
        "answer": "To define getter and setter methods"
      },
      {
        "question": "Dart supports which type of data typing?",
        "option1": "Strongly typed",
        "option2": "Weakly typed",
        "option3": "Dynamic typing",
        "option4": "None of the above",
        "answer": "Strongly typed"
      },
      {
        "question": "Which collection in Dart allows key-value pairs?",
        "option1": "Set",
        "option2": "List",
        "option3": "Map",
        "option4": "Tuple",
        "answer": "Map"
      },
      {
        "question": "In Dart, what is the role of the 'super' keyword?",
        "option1": "To call the parent class constructor",
        "option2": "To declare a static variable",
        "option3": "To define a constant",
        "option4": "To access a private method",
        "answer": "To call the parent class constructor"
      },
      {
        "question": "Dart's official website is hosted on which domain?",
        "option1": ".org",
        "option2": ".com",
        "option3": ".gov",
        "option4": ".io",
        "answer": ".org"
      },
      {
        "question": "Dart provides built-in support for which design pattern?",
        "option1": "Singleton",
        "option2": "Factory",
        "option3": "Observer",
        "option4": "Adapter",
        "answer": "Singleton"
      },
      {
        "question":
            "Which keyword is used to create an abstract class in Dart?",
        "option1": "abstract",
        "option2": "interface",
        "option3": "class",
        "option4": "extends",
        "answer": "abstract"
      },
      {
        "question": "What is the purpose of the 'assert' keyword in Dart?",
        "option1": "To stop the program execution",
        "option2": "To print debug messages",
        "option3": "To check for null values",
        "option4": "To test code during development",
        "answer": "To test code during development"
      },
      {
        "question": "Dart supports which type of exception handling mechanism?",
        "option1": "Try-Catch-Finally",
        "option2": "Try-Except-Finally",
        "option3": "Try-Catch-Else",
        "option4": "Try-Finally",
        "answer": "Try-Catch-Finally"
      },
      {
        "question":
            "Which Dart framework is used for building server-side applications?",
        "option1": "AngularDart",
        "option2": "ExpressDart",
        "option3": "NestDart",
        "option4": "Flutter",
        "answer": "NestDart"
      },
      {
        "question": "What is the main purpose of the 'with' keyword in Dart?",
        "option1": "To include a mixin in a class",
        "option2": "To import external libraries",
        "option3": "To create anonymous functions",
        "option4": "To define global constants",
        "answer": "To include a mixin in a class"
      },
      {
        "question": "Dart supports which type of looping structures?",
        "option1": "for",
        "option2": "while",
        "option3": "do-while",
        "option4": "All of the above",
        "answer": "All of the above"
      },
      {
        "question":
            "In Dart, what does the 'yield' keyword do in a generator function?",
        "option1": "Stops the generator function",
        "option2": "Resumes the generator function",
        "option3": "Suspends the generator function and yields a value",
        "option4": "Returns a Future",
        "answer": "Suspends the generator function and yields a value"
      },
    ],
  ];
}
