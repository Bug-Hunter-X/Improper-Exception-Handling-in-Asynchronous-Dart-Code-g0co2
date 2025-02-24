# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: improper exception handling.  The original `catch` block masks the exception, making debugging challenging. The solution improves exception handling for better clarity and maintainability. 

## Bug
The `bug.dart` file showcases a situation where a `rethrow` statement, while seemingly harmless, can hinder debugging.  

## Solution
The `bugSolution.dart` file offers a more robust solution. Instead of a generic `rethrow`, the code provides more context and uses a custom exception for better error reporting and handling.  This enhances debugging and allows for more specific error handling based on the type of exception. 