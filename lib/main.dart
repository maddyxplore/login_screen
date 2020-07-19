import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());
final bg = const Color(0xFFDAE0E2);
// top bar design
Widget top = Container(
  child: Row(

    children: <Widget>[
      Column(

        children: <Widget>[

          SvgPicture.asset("images/bg.svg",width: 150.0,height: 150.0,)
        ],
      ),
      Column(
        children: <Widget>[
          Text("")
        ],
      )

    ],

  )
);


// welcome note

Widget top1 = Container(
  padding: EdgeInsets.only(left: 110.0,top: 20.0,right: 100.0,bottom: 0),
  child: Text("Welcome",
  textDirection: TextDirection.ltr,
    style: TextStyle(
      color: Colors.blue,
      fontSize: 32,
    )
    ,),
);

Widget login_user = Container(
    width: 320,
    padding: EdgeInsets.only(top: 40.0, left:30.0, right: 30.0,bottom: 10.0),
     child:TextField(
       decoration: InputDecoration(
         hintText: "Username",
         fillColor: Colors.blueGrey,
         hintStyle: TextStyle(color: Colors.blueGrey),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(74)),
           borderSide: BorderSide(color: Colors.blueGrey, width: 1),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(74)),
           borderSide: BorderSide(color: Colors.blueGrey, width: 2),
         ),
       ),
     )

);
// password
Widget login_pass = Container(
    width: 320,
    padding: EdgeInsets.only(left:30.0, right: 30.0,bottom: 10.0),
    child:TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.blueGrey,
        hintStyle: TextStyle(color: Colors.blueGrey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(74)),
          borderSide: BorderSide(color: Colors.blueGrey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(74)),
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
      ),
    )


);

// submit button
Widget submit = Container(
  padding: EdgeInsets.only(left:80,right: 80, top: 0),
  child: FlatButton(
    color: Colors.blue,
    onPressed: () {},
    child: Text(
      "Submit",
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0)
    ),
  ),
);

Widget bottom = Container(
  padding: EdgeInsets.only(left: 210, top: 40),
  child: SvgPicture.asset("images/bot.svg",width: 150.0,height: 150.0,),
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey,
      title: "madhan",
      home: Scaffold(
        backgroundColor: bg,
        body: ListView(

          children: <Widget>[
            top,
            top1,
            login_user,
            login_pass,
            submit,
            bottom,
            
          ],
        ),
      ),
    );
  }
}
