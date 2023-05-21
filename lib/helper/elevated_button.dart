import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.points,
    required this.whatTeam,
    required this.numbBtn,
  }) : super(key: key);
  final String points;
  final String whatTeam;
  final int numbBtn;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .counterIncrement(team: whatTeam, buttonNumber: numbBtn);
      },
      child: Text(
        points,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}

class ResetButton extends StatelessWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .counterIncrement(team: 'C', buttonNumber: 0);
      },
      child: const Text(
        'Reset',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
