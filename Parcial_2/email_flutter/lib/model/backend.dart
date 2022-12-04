import 'email.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 631,
      from: 'definition@programming.com',
      subject: 'definition programming',
      dateTime: DateTime(2022, 10, 04, 18, 43),
      body:
          'In computer science, functional programming is a programming paradigm where programs are constructed by applying and composing functions. It is a declarative programming paradigm in which function definitions are trees of expressions that each return a value, rather than a sequence of imperative statements which change the state of the program.',
    ),
    Email(
      id: 522,
      from: 'constructor@gmail.com',
      subject: 'constructo12',
      dateTime: DateTime(2020, 10, 07, 03, 05),
      body:
          'Many languages that apply this style attempt to minimize or eliminate side effects by describing what the program must accomplish in terms of the problem domain, rather than describe how to accomplish it as a sequence of the programming language primitives (the how being left up to the language\'s implementation). This is in contrast with imperative programming, which implements algorithms in explicit steps.',
    ),
    Email(
      id: 963,
      from: 'MarioaA02@hotmail.com',
      subject: 'Mario Alcivar',
      dateTime: DateTime(2022, 11, 29, 14, 50),
      body:
          'In computer science, imperative programming is a programming paradigm that uses statements that change a program\'s state. In much the same way that the imperative mood in natural languages expresses commands, an imperative program consists of commands for the computer to perform. Imperative programming focuses on describing how a program operates.',
    ),
    Email(
      id: 164,
      from: 'machine@code.com',
      subject: 'Machine gun',
      dateTime: DateTime(2020, 10, 11, 16, 14),
      body:
          'In computer programming, machine code, consisting of machine language instructions, is a low-level programming language used to directly control a computer\'s central processing unit (CPU). Each instruction causes the CPU to perform a very specific task, such as a load, a store, a jump, or an arithmetic logic unit (ALU) operation on one or more units of data in the CPU\'s registers or memory.',
    ),
    Email(
      id: 835,
      from: 'flutter@programminglanguage.com',
      subject: 'flutter programming language',
      dateTime: DateTime(2020, 10, 13, 20, 25),
      body:
          'lutter is a mobile app development platform created by Google. It allows developers to create web, desktop, and cross-platform apps that run on Android and iOS devices. Flutter uses a reactive programming language called Dart, making development faster and easier than traditional methods.',
    ),
    Email(
      id: 966,
      from: 'python@gmail.com',
      subject: 'python M',
      dateTime: DateTime(2020, 10, 14, 23, 59),
      body:
          'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together',
    ),
    Email(
      id: 237,
      from: 'nested@function.com',
      subject: 'Nested function',
      dateTime: DateTime(2020, 10, 16, 21, 09),
      body:
          'In computer programming, a nested function (or nested procedure or subroutine) is a function which is defined within another function, the enclosing function. Due to simple recursive scope rules, a nested function is itself invisible outside of its immediately enclosing function, but can see (access) all local objects (data, functions, types, etc.) of its immediately enclosing function as well as of any function(s) which, in turn, encloses that function. The nesting is theoretically possible to unlimited depth, although only a few levels are normally used in practical programs.',
    ),
    Email(
      id: 308,
      from: 'dynamic@database.com',
      subject: 'Dynamic database',
      dateTime: DateTime(2020, 10, 18, 18, 10),
      body:
          'A dynamic database management system (dynamic DBMS) is a database in which objects have a value-based relationship, which is specified at retrieval time. In a dynamic DBMS, the locations of logical file databases and relational data based are value-based.',
    ),
    Email(
      id: 759,
      from: 'common@lisp.com',
      subject: 'Common Lisp',
      dateTime: DateTime(2020, 10, 22, 21, 21),
      body:
          'The Common Lisp language was developed as a standardized and improved successor of Maclisp. By the early 1980s several groups were already at work on diverse successors to MacLisp: Lisp Machine Lisp (aka ZetaLisp), Spice Lisp, NIL and S-1 Lisp. Common Lisp sought to unify, standardise, and extend the features of these MacLisp dialects. Common Lisp is not an implementation, but rather a language specification.',
    ),
    Email(
      id: 810,
      from: 'object-oriented@programming.com',
      subject: 'Object-oriented programming',
      dateTime: DateTime(2022, 10, 26, 08, 54),
      body:
          'Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
