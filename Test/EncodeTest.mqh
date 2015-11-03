#include "..\Include\Encode.mqh"
#include "..\..\Minitest\Include\Assert.mqh"

class EncodeTest {
  public:
    static void Run();
};

static void EncodeTest::Run() {
  const string SAFE_DECODED   = "ABCDEFGHIJKLMNOPQRSTUVXYZabcefghijklmnopqrstuvxyz0123456789-_.~";
  const string SAFE_ENCODED   = "ABCDEFGHIJKLMNOPQRSTUVXYZabcefghijklmnopqrstuvxyz0123456789-_.~";
  const string UNSAFE_DECODED = "!#%&/()=[]{}";
  const string UNSAFE_ENCODED = "%21%23%25%26%2F%28%29%3D%5B%5D%7B%7D";

  Assert::Equal(SAFE_ENCODED, UrlEncode(SAFE_DECODED), "UrlEncode() safe");
  Assert::Equal(UNSAFE_ENCODED, UrlEncode(UNSAFE_DECODED), "UrlEncode() unsafe");
};