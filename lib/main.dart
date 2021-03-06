import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  setHeight(){
    return SizedBox(height: 20,);
  }

  var data= [0.0,1.0,2.0,0.0,0.0,-0.5,-1.0,-1.5,1.0,0.0,0.0,1.5,2.0,0.0];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            setHeight(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Sparkline(
                  data: data,
                sharpCorners: true,
                pointsMode: PointsMode.all,
                pointColor: Colors.red,
                pointSize: 10.0,
              ),
            ),
            setHeight(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Sparkline(
                  data: data,
                fillMode: FillMode.above,
                fillColor: Colors.yellow,
                sharpCorners: false,
                lineColor: Colors.purple,
                lineWidth:10.0,
              ),
            ),
            setHeight(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Sparkline(
                  data: data,
                pointsMode: PointsMode.last,
                pointColor: Colors.red,
                pointSize: 7.0,
                sharpCorners: true,
                fallbackWidth: 10.0,
              ),
            ),
            setHeight(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Sparkline(
                  data: data,
                fillMode: FillMode.below,
                fillColor: Colors.amber,
              ),
            ),
            setHeight(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Sparkline(
                  data: data,
                sharpCorners: false,
                pointsMode: PointsMode.all,
                pointSize: 20.0,
                pointColor: Colors.black,
                lineColor: Colors.red,
                lineWidth: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}












