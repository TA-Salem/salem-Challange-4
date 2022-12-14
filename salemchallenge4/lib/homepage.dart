import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:salemchallenge4/api/apinet.dart';
import 'package:salemchallenge4/api/cont.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  UsersController usersController = Get.put(UsersController());
  TextStyle xx = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GetBuilder<UsersController>(
              init: UsersController(),
              builder: (_) {
                return Center(
                    child: Text(
                  usersController.dataUsers.toString(),
                  //style: xx
                ));
              }),
          IconButton(
              onPressed: () {
                usersController.func1();
                //xx = TextStyle();
              },
              icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
