#include "..\Include\Array.mqh"
#include "..\..\Minitest\Include\Assert.mqh"

class ArrayTest {
  public:
    static void Run();
};

static void ArrayTest::Run() {
  string x[1] = { "A" };
  string y[4] = { "A", "B", "C", "D" };

  string stringx = ArrayJoin(x, ", ");
  string stringy = ArrayJoin(y, ", ");

  Assert::Equal("A", stringx, "ArrayJoin()");
  Assert::Equal("A, B, C, D", stringy, "ArrayJoin()");
};