import std.stdio;

struct myStruct {
  int a,b;

  int length() {
    return(this.a + this.b);
  };

  myStruct scale(int scale) {
    auto res = myStruct(this.a*scale, this.b*scale);
    return(res);
  };

}

void main() {
  myStruct ms = myStruct(3,4);
  writeln(ms.a);
  writeln(ms);
  writeln(ms.length());
  writeln(ms.scale(2));
}
