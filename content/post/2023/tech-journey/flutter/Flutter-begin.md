---
title: "Flutter: Dart Programming Language"
date: 2023-07-26T14:07:01+05:00
draft: false
type: "post"
tags: ["blog" ,"new-tech", "Flutter"]
description: "Basic of Dart Programming Language"
showTableOfContents: true
url: /tech-journey/Flutter/dart-programming/
# image: "/images/2023/"
---

<link rel="stylesheet" href="/css/reference-content/reference-content.css">

-----------

I want to learn Flutter and make cool apps, but it was a while ago that I had to learn a new Programming language, and I am rusty to learn a new programming language, but I am eager to learn something new, so in this blog post, I will be learning the Dart Programming language, and I will be sharing my experience with you guys.

Before we begin, we need dark sdk on my system. So let's get started.

# Installing Dart SDK
To install the Dart SDK, it is easy. You can follow the guide on their website by [clicking here](https://dart.dev/get-dart).

I am using Windows 11, so I will install the Dart SDK on my system. To install the Dark SDK, you need a package manager called Chocolatey. To install Chocolatey, you need to run the following command in PowerShell as an administrator:

```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Once Choc is installed on your system, you can install the Dart SDK. To install it, the command is:
```ps 
 choco install dart-sdk
```
To learn more about dart-sdk you can check out the [website](https://dart.dev/)

# Check out Dart on Browser
If don't want to install Dart on your system then you can run dart in yout browser as well. Just [click here](https://dart.dev/#try-dart) to see the online compiler.

# Dart Programming Language: Basic Syntax
## Variables
Just like other programming languages Dart also have variables. To declare a variable in Dart you need to use the `var` keyword. For example:
```dart
var name = "Abdul Rafay";
```
The type of the name variable is inferred to be String, but you can change that type by specifying it. If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).

```dart
Object name = 'Bob';
```
Another option is to explicitly declare the type that would be inferred:
```dart
String name = 'Bob';
```

### Null Safety
The Dart language enforces sound null safety.

Null safety prevents an error that results from unintentional access of variables set to null. The error is called a null dereference error. A null dereference error occurs when you access a property or call a method on an expression that evaluates to null. An exception to this rule is when null supports the property or method, like toString() or hashCode. With null safety, the Dart compiler detects these potential errors at compile time.

**For example**, say you want to find the absolute value of an int variable i. If i is null, calling i.abs() causes a null dereference error. In other languages, trying this could lead to a runtime error, but Dart’s compiler prohibits these actions. Therefore, Dart apps can’t cause runtime errors.

### Default value
Uninitialized variables that have a nullable type have an initial value of null. Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects.

```dart
int? lineCount;
assert(lineCount == null);
```

### Late variables
The late modifier has two use cases:

- Declaring a non-nullable variable that’s initialized after its declaration.
- Lazily initializing a variable.

Often Dart’s control flow analysis can detect when a non-nullable variable is set to a non-null value before it’s used, but sometimes analysis fails. Two common cases are top-level variables and instance variables: Dart often can’t determine whether they’re set, so it doesn’t try.

If you’re sure that a variable is set before it’s used, but Dart disagrees, you can fix the error by marking the variable as late:

```dart
late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}
```

When you mark a variable as late but initialize it at its declaration, then the initializer runs the first time the variable is used. This lazy initialization is handy in a couple of cases:
- The variable might not be needed, and initializing it is costly.
- You’re initializing an instance variable, and its initializer needs access to this.

### Final & Const
You can set a variable’s value only once. Declaring a variable with the final modifier prevents you from accidentally overwriting it then final or constant is used just like another programming language. 

Here’s an example of creating and setting a final variable:
```dart
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
```

You can’t change the value of a final variable:
```dart
name = 'Alice'; // Error: a final variable can only be set once.
```

Use const for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const. Where you declare the variable, set the value to a compile-time constant such as a number or string literal, a const variable, or the result of an arithmetic operation on constant numbers:

```dart
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
```

## Operators:
Dart supports the operators shown in the following table. The table shows Dart’s operator associativity and operator precedence from highest to lowest, which are an approximation of Dart’s operator relationships. You can implement many of these operators as class members.

```dart
void main() {
  // Operator Table
  print("Operator Table in Dart:");
  print("----------------------------");
  print("Unary Postfix:\t\texpr++\texpr--\t()\t[]\t?[]\t.\t?.\t!");
  print("Unary Prefix:\t\t-expr\t!expr\t~expr\t++expr\t--expr\tawait expr");
  print("Multiplicative:\t*\t/\t%\t~/");
  print("Additive:\t\t+\t-");
  print("Shift:\t\t\t<<\t>>\t>>>");
  print("Bitwise AND:\t\t&");
  print("Bitwise XOR:\t\t^");
  print("Bitwise OR:\t\t|");
  print("Relational and Type Test: >=\t>\t<=\t<\tas\tis\tis!");
  print("Equality:\t\t==\t!=");
  print("Logical AND:\t\t&&");
  print("Logical OR:\t\t||");
  print("If Null:\t\t??");
  print("Conditional:\t\texpr1 ? expr2 : expr3");
  print("Cascade:\t\t..\t?..");
  print("Assignment:\t\t=\t*=\t/=   +=\t-=   &=   ^=   etc.");
}
```
You see the operators different programming language are the same as the one in Dart.

<style>
table {
      width: 100%;
      border-collapse: collapse;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.9);
      border: 2px solid white;
    }
    th, td {
      padding: 8px;
      text-align: center;
    }
    th {
      color: white;
    }
</style>

<table>
    <tr>
      <th>Description</th>
      <th>Operator</th>
      <th>Associativity</th>
    </tr>
    <tr>
      <td>Unary Postfix</td>
      <td>expr++<br>expr--<br>()<br>[]<br>?[]<br>.<br>?.<br>!</td>
      <td>None</td>
    </tr>
    <tr>
      <td>Unary Prefix</td>
      <td>-expr<br>!expr<br>~expr<br>++expr<br>--expr<br>await expr</td>
      <td>None</td>
    </tr>
    <tr>
      <td>Multiplicative</td>
      <td>*, / ,% ,~/ </td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Additive</td>
      <td>+ , -</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Shift</td>
      <td>&lt;&lt;, &gt;&gt;, &gt;&gt;&gt;,  </td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Bitwise AND</td>
      <td>&amp;</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Bitwise XOR</td>
      <td>^</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Bitwise OR</td>
      <td>|</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Relational and Type Test</td>
      <td>&gt;=, &gt;, &lt;=,&lt;,as,is, is! </td>
      <td>None</td>
    </tr>
    <tr>
      <td>Equality</td>
      <td>==, !=</td>
      <td>None</td>
    </tr>
    <tr>
      <td>Logical AND</td>
      <td>&amp;&amp;</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Logical OR</td>
      <td>||</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>If Null</td>
      <td>??</td>
      <td>Left</td>
    </tr>
    <tr>
      <td>Conditional</td>
      <td>expr1 ? expr2 : expr3</td>
      <td>Right</td>
    </tr>
    <tr>
      <td>Cascade</td>
      <td>.. , ?..</td>
      <td>Left</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Assignment</td>
      <td>=, *=, /=, +=,-=, &amp;=, ^= </td>
      <td>Right</td>
    </tr>
  </table>

## Comments
Dart supports single-line comments, multi-line comments, and documentation comments.

Single-line comments
A single-line comment begins with //. Everything between // and the end of line is ignored by the Dart compiler.
```dart
void main() {
  // TODO: refactor into an AbstractLlamaGreetingFactory?
  print('Welcome to my Llama farm!');
}
```

Multi-line comments
A multi-line comment begins with /* and ends with */. Everything between /* and */ is ignored by the Dart compiler (unless the comment is a documentation comment; see the next section). Multi-line comments can nest.
```dart
void main() {
  /*
   * This is a lot of work. Consider raising chickens.

  Llama larry = Llama();
  larry.feed();
  larry.exercise();
  larry.clean();
   */
}
```
# Conclusion
After Reading the documentation of Dart I can say that Dart is a very easy language to learn and I am excited to learn more about it. I will be writing more blogs on Dart and Flutter so stay tuned for that. plus the main concepts for programming is not changing not matter which programming language you are using. So if you know one programming language then you can learn any programming language.

With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.


# Supporting Materials
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Knowledge Nexus
<div class="cards-container">
  <a class="card" href="https://dart.dev/">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Dart Website</h3>
  </a>
  <a class="card" href="https://dart.dev/language">
    <img src="/images/content-icons/20944335.jpg" alt="Article 2">
    <h3 class="title">Dart Language</h3>
  </a>
  <a class="card" href="https://dartpad.dev/">
    <img src="/images/content-icons/2936024.jpg" alt="Article 3">
    <h3 class="title">Try Dart</h3>
  </a>
