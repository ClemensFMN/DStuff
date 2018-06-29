import std.array : assocArray;
import std.algorithm.iteration: each, group, splitter, sum;
import std.stdio;

void main() {
    string text = "a text containing some funny string text";

    int[string] words;
    text.splitter(" ")
        .each!(w => words[w]++);

    foreach (key, value; words)
        writefln("key: %s, value: %d",
                       key, value);
}