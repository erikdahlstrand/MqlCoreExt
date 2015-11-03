void ColorToRGB(const color clr, int &r, int &g, int &b) {
  r = (clr >> 16) & 0xFF;
  g = (clr >> 8) & 0xFF;
  b = clr & 0xFF;
};

color RGBToColor(const int r, const int g, const int b) {
  return color(b | (g << 8) | (r << 16));
};