import 'package:get/get.dart';
import 'package:salemchallenge4/api/api.dart';
import 'package:salemchallenge4/api/apinet.dart';

class UsersController extends GetxController {
  var dataUsers;

  func1() async {
    dataUsers = await ApiClass.ttt(endPoint: ApiConstantss.usersEndpoint);
    print(dataUsers);
    update();
  }
}
