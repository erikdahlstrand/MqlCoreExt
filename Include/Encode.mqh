// Returns the Base64-encoded version of +data+.
// This method complies with ``Base 64 Encoding with URL and Filename Safe
// Alphabet'' in RFC 4648.
// The alphabet uses '-' instead of '+' and '_' instead of '/'.
void Base64UrlEncode(uchar &characters[]) {
  int size = ArraySize(characters);

  for(int i=0; i<size; i++) {
    if (characters[i] == '+') characters[i] = '-';
    if (characters[i] == '/') characters[i] = '_';
  }
};

string Base64UrlEncode(string data) {
  uchar characters[];
  StringToCharArray(data, characters);
  Base64UrlEncode(characters);
  return CharArrayToString(characters);
};

string UrlEncode(string str) {
  uchar characters[];
  int length = StringToCharArray(str, characters);
  string encoded = "";
  for (int i=0; i<length-1; i++) { /* -1 to remove trailing terminal 0 */
    encoded += UrlEncode(characters[i]);
  }
  return encoded;
};

string UrlEncode(uchar character) {
  if ((character > 47 && character < 58) ||  /* 0-9 */
      (character > 64 && character < 91) ||  /* A-Z */
      (character > 96 && character < 123) || /* a-z*/
      (character == '-') || (character == '_') || (character == '.') || (character == '~'))
    return CharToString(character);
  else if (character == 32) /* space */
    return "+";
  else 
    return StringFormat("%%%X", character);
};