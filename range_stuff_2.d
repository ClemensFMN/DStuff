import std.stdio : writeln;
import std.range;

class MyRange : InputRange!(int) {
  int begin, end;

  this(int a, int b) {
    begin = a;
    end = b;
  }

  bool empty() {
    return begin == end;
  }

  void popFront() {
    begin++;
  }

  int front() {
    return begin;
  }
}


void main() {
  MyRange mr = new MyRange(1,5);
  foreach(elmt ; mr) {
    writeln(elmt);
  }
}