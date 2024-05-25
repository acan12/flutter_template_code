import 'package:flutter/cupertino.dart';

abstract class BaseStatefullWidget extends StatelessWidget{
  const BaseStatefullWidget({super.key});

  void onSuccess();
  void onError();
  void onLoading();
}