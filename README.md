# Project Name

This project contains custom implementations and tests for various data structures and algorithms in Ruby. The test files include unit tests for classes like `MyArray` and `LinkedList`.

## Prerequisites

- Ruby (version 2.5.0 or above recommended)
- Minitest gem for running the tests
- Ensure that you have all the necessary dependencies installed in your environment.

You can install Minitest by running:
```bash
gem install minitest
```

## Running Tests

To run the test suite for specific files, use the following commands:

### Test MyArray Class
```bash
ruby -Ilib:test test/my_array_test.rb
```

This command runs the unit tests for the `MyArray` class, which contains custom implementations for array-like behavior.

### Test LinkedList Class
```bash
ruby -Ilib:test test/linked_list_test.rb
```

This command runs the unit tests for the `LinkedList` class, which contains custom linked list functionality.

## Directory Structure

- `lib/` - Contains the implementation of custom classes (e.g., `MyArray`, `LinkedList`).
- `test/` - Contains the test files for each class. Tests are written using the Minitest framework.

## Custom Enumerable Module

This project also includes a custom implementation of the Enumerable module. The `MyArray` and `LinkedList` classes are tested with methods like `map`, `reduce`, `select`, and `find`.

## How to Contribute

Feel free to open an issue or a pull request if you encounter bugs or have suggestions for improvements.

## License

This project is licensed under the MIT License.
```

### Explanation of Key Sections:
- **Prerequisites**: Informs users about the Ruby version and Minitest gem, which are essential for running the tests.
- **Running Tests**: Provides the commands to run the individual test files.
- **Directory Structure**: Describes where the main implementation and test files are located.
- **Custom Enumerable Module**: Mentions the inclusion of custom Enumerable methods and their importance.
