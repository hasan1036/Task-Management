import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class NetworkUtils{

  // Get Request
  static Future<dynamic> getMethod(String url, {VoidCallback? onUnAuthorize}) async{
    final http.Response response = await http.get(Uri.parse(url));

    try{
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      } else if(response.statusCode == 401){
        if(onUnAuthorize != null){
          onUnAuthorize();
        }
      }
      else{
        print("Something went Wrong ${response.statusCode}");
      }
    }catch(e){
      print(e);
    }
  }


  // Get Request
  static Future<dynamic> postMethod(String url, {Map<String, String>?body, VoidCallback? onUnAuthorize}) async{
    final http.Response response = await http.post(Uri.parse(url), headers:{"Content-Type": "application/json"}, body: jsonEncode(body), );

    try{
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }

      else if(response.statusCode == 401){

        if(onUnAuthorize != null){
          onUnAuthorize();
        }
      }
      else{
        print("Something went Wrong ${response.statusCode}");
      }
    }catch(e){
      print(e);
    }
  }


}