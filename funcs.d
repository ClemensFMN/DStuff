import std.stdio;

int f1(int a, int  b) {
  ++a; // a is not delcared as const parameter & is allowed to be changed...
  return(a+b);
}

int f2(const int a, const int  b) {
  // ++a; -> this throws an error
  return(a+b);
}

void farray1(int[] numbers) {
  foreach(e; numbers) {
    writeln(e);
    e += e+1;
  }
}

void farray2(ref int[] numbers) {
  foreach(ref e; numbers) {
    writeln(e);
    e += e+1;
  }
}

void main() {
    writeln(f1(3,4));
    int res = f2(3,4);
    writeln(res);

    int[] numbers  = [1,2,3,4];
    farray1(numbers);
    foreach(e; numbers) {
      writeln(e);
    }

    farray2(numbers);
    foreach(e; numbers) {
      writeln(e);
  }


}
