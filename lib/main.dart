import 'package:dynamic_listview/blocs/cubit/dynamic_list_cubit.dart';
import 'package:dynamic_listview/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
      providers: [
        BlocProvider(create: (c) => DynamicListCubit()),
      ],
      child: MainScreen(),
    ));
  }
}
