import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/src/controller/liquid_controller.dart';
import 'package:project_2/src/widgets/home_progress.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final homeCtrl = Get.put(LiquidController());

  @override
  Widget build(BuildContext context) {
    return const Center(
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const SizedBox(
      //       height: 150,
      //     ),
      child: HomeProgress(),
      // Padding(
      //   padding: const EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
      //   child: FloatingActionButton.large(
      //       heroTag: null,
      //       backgroundColor: const Color.fromARGB(255, 33, 70, 88),
      //       onPressed: () {
      //         showBottomSheet(context);
      //       },
      //       child: const Icon(
      //         Icons.add,
      //         size: 40,
      //       )),
      // )
      //     ],
      //   ),
    );
  }
}

// void showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     backgroundColor: const Color.fromARGB(255, 61, 61, 61),
//     shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
//     context: context,
//     builder: (BuildContext context) {
//       return SizedBox(
//         height: 170,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
//               child: Divider(
//                   thickness: 2,
//                   color: Color.fromARGB(255, 231, 231, 231),
//                   indent: 150,
//                   endIndent: 150),
//             ),
//             ListTile(
//               leading: const Icon(Icons.add,
//                   color: Color.fromARGB(255, 231, 231, 231)),
//               title: const Text('Add',
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 231, 231, 231))),
//               onTap: () {},
//             ),
//             const Divider(color: Color.fromARGB(255, 109, 109, 109)),
//             ListTile(
//               leading: const Icon(
//                 Icons.delete,
//                 color: Color.fromARGB(255, 231, 231, 231),
//               ),
//               title: const Text('Delete',
//                   style: TextStyle(color: Color.fromARGB(255, 231, 231, 231))),
//               onTap: () {},
//             ),
//             const Divider(color: Color.fromARGB(255, 109, 109, 109)),
//           ],
//         ),
//       );
//     },
//   );
// }
