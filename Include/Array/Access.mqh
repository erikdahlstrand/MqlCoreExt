// Returns the element in array with the maximum value.
template<typename T>
T ArrayMax(const T &array[], int start=0, int count=WHOLE_ARRAY) {
  return array[ArrayMaximum(array, start, count)];
};

// Returns the element in array with the minimum value.
template<typename T>
T ArrayMin(const T &array[], int start=0, int count=WHOLE_ARRAY) {
  return array[ArrayMinimum(array, start, count)];
};

// Returns two values which contains the minimum and the maximum value in the array.
template<typename T>
bool ArrayMinMax(const T &array[], T &min, T &max, int start=0, int count=WHOLE_ARRAY) {
  int size = ArraySize(array);

  if (count == WHOLE_ARRAY) count = size;

  if (size <= 0 || start+count > size || count == 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }

  min =  DBL_MAX;
  max = -DBL_MAX;

  for (int i=start; i<start+count; i++) {
    if (array[i] < min) min = array[i];
    if (array[i] > max) max = array[i];
  }
  return(true);
};