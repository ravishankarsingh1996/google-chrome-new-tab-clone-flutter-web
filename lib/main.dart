import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              'https://4.bp.blogspot.com/-IvTudMG6xNs/XPlXQ7Vxl_I/AAAAAAAAVcc/rZQR7Jcvbzoor3vO_lCtMHPZG7sO3VJOgCK4BGAYYCw/s1600/1D6A0131.JPG-01.jpeg.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 50,
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Gmail',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Images',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          hoverColor: Colors.white,
                          icon: Image.network(
                            'https://cdn0.iconfinder.com/data/icons/basic-ui-elements-plain/420/06_menu_grid-512.png',
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://avatars3.githubusercontent.com/u/20386271?s=460&v=4',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenSize.height / 3,
                  width: screenSize.width,
                  child: Center(
                      child: Text(
                    'Google',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    height: 50.0,
                    width: screenSize.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            spreadRadius: 0.2)
                      ],
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          hintText: 'Search Google or type a URL',
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
