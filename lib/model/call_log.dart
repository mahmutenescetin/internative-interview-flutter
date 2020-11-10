enum CallType{
  unanswered,
  incoming,
  outgoing
}
enum CallStyle{
  phone,
  video
}
class CallLog {
  String avatarUrl;
  String callerName;
  CallType callType;
  CallStyle callStyle;
  DateTime dateTime;
  List<CallLog> otherGuest;
  int count;
  CallLog({this.avatarUrl, this.callerName, this.callType, this.callStyle,
      this.dateTime, this.otherGuest,this.count});
}

List<CallLog> data = [
  CallLog(
    avatarUrl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
    callerName: "Dan Wells",
    dateTime: DateTime.now().subtract(Duration(days: 1)),
    callStyle: CallStyle.phone,
    callType: CallType.incoming,
  ),
  CallLog(
    avatarUrl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
    callerName: "Dan Wells",
    dateTime: DateTime.now().subtract(Duration(days: 1)),
    callStyle: CallStyle.phone,
    callType: CallType.unanswered,
    count: 2
  ),
  CallLog(
      avatarUrl: "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
      callerName: "Beverly Grey",
      dateTime: DateTime.now().subtract(Duration(days: 1)),
      callStyle: CallStyle.video,
      callType: CallType.outgoing,
  ),
  CallLog(
    avatarUrl: "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
    callerName: "Beverly Grey",
    dateTime: DateTime.now().subtract(Duration(days: 1,seconds: 50)),
    callStyle: CallStyle.video,
    callType: CallType.outgoing,
  ),
  CallLog(
    avatarUrl: "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
    callerName: "Beverly Grey",
    dateTime: DateTime.now().subtract(Duration(days: 1,seconds: 50)),
    callStyle: CallStyle.phone,
    callType: CallType.outgoing,
    count: 3
  ),
  CallLog(
      avatarUrl: "https://images.pexels.com/photos/5792901/pexels-photo-5792901.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
      callerName: "Terry Dean",
      dateTime: DateTime.now().subtract(Duration(days: 21,seconds: 50)),
      callStyle: CallStyle.phone,
      callType: CallType.incoming,
      count: 3,
    otherGuest: [
      CallLog(),
      CallLog(),
      CallLog(),
    ]
  ),
  CallLog(
      avatarUrl: "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
      callerName: "Emma Wodokin",
      dateTime: DateTime.now().subtract(Duration(days: 55,seconds: 50)),
      callStyle: CallStyle.phone,
      callType: CallType.incoming,
      count: 3
  ),
  CallLog(
    avatarUrl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=320&w=320",
    callerName: "Dan Wells",
    dateTime: DateTime.now().subtract(Duration(days: 22)),
    callStyle: CallStyle.phone,
    callType: CallType.incoming,
  ),
  ];