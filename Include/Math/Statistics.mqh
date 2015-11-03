double MathAvg(const double &arr[], const int start=0, int count=WHOLE_ARRAY) {
  int size = ArraySize(arr);
  if (count == WHOLE_ARRAY) count = size;
  if (size <= 0 || start+count > size || count == 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }
  double sum = 0.0;
  for(int i=start; i<start+count; i++) sum += arr[i];
  return(sum / count);
};


double MathCv(double &x[]) {
  double mx = MathAvg(x);
  if(mx == 0) {
    Print(__FUNCTION__+": average mustn't be zero");
    return(false);
  }

  return MathStDev(x) / mx;
};


double MathStDev(double &x[], int start=0, int count=WHOLE_ARRAY) {
  double mx = MathAvg(x, start, count);
  double dx = MathVariance(x, mx, start, count);

  return MathSqrt(dx);
};


double MathVariance(double &arr[], double mx, int start=0, int count=WHOLE_ARRAY) {
  int size = ArraySize(arr);
  if (count == WHOLE_ARRAY) count = size;
  if (size <= 0 || start+count > size || count == 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }
  double sum = 0.0;
  for(int i=start; i<start+count; i++)
    sum += MathPow(arr[i] - mx, 2);
  return(sum / (count - 1));
};

double MathNormalize(double x, double x_min, double x_max, double floor=0, double ceil=1) {
  return(floor + (x - x_min) * (ceil - floor) / (x_max - x_min));
};

double MathPercentRank(const double value, const double &array[], const int start=0, int count=WHOLE_ARRAY) {
  int size = ArraySize(array);
  if (count == WHOLE_ARRAY) count = size;
  if (size <= 0 || start+count > size || count == 0) {
    Print(__FUNCTION__+": array size error");
    return(false);
  }
  int less_than = 0;
  for (int i=start; i<start+count; i++) {
    if (value > array[i]) less_than++;
  }
  return ((double)less_than / (count));
};