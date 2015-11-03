#include "Conversions.mqh"

// Alpha blending is the process of combining a translucent foreground color
// with a background color, thereby producing a new blended color.
color AlphaBlending(double alpha, color src, color dest) {
  int r1, g1, b1, r2, g2, b2, ar, ag, ab;
  ColorToRGB(src, r1, g1, b1);
  ColorToRGB(dest, r2, g2, b2);
  
  ar = uchar(alpha * double(r1 - r2) + r2);
  ag = uchar(alpha * double(g1 - g2) + g2);
  ab = uchar(alpha * double(b1 - b2) + b2);
  
  return color(ab | (ag << 8) | (ar << 16));
}