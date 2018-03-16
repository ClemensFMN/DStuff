import std.stdio;
import std.algorithm;

float myavg(int[] data) {
   double total = 0.0;
   foreach(e; data) {
      total += e;
      }
   double avg = total / data.length;
   return(avg);
}


void main() {
   writeln("Hello World");

   int[] data = [1,3,5,6];
   foreach(ind, e;data) {
      writeln(ind, "...", e);
   }

   foreach(i;0..2) {
      writeln(i);
   }

   writeln(myavg(data));

   // somehow this does not work
   auto res1 = [1,2,3,4,5].map!(x=>2*x);
   writeln(res1);

   auto res2 = [1,2,3,4,5].filter!(x=>x<3);
   writeln(res2);
}
