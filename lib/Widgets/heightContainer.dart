import 'package:bmicalculator/Cubit/Bmi_Cubit.dart';
import 'package:bmicalculator/Cubit/Bmi_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class heightContainer extends StatelessWidget {
  const heightContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<bmiCubit, bmiState>(
      listener: (context, state) {},
      builder: (context, state) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${BlocProvider.of<bmiCubit>(context).height.round()}',
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'cm',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Slider(
            value: BlocProvider.of<bmiCubit>(context).height,
            min: 80,
            max: 200,
            onChanged: (value) {
              BlocProvider.of<bmiCubit>(context).setHeight(value);
            },
          ),
        ]),
      ),
    );
  }
}
