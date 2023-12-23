import 'package:bmicalculator/Cubit/Bmi_Cubit.dart';
import 'package:bmicalculator/Cubit/Bmi_State.dart';
import 'package:bmicalculator/Screens/Result_Screen.dart';
import 'package:bmicalculator/Widgets/MorFCounter.dart';
import 'package:bmicalculator/Widgets/heightContainer.dart';
import 'package:bmicalculator/Widgets/weightAndageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          decoration: const BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<bmiCubit>(context).male();
                          },
                          child: MorF_Container(
                            gender: 'Male',
                            icon: Icons.male,
                            color: BlocProvider.of<bmiCubit>(context).isMale
                                ? Colors.red
                                : Colors.blueGrey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<bmiCubit>(context).female();
                          },
                          child: MorF_Container(
                            gender: 'Femal',
                            icon: Icons.female,
                            color: !BlocProvider.of<bmiCubit>(context).isMale
                                ? Colors.red
                                : Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: heightContainer(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      weightAndage_Widget(
                        name: 'WEIGHT',
                        num: BlocProvider.of<bmiCubit>(context).weight,
                        FunctionM: () {
                          BlocProvider.of<bmiCubit>(context).weightMin();
                        },
                        FunctionP: () {
                          BlocProvider.of<bmiCubit>(context).weightPlus();
                        },
                        heroTag1: 'h1',
                        heroTag2: 'h2',
                      ),
                      weightAndage_Widget(
                        name: 'AGE',
                        num: BlocProvider.of<bmiCubit>(context).age,
                        FunctionM: () {
                          BlocProvider.of<bmiCubit>(context).agemin();
                        },
                        FunctionP: () {
                          BlocProvider.of<bmiCubit>(context).agePlus();
                        },
                        heroTag1: 'h3',
                        heroTag2: 'h4',
                      ),
                    ],
                  )),
                  Container(
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const resultScreen(),
                            ));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: const Text(
                        'CALCULATE',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
