import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

launchPhone() async {
  const url = 'tel:+918848750714';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchMail() async {
  const url = 'mailto:mehndhika@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchLocation() async {
  const url =
      'https://www.google.com/maps/place/Mehndhika+-+Mehendi+Artist+in+Trivandrum/@8.4905547,76.9575714,17z/data=!3m1!4b1!4m5!3m4!1s0x3b05bbdfc92b9f5b:0x23339d7a7b875fff!8m2!3d8.4905494!4d76.9597601';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchInsta() async {
  const url = 'https://www.instagram.com/mehndhika_/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchFB() async {
  const url = 'https://www.facebook.com/mehndhika/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff51242b),
        body: SafeArea(
            child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/keerthana.jpg'),
                ),
                Text(
                  'Keerthana Kishore',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mehendi Artist',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 220.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    launchPhone();
                  },
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Color(0xff51242b),
                        ),
                        title: Text(
                          'Phone',
                          style: TextStyle(
                            color: Color(0xff51242b),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {
                    launchMail();
                  },
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Color(0xff51242b),
                        ),
                        title: Text(
                          'E-mail',
                          style: TextStyle(
                            color: Color(0xff51242b),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {
                    launchInsta();
                  },
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          SocialMediaIcons.instagram,
                          color: Color(0xff51242b),
                        ),
                        title: Text(
                          'Instagram',
                          style: TextStyle(
                            color: Color(0xff51242b),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {
                    launchFB();
                  },
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          SocialMediaIcons.facebook,
                          color: Color(0xff51242b),
                        ),
                        title: Text(
                          'Facebook',
                          style: TextStyle(
                            color: Color(0xff51242b),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {
                    launchLocation();
                  },
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Color(0xff51242b),
                        ),
                        title: Text(
                          'Location',
                          style: TextStyle(
                            color: Color(0xff51242b),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
