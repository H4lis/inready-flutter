import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tiga/StateManagement/Applicationcolors.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: ((context) => ApplicationColor()),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<ApplicationColor>(
              builder: ((context, ApplicationColor, _) => Text(
                    'Provider state management',
                    style: TextStyle(
                      color: ApplicationColor.Color,
                    ),
                  )),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  // ignore: avoid_types_as_parameter_names
                  builder: ((context, ApplicationColor, _) => AnimatedContainer(
                        width: 100,
                        height: 100,
                        color: ApplicationColor.Color,
                        duration: Duration(seconds: 3),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ab'),
                    Consumer<ApplicationColor>(
                        builder: ((context, ApplicationColor, _) => Switch(
                            value: ApplicationColor.islightBlue,
                            onChanged: (newValue) {
                              ApplicationColor.islightBlue = newValue;
                            }))),
                    Text('Lb'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
