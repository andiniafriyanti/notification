import 'package:flutter/material.dart';

class PageKetiga extends StatefulWidget{
  String email, password;
  PageKetiga({this.email, this.password});

  @override
  _PageKetigaState createState() => _PageKetigaState();
}

class _PageKetigaState extends State<PageKetiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Ketiga'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Text('Email kamu : ${widget.email}'),
          Text('Password kamu : ${widget.password}')
        ],
      ),
    );
  }
}
