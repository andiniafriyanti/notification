
import 'package:flutter/material.dart';
import 'package:flutter_widget_notification/simple_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(MyApp());
}

const List<Key> key = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home 2 '),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Notification Widget & Retrivieve Value'),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: MaterialButton(
                onPressed: () {
                  //Fungsi Toast
                  Fluttertoast.showToast(
                      msg: "This is Center toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Toasst'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45.0),
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Alert1'),
                  onPressed: () {
                    //Fungsi Alert Internet
                    showDialog(
                        context: context,
                        builder: (_) => NetworkGiffyDialog(
                              key: key[1],
                              image: Image.network(
                                "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                'Eating Cokelat',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              description: Text(
                                'This is a granny eating chocolate dialog box. Thislibrary helps you easily create fancy giffy dialog.',
                                textAlign: TextAlign.center,
                              ),
                              onOkButtonPressed: () {},
                            ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 45.0),
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Alert2'),
                  onPressed: () {
                    ///Membuat Alert Image Load Dari Local
                    showDialog(
                        context: context,
                        builder: (_) => AssetGiffyDialog(
                          key: key[5],
                          image: Image.asset(
                            'assets/stroberi.gif',
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Men Wearing Jackets',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w600),
                          ),
                          description: Text(
                            'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                          onOkButtonPressed: () {},
                        ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: MaterialButton(
                onPressed: () {
                  //Fungsi Pindah activity 1 ke login
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageSimpleLogin ()));
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('To Simple Login '),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

