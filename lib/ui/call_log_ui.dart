import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview_app/model/call_log.dart';

class CallLogUI extends StatefulWidget {
  final List<CallLog> callLogs;

  CallLogUI(this.callLogs);

  @override
  _CallLogUIState createState() => _CallLogUIState();
}

class _CallLogUIState extends State<CallLogUI> {
  List<CallLog> callLogs;
  var timeFormat = DateFormat.jm();
  var dateFormat = DateFormat.MMMMd('en_US');
  @override
   void initState() {
     super.initState();
    callLogs = [...widget.callLogs];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).padding,
      child: Material(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: TextField(
                    onChanged: (a)=>findLog(a),
                    decoration: InputDecoration.collapsed(hintText: "Search",hintStyle: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (_, i) {
                final CallLog item = callLogs[i];
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    trailing: Icon(item.callStyle == CallStyle.phone ? Icons.phone : Icons.video_call,color: Color(0xFFADEBBE),),
                    leading: ClipOval(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.width / 8,
                          child: Image.network(
                            item.avatarUrl,
                            fit: BoxFit.cover,
                          )),
                    ),
                    title: Text(
                      "${item.callerName} ${item.otherGuest == null ? "" : "& ${item.otherGuest.length} Others"}",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        if (item.count != null) Text("(${item.count}) "),
                        if (item.callType == CallType.incoming)
                          Image.asset("images/phone-incoming.png"),
                        if (item.callType == CallType.outgoing)
                          Image.asset("images/phone-outgoing.png"),
                        if (item.callType == CallType.unanswered)
                          Image.asset("images/phone-missed.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                            "${DateTime.now().difference(item.dateTime).inDays == 1 ?
                            "Yesterday ${timeFormat.format(item.dateTime)}" :
                            "${dateFormat.format(item.dateTime)}, ${timeFormat.format(item.dateTime)}"}")
                      ],
                    ),
                  ),
                );
              },
              itemCount: callLogs.length,
            ))
          ],
        ),
      ),
    );
  }

  findLog(String a) {


    setState(() {
      callLogs = widget.callLogs.where((element) => element.callerName.toLowerCase().startsWith(a.toLowerCase())).toList();
    });
  }
}
