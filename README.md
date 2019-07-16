# helloworld

A "Hello, World!" program generally is a computer program that outputs or displays the message "Hello, World!". Such a program is very simple in most programming languages, and is often used to illustrate the basic syntax of a programming language. It is often the first program written by people learning to code. It can also be used as a sanity test to make sure that a computer language is correctly installed, and that the operator understands how to use it.

## History

While small test programs have existed since the development of programmable computers, the tradition of using the phrase "Hello, World!" as a test message was influenced by an example program in the seminal 1978 book The C Programming Language.The example program in that book prints <code>"hello, world"</code>, and was inherited from a 1974 Bell Laboratories internal memorandum by Brian Kernighan, Programming in C: A Tutorial:

```
main( ) {
    printf("hello, world\n");
}
```

In the above example, the <code>main()</code> function defines where the program should start executing. The function body consists of a single statement, a call to the <code>printf</code> function, which stands for "print formatted". This function will cause the program output whatever is passed to it as the parameter, in this case the string <code>hello, world</code>, followed by a newline character.

The C language version was preceded by Kernighan's own 1972 A Tutorial Introduction to the Language B, where the first known version of the program is found in an example used to illustrate external variables:

```
main( ) {
    extern a, b, c;
    putchar(a); putchar(b); putchar(c); putchar('!*n');
}

a 'hell';
b 'o, w';
c 'orld';
```

The program also prints <code>hello, world!</code> on the terminal, including a newline character. The phrase is divided into multiple variables because in B, a character constant is limited to four ASCII characters. The previous example in the tutorial printed <code>hi!</code> on the terminal, and the phrase <code>hello, world!</code> was introduced as a slightly longer greeting that required several character constants for its expression.

The Jargon File claims that "Hello, World!" originated instead with BCPL (1967). This claim is supposedly supported by the archived notes of the inventors of BCPL, Brian Kernighan at Princeton and Martin Richards at Cambridge.

## Example

A standard-conforming "hello, world" program is:

```
# include <stdio.h>

int main(void)
{
    printf("hello, world\n");
}
```

The first line of the program contains a preprocessing directive, indicated by <code>#include</code>. This causes the compiler to replace that line with the entire text of the <code>stdio.h</code> standard header, which contains declarations for standard input and output functions such as <code>printf</code> and <code>scanf</code>. The angle brackets surrounding <code>stdio.h</code> indicate that <code>stdio.h</code> is located using a search strategy that prefers headers provided with the compiler to other headers having the same name, as opposed to double quotes which typically include local or project-specific header files.

The next line indicates that a function named <code>main</code> is being defined. The <code>main</code> function serves a special purpose in C programs; the run-time environment calls the <code>main</code> function to begin program execution. The type specifier int indicates that the value that is returned to the invoker (in this case the run-time environment) as a result of evaluating the <code>main</code> function, is an integer. The keyword <code>void</code> as a parameter list indicates that this function takes no arguments.

The opening curly brace indicates the beginning of the definition of the <code>main</code> function.

The next line calls (diverts execution to) a function named <code>printf</code>, which in this case is supplied from a system library. In this call, the <code>printf</code> function is passed (provided with) a single argument, the address of the first character in the string literal <code>"hello, world\n"</code>. The string literal is an unnamed array with elements of type <code>char</code>, set up automatically by the compiler with a final 0-valued character to mark the end of the array (<code>printf</code> needs to know this). The <code>\n</code> is an escape sequence that C translates to a newline character, which on output signifies the end of the current line. The return value of the <code>printf</code> function is of type <code>int</code>, but it is silently discarded since it is not used. (A more careful program might test the return value to determine whether or not the printf function succeeded.) The semicolon <code>;</code> terminates the statement.

The closing curly brace indicates the end of the code for the <code>main</code> function. According to the C99 specification and newer, the <code>main</code> function, unlike any other function, will implicitly return a value of <code>0</code> upon reaching the } that terminates the function. (Formerly an explicit <code>return 0;</code> statement was required.) This is interpreted by the run-time system as an exit code indicating successful execution.

## References

* ["Hello, World!" program](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program)
* ["Hello, World!" example](https://en.wikipedia.org/wiki/C_(programming_language)#%22Hello,_world%22_example)

## License

This project is licensed under the MIT License, see the [LICENSE](https://github.com/vredzhepov/helloworld/blob/master/LICENSE) file for details.
