int FileToArray(const string file, uchar &data[]) {
  int file_handle = FileOpen(file, FILE_READ|FILE_BIN/*|FILE_ANSI*/);

	if (file_handle == INVALID_HANDLE) {
	  PrintFormat("Couldn't open the file: %s", file);
  } else {
  	ArrayResize(data, (int)FileSize(file_handle));
  	FileReadArray(file_handle, data);
  	FileClose(file_handle);
  }
  return ArraySize(data);
}