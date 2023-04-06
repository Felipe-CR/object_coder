import 'package:ObjectCoder/components/progress.dart';
import 'package:ObjectCoder/constants.dart';
import 'package:flutter/material.dart';

class ProgressTopicsScreen extends StatelessWidget {

  final List<Progress> progress;

  const ProgressTopicsScreen({
    Key? key,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Progreso",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: progress.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Image.asset(
                                progress[index].images,
                                height: 60,
                              ),
                            ),
                            const SizedBox(
                                width: 10
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      progress[index].name
                                  ),
                                  const SizedBox(
                                      height: 10
                                  ),
                                  LinearProgressIndicator(
                                    value: progress[index].completedPercentage,
                                    backgroundColor: Colors.black12,
                                    color: kPrimaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );


    // return GestureDetector( ///Scaffold cambio
    //   onTap: () {},
    //   child: Container(
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       color: Colors.white,
    //     ),
    //     padding: const EdgeInsets.all(10),
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.circular(10),
    //           child: Image.asset(
    //             progress[0].images,
    //             height: 60, ///Revisar dimensiones en el dispositivo
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 10,
    //         ),
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(progress[0].name),
    //               const SizedBox(
    //                 height: 5,
    //               ),
    //               LinearProgressIndicator(
    //                 value: progress[0].completedPercentage,
    //                 backgroundColor: Colors.black12,
    //                 color: kPrimaryColor,
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}