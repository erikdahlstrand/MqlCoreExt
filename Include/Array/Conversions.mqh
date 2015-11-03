// Returns a string created by converting each element of the array to a string,
// separated by the given separator.
template<typename T>
string ArrayJoin(T &array[], string separator="") {
  int size = ArraySize(array);
  string result = size < 1 ? "" : string(array[0]);

  for (int i=1; i<size; i++) {
    result += separator;
    result += string(array[i]);
  }
  return result;
};

void ArrayNormalize(double &values[], const int digits) {
  int size = ArraySize(values);

  for (int i=0; i<size; i++) {
    NormalizeDouble(values[i], digits);
  }
}