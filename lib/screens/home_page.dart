import 'package:basketball_counter_app/helper/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, Counterstate>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          const Button(
                            points: 'Add 1 Points',
                            whatTeam: 'A',
                            numbBtn: 1,
                          ),
                          const Button(
                            points: 'Add 2 Points',
                            whatTeam: 'A',
                            numbBtn: 2,
                          ),
                          const Button(
                            points: 'Add 3 Points',
                            whatTeam: 'A',
                            numbBtn: 3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          const Button(
                            points: 'Add 1 Points',
                            whatTeam: 'B',
                            numbBtn: 1,
                          ),
                          const Button(
                            points: 'Add 2 Points',
                            whatTeam: 'B',
                            numbBtn: 2,
                          ),
                          const Button(
                            points: 'Add 3 Points',
                            whatTeam: 'B',
                            numbBtn: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const ResetButton(),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
