#include "..\Include\Math.mqh"
#include "..\..\Minitest\Include\Assert.mqh"

class MathTest {
  public:
    static void Run();
};

static void MathTest::Run() {
  double x[15] = {30,31,33,34,35,34,28,34,33,34,36,35,32,31,32},
         y[35] = {225,181,94,170,5,42,165,241,145,70,8,115,213,77,165,108,161,185,129,165,7,184,33,191,51,123,182,154,160,85,137,182,62,110,164};
  double mx = MathAvg(x);
  double dx = MathVariance(x, mx, 0, WHOLE_ARRAY);
  double sd = MathStDev(x);
  double cv = MathCv(x);
  double  r = MathPercentRank(78, y);

  Assert::Equal(32.8, mx, "MathAvg");
  // INFO(StringFormat("TEST MathAvg(): %.02f is %.02f", 32.8, mx));
  // INFO(StringFormat("TEST MathVariance(): %.02f is %.02f", 4.60, dx));
  // INFO(StringFormat("TEST MathStDev(): %.02f is %.02f", 2.1447, sd));
  // INFO(StringFormat("TEST MathCv(): %.02f is %.02f", 0.07, cv));
  // INFO(StringFormat("TEST MathPercentRank(): %.03f is %.03f", 0.238, r));
};