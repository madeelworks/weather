import 'package:flutter/material.dart';
import 'package:app/services/location.dart';
import 'package:app/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitThreeInOut(
          color: Colors.blue,
          size: 100.0,
        ),
      ),
    );
  }

  void getLocation() async {
    WeatherModel weather = WeatherModel();
    var weatherdata = await weather.getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherdata,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }
}
