import std.stdio;
import std.format;

void main() {
  writeln("Hello World");
  auto i = 25;
  writefln("Decimal value %d, binary value %b, hex value %x", i, i, i);
  int[] a = [1,3,5,7,10];
  writefln("Array: %s", a);
}