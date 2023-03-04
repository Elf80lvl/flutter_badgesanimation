import 'package:flutter/material.dart';
import 'package:flutter_badgeanimation/bloc/notif/notif_bloc.dart';
import 'package:flutter_badgeanimation/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotifBloc()),
      ],
      child: MaterialApp(
        title: 'Bagde Animation',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
