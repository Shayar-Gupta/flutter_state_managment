import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt _count = 0.obs;
  int get getCount => _count.value;

  incrementCounter(){
    _count.value++;
    print(_count.value);
  }
}