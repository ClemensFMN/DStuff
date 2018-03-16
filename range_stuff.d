import std.stdio : writeln;

struct FibonacciRange
{
    // States of the Fibonacci generator
    int a = 1, b = 1;

    // The fibonacci range never ends
    // according to the tour, it is enum, but bool makes more sense (in my opinion)
    bool empty = false;

    // Peak at the first element
    int front() const @property
    {
        return a;
    }

    // Remove the first element
    void popFront()
    {
        auto t = a;
        a = b;
        b = t + b;
    }
}

void main()
{
    FibonacciRange fib;

    import std.range : drop, generate, take;
    import std.algorithm.iteration : filter, sum;

    // Select the first 10 fibonacci numbers
    auto fib10 = fib.take(10);
    writeln("Fib 10: ", fib10);

    // Select the even subset
    auto fibEven = fib10.filter!(x => x % 2);
    writeln("FibEven : ", fibEven);

    // Sum of all elements
    writeln("Sum of first 10 Fibs: ", fib10.sum);

}