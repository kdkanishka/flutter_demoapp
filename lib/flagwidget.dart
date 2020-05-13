

import 'package:flutter/material.dart';

class FlagWidget extends StatefulWidget {
  @override
  _FlagWidgetState createState() => _FlagWidgetState();
}

class _FlagWidgetState extends State<FlagWidget> {

  final countries = ["Sri Lanka", "Bahrain","Bermuda","United Kingdom","Hungary","Japan","Italy","Macao","Malaysia","Netherlands","Poland","Puerto Rico", "Sweden","Singapore","Ukraine"];

  final countryCodes = ["LK", "BH","BM","GB","HU","JP","IT","MO","MY","NL","PL","PR","SE","SG","UA"];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Simple Demo"),
      ),
      body: ListView.builder(
        itemCount: countries.length,
          itemBuilder: (context, index){
             final country = countries[index];
             final countryCode = countryCodes[index];

             return _createListItem(country, countryCode);
          }
      )
    );
  }

  Widget _createListItem(String country, String countryCode){
    return Card(
      child: ListTile(
        leading: Image.network("https://www.countryflags.io/${countryCode}/flat/64.png"),
        title: Text(country),
        subtitle: Text("Country Tile"),
      ),
    );
  }
}
