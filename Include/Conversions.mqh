// Converts a value of ENUM_TIMEFRAMES to an abbreviated string.
// Example:  PERIOD_H1 => "H1"
string PeriodToStringShort(ENUM_TIMEFRAMES timeframe=PERIOD_CURRENT) {
  if (timeframe == PERIOD_CURRENT) timeframe = (ENUM_TIMEFRAMES)Period();
  return StringSubstr(EnumToString(timeframe), 7); // Remove leading "PERIOD_"
};

// Converts a value of ENUM_TIMEFRAMES to a string.
// Example:  PERIOD_H1 => "1 hour"
string PeriodToString(ENUM_TIMEFRAMES timeframe=PERIOD_CURRENT) {
  switch (timeframe) {
    case PERIOD_CURRENT:
      return PeriodToString((ENUM_TIMEFRAMES)Period());
      break;
    case PERIOD_M1:
      return "1 minute";
      break;
    case PERIOD_M2:
      return "2 minutes";
      break;
    case PERIOD_M3:
      return "3 minutes";
      break;
    case PERIOD_M4:
      return "4 minutes";
      break;
    case PERIOD_M5:
      return "5 minutes";
      break;
    case PERIOD_M6:
      return "6 minutes";
      break;
    case PERIOD_M10:
      return "10 minutes";
      break;
    case PERIOD_M12:
      return "12 minutes";
      break;
    case PERIOD_M15:
      return "15 minutes";
      break;
    case PERIOD_M20:
      return "20 minutes";
      break;
    case PERIOD_M30:
      return "30 minutes";
      break;
    case PERIOD_H1:
      return "1 hour";
      break;
    case PERIOD_H2:
      return "2 hours";
      break;
    case PERIOD_H3:
      return "3 hours";
      break;
    case PERIOD_H4:
      return "4 hours";
      break;
    case PERIOD_H6:
      return "6 hours";
      break;
    case PERIOD_H8:
      return "8 hours";
      break;
    case PERIOD_H12:
      return "12 hours";
      break;
    case PERIOD_D1:
      return "1 day";
      break;
    case PERIOD_W1:
      return "1 week";
      break;
    case PERIOD_MN1:
      return "1 month";
      break;
    default:
      return "unknown";
      break;
  }
};

string ReasonToString(const int reason) {
  switch (reason) {
     case 0:
       return "Expert Advisor terminated its operation by calling the ExpertRemove() function";
       break;
     case 1:
       return "Program has been deleted from the chart";
       break;
     case 2:
       return "Program has been recompiled";
       break;
     case 3:
       return "Symbol or chart period has been changed";
       break;
     case 4:
       return "Chart has been closed";
       break;
     case 5:
       return "Input parameters have been changed by a user";
       break;
     case 6:
       return "Another account has been activated or reconnection to the trade server has occurred due to changes in the account settings";
       break;
     case 7:
       return "A new template has been applied";
       break;
     case 8:
       return "This value means that OnInit() handler has returned a nonzero value";
       break;
     case 9:
       return "Terminal has been closed";
       break;
     default:
       return "Unknown";
       break;
  }
};