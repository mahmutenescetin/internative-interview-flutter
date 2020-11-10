import 'package:flutter/material.dart';
import 'package:flutter_interview_app/model/call_log.dart';
import 'package:flutter_interview_app/ui/call_log_ui.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CallLogUI(data),
  ));
}