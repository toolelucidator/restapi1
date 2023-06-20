import 'dart:convert';
import 'package:restapi1/screens/home.dart';
import 'package:restapi1/utils/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';


class HomeController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Rxn<String> locationData = Rxn();
  String get name =>
      "${locationData.value}";

  @override
  void onInit(){
    super.onInit();
    accesSharedPrefsData();
  }
  accesSharedPrefsData() async {
    final SharedPreferences prefs = await _prefs;
    var token = prefs.getString('token');
    var userName =prefs.getString('name');
    locationData.value  = userName;
    print("User Name");
    print(locationData.value!+"User Name");
  }

}

