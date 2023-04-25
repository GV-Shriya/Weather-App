import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/data_service.dart';
import 'package:myapp/models.dart';
import 'package:myapp/utils.dart';

class Mobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();
  WeatherResponse? _response;
  void _search() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mobilevGe (4:3)
        padding: EdgeInsets.fromLTRB(5 * fem, 48 * fem, 5 * fem, 123.29 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: <Color>[Color(0xffadd8e6), Color(0xffffffff)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group5ByG (4:58)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              padding:
                  EdgeInsets.fromLTRB(72 * fem, 48 * fem, 72 * fem, 48 * fem),
              width: double.infinity,
              height: 270 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Container(
                // group4gv2 (4:57)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // theweatherappEAr (4:54)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'The Weather App',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff4b77be),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24 * fem,
                    ),
                    Text(
                      // celciusvJa (4:56)
                      _response != null
                          ? '${_response?.tempInfo.temperature} ° Celcius'
                          : '24 ° Celcius',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 36 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff3f3d56),
                      ),
                    ),
                    SizedBox(
                      height: 24 * fem,
                    ),
                    Text(
                      _response != null
                          ? '${_response?.cityName}'
                          : 'Visakhapatnam',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff4b77be),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // group9nLn (431:19)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4.77 * fem, 48 * fem),
              padding: EdgeInsets.fromLTRB(
                  16 * fem, 16 * fem, 16.23 * fem, 16 * fem),
              width: double.infinity,
              height: 74 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group7Txi (431:13)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        8 * fem, 11 * fem, 8 * fem, 11 * fem),
                    width: 184 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff000000)),
                      borderRadius: BorderRadius.circular(5 * fem),
                    ),
                    child: TextField(
                      controller: _cityTextController,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // group6ite (431:16)
                    onPressed: _search,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 129 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff4b77be),
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Get Weather',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // weatherillustrationD4i (4:4)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 358 * fem,
              height: 264.71 * fem,
              child: Image.asset(
                'assets/page-1/images/weather-illustration-Bgr.png',
                width: 358 * fem,
                height: 264.71 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
