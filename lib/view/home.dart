import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/controller/notifire.dart';
import 'package:riverpod_test/view/component.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);
    final homeNotifire = ref.read(homeProvider.notifier);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'The Number is : ${homeState.number}',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomELevatedButton(
                fun: () => homeNotifire.decrease(),
                title: '-',
              ),
              CustomELevatedButton(
                fun: () => homeNotifire.increase(),
                title: '+',
              ),
            ],
          ),
        ],
      )),
    );
  }
}
