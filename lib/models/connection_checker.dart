// import 'dart:async';

// import 'package:internet_connection_checker/internet_connection_checker.dart';

// class ConnectionChecher{
// // ignore: unused_local_variable
//     bool isconnected=false;
//   void isconnect(){
    
//     // ignore: unused_local_variable
//     final StreamSubscription<InternetConnectionStatus> listener = InternetConnectionChecker().onStatusChange.listen((event) {
//       switch (event) {
//         case InternetConnectionStatus.connected:
//           isconnected = true;
//           print("Data connection is available");
//           print(isconnected);
//           break;
//         case InternetConnectionStatus.disconnected:
//           print("You are disconnected from the internet.");
//         isconnected = false;
//           print(isconnected);
//           break;
//       }
//     });
//   }
// }