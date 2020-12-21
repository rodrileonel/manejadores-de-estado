import 'package:flutter/material.dart';

import 'package:estados/bloc/user/user_cubit.dart';

import 'package:estados/pages/first_page.dart';
import 'package:estados/pages/second_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
void main() => runApp(
  MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => UserCubit(),)
    ],
    child: MyApp()
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'first',
      routes: {
        'first': (_) => FirstPage(),
        'second': (_) => SecondPage(),
      },
    );
  }
}