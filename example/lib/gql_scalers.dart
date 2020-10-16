DateTime $DateTimeFromJson(String json) {
  if (json == null) return null;
  try {
    return DateTime.parse(json);
  } catch (e, stk) {
    print(e);
    print(stk);
    return null;
  }
}

String $DateTimeToJson(DateTime dateTime) {
  if (dateTime == null) return null;
  try {
    return dateTime.toString();
  } catch (e, stk) {
    print(e);
    print(stk);
    return null;
  }
}
