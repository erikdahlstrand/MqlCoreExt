#include "..\Include\Color.mqh"
#include "..\..\Minitest\Include\Assert.mqh"

class ColorTest {
  public:
    static void Run();
};

static void ColorTest::Run() {
  int red, green, blue;
  ColorToRGB(clrCrimson, red, green, blue);

  Assert::Equal(60, red, "Red ColorToRGB()");
  Assert::Equal(20, green, "ColorToRGB (green)");
  Assert::Equal(220, blue, "ColorToRGB (blue)");

  Assert::Equal(0x3C14DC, RGBToColor(red, green, blue), "RGBToColor");
  
  Assert::Equal(0x000000, AlphaBlending(1.0, clrBlack, clrWhite), "AlphaBlending()");
  Assert::Equal(0x7F7F7F, AlphaBlending(0.5, clrBlack, clrWhite), "AlphaBlending()");
  Assert::Equal(0xFFFFFF, AlphaBlending(0.0, clrBlack, clrWhite), "AlphaBlending()");
};