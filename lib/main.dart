import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkyou_task/src/core/services/get_it_service.dart';
import 'package:linkyou_task/src/core/utilites/bloc_utilities/bloc_observer.dart';
import 'package:linkyou_task/src/my_app.dart';

void main() async {
  await GetItService.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
