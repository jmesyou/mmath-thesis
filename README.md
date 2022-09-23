# Specializing Scala with Truffle 

Scala is a generic object-oriented programming language with higher-order abstractions. 
Programming abstractions in Scala exemplify reusability and extensibility in the context of type safety.
In particular, generic programming allows user-defined data structures to behave identically irrespective of the types of their values while remaining free of type errors.

The implementation of reusability in Scala comes at a cost; The standard implementation of Scala compiles to Java bytecode, where type erasure significantly reduces Scala program type information to create compatible Java bytecode.
Consequently, autoboxing, operations needed when using primitive values in a generic context, are unnecessarily introduced into the final program. 
The current state-of-the-art techniques for eliminating boxing and achieving optimal data representations at runtime, known as specialization, rely on static program analysis.
Such techniques must mitigate the problem of code duplication as static optimizations cannot use runtime information to best select which data structures to specialize.

We propose a new approach to the specialization of Scala programs.
Our approach integrates type information from a high-level source-like input language with the mechanisms of just-in-time compilation.
We propose an ad-hoc specialization mechanism using a whole program approach; Specializations of data structures are created based on concrete type arguments.
In our approach, specialized objects are compatible with non-specialized code.
We use Truffle, a framework that simplifies the implementation of interpreters and just-in-time compilers, to implement an experimental research prototype.

We demonstrate that our approach is viable and produces improvements in throughput for simplified implementations of real-world Scala programs.
While these programs are simple, it is still challenging for state-of-the-art approaches to specialize optimally.
We show that our approach can improve performance by an order of magnitude in the context of polymorphic data structures and methods that use bulk storage.
We compare the results of our approach to our interpreter without specialization and compiled Scala on GraalVM, a state-of-art Java Virtual Machine.

