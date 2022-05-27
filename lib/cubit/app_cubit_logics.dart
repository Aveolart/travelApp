// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/cubit_state.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(
              semanticsValue: "Loading",
              semanticsLabel: "Loading",
              // value: 5,
              strokeWidth: 2,
              color: AppColors.mainColor,
            ),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
