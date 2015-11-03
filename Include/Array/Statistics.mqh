#include "..\math\statistics.mqh"

template<typename T>
bool ArrayNormalize(T &array[], double floor=0, double ceil=1) {
  int size = ArraySize(array);
  if (size <= 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }

  T x_min = ArrayMinimumValue(array);
  T x_max = ArrayMaximumValue(array);

  for (int i=0; i<size; i++) {
    array[i] = MathNormalize(array[i], x_min, x_max, floor, ceil);
  }
  return(true);
};

template<typename T>
T ArraySum(const T &array[]) {
  int size = ArraySize(array);
  if (size <= 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }

  T sum = 0;
  for (int i=0; i<size; i++) {
    sum += array[i];
  }
  return sum;
};