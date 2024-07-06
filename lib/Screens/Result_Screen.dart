import 'dart:math';
import 'package:bmicalculator/Cubit/Bmi_Cubit.dart';
import 'package:bmicalculator/Cubit/Bmi_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class resultScreen extends StatelessWidget {
  const resultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<bmiCubit, bmiState>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                BlocProvider.of<bmiCubit>(context).isMale
                    ? 'Gender : Male'
                    : 'Gender : Female',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${BlocProvider.of<bmiCubit>(context).age}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Result = ${(BlocProvider.of<bmiCubit>(context).weight / pow(BlocProvider.of<bmiCubit>(context).height / 100, 2)).round()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
