import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/cubit/numbercubit_cubit.dart';
import 'package:flutter_application_learn_get/core/routes/route.gr.dart';
import 'package:flutter_application_learn_get/main.dart';
import 'package:flutter_application_learn_get/models/countercubit.dart';
import 'package:flutter_application_learn_get/models/numberAPI.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyLearnPage extends StatelessWidget {
  const MyLearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learning"),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  context.router.push(SettingRoute());
                },
                icon: Icon(Icons.cloud))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: BlocBuilder<CounterCubit, int>(
                builder: (cont, count) => Center(
                    child: Container(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          count.toString(),
                          style: TextStyle(
                              fontSize: 22,
                              color: getIt<CounterCubit>().textColor(count)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: getIt<CounterCubit>().faIcon(count)),
                      ]),
                  decoration:
                      BoxDecoration(color: getIt<CounterCubit>().color(count)),
                )),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 75, left: 10),
              child: Center(
                child: BlocBuilder<NumbercubitCubit, NumbercubitState>(
                    builder: (context, state) {
                  if (state is NumbercubitLoading) {
                    return CircularProgressIndicator(
                      color: Colors.black,
                      backgroundColor: Colors.green,
                    );
                  } else if (state is NumbercubitError) {
                    return Text(state.failure.message);
                  } else if (state is NumbercubitLoaded) {
                    NumberAPI numbersApi = state.numbersAPI;
                    // ignore: unnecessary_null_comparison
                    return numbersApi == null
                        ? const Text("No Text")
                        : Text(
                            "${numbersApi.text}" /* ${AppLocalizations.of(context)!.language.toString() */,
                            // "${text}",
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 20),
                          );
                  }
                  return Text("Any Data is getting");
                }),
              ),
            ))
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {
                context.read<CounterCubit>().increment();
                number++;
                context.read<NumbercubitCubit>().getNumberApiCubit(number,context);
                bool isconnected = context.read<NumbercubitCubit>().isconnect();
                context
                    .read<NumbercubitCubit>()
                    .showMeSnackBarDeconnection(context, isconnected);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: "bnt2",
              onPressed: () {
                context.read<CounterCubit>().decrement();
                number--;
                context.read<NumbercubitCubit>().getNumberApiCubit(number,context);
                bool isconnected = context.read<NumbercubitCubit>().isconnect();
                context
                    .read<NumbercubitCubit>()
                    .showMeSnackBarDeconnection(context, isconnected);
              },
              tooltip: 'Decrementation',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
