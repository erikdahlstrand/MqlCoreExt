#include "ArrayTest.mqh"
#include "ColorTest.mqh"
#include "EncodeTest.mqh"
#include "MathTest.mqh"

class CoreExtTest {
  public:
    CoreExtTest() { };
    ~CoreExtTest() { };
    
    static void RunAll();
};

static void CoreExtTest::RunAll() {
  Print("======= Running All Test =======");
  ArrayTest::Run();
  ColorTest::Run();
  EncodeTest::Run();
  MathTest::Run();
};