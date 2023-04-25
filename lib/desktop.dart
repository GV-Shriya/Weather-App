import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/data_service.dart';
import 'package:myapp/models.dart';

class Desktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
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
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // desktopCtW (2:2)
        padding:
            EdgeInsets.fromLTRB(60 * fem, 294 * fem, 60.32 * fem, 294 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: <Color>[Color(0xffadd8e6), Color(0xffffffff)],
            stops: <double>[0, 1],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupkrvfkSA (S2yLh1guzp6NueY82Ekrvf)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 110 * fem, 0 * fem),
              width: 660 * fem,
              height: 436 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group2dkr (4:2)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 16 * fem),
                    padding: EdgeInsets.fromLTRB(
                        100 * fem, 48 * fem, 100 * fem, 48 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // theweatherappJ6J (2:59)
                          'The Weather App',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff4b77be),
                          ),
                        ),
                        SizedBox(
                          height: 24 * fem,
                        ),
                        Text(
                          // celcius1ev (2:56)
                          _response != null
                              ? '${_response?.tempInfo.temperature} ° Celcius'
                              : '24 ° Celcius',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 48 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff3f3d56),
                          ),
                        ),
                        SizedBox(
                          height: 24 * fem,
                        ),
                        Container(
                          // visakhapatnamvG6 (2:54)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            _response != null
                                ? '${_response?.cityName}'
                                : 'Visakhapatnam',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff4b77be),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group8DFC (431:10)
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16 * fem, 16 * fem, 16 * fem),
                    width: double.infinity,
                    height: 96 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group7uti (430:8)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 16 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              16 * fem, 22 * fem, 16 * fem, 22 * fem),
                          width: 408 * fem,
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
                          // group6Ygn (430:7)
                          onPressed: _search,
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 204 * fem,
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
                                  fontSize: 21 * ffem,
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
                ],
              ),
            ),
            Container(
              // weatherillustrationCmL (2:52)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0.44 * fem, 0 * fem, 0 * fem),
              width: 549.68 * fem,
              height: 406.44 * fem,
              child: Image.asset(
                'assets/page-1/images/weather-illustration.png',
                width: 549.68 * fem,
                height: 406.44 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
