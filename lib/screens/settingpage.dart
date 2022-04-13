import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/app_constants.dart';
import 'package:flutter_application_learn_get/widgets/app_data.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  // get apiservice => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètre"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
      height: 200,
      child: Column(
        children: [
          const Text("Couleurs disponibles"),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 5,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return AppData(index: index, iscolor: true);
              },
            ),
          ),
          const Divider(),
          const Text("Icons disponibles"),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 5,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return AppData(index: index, iscolor: false);
              },
            ),
          ),
        ],
      ),
    )
      ),
    );

    //   BlocBuilder<NumbercubitCubit, NumbercubitState>(
    //     builder: (context, state) {
    //       if (state is NumbercubitLoading) {
    //         return Scaffold(
    //           appBar: AppBar(
    //             title: const Text("Paramètre"),
    //             centerTitle: true,
    //           ),
    //           body: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [AppData(),  CircularProgressIndicator(color: Colors.black,backgroundColor: Colors.green,)],
    //             ),
    //           ),
    //         ) /*const CircularProgressIndicator.adaptive()*/;
    //       } else if (state is NumbercubitError) {
    //         return Scaffold(
    //           appBar: AppBar(
    //             title: const Text("Paramètre"),
    //             centerTitle: true,
    //           ),
    //           body: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [AppData(), Text(state.failure.message)],
    //           ),
    //         ) /*Text(state.failure.message)*/;
    //       } else if (state is NumbercubitLoaded) {
    //         final numbersApi = state.numbersAPI;
    //         return Scaffold(
    //           appBar: AppBar(
    //             title: const Text("Paramètre"),
    //             centerTitle: true,
    //           ),
    //           body: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               AppData(),
    //               // ignore: unnecessary_null_comparison
    //               numbersApi== null
    //                   ? const Text("No Text")
    //                   : Text("${numbersApi.text}")
    //             ],
    //           ),
    //         )
    //             /*numbersApi.isNotEmpty
    //                   ? const Text("No Text")
    //                   : Text("$numbersApi")*/
    //             ;
    //       }
    //       return Scaffold(
    //         appBar: AppBar(
    //           title: const Text("Paramètre"),
    //           centerTitle: true,
    //         ),
    //         body: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [AppData(), Text("Any Data is getting")],
    //         ),
    //       ) /*Text("Any Data is getting")*/;
    //     },
    //   );
    // }
  }
}
