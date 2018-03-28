import std.stdio;
import std.conv : to;
import std.json;
import requests;

void main() {
	writeln("Retrieving url...");
  auto content = getContent("http://httpbin.org/ip");
  writeln(content.toString());
  JSONValue j = parseJSON(content.toString());
  writeln(j);
  writeln(j["origin"]);
}
