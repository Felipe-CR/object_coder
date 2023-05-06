import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/test/test_screen_c.dart';
import 'package:ObjectCoder/screens/test/test_screen_e.dart';
import 'package:ObjectCoder/screens/test/test_screen_h.dart';
import 'package:ObjectCoder/screens/test/test_screen_o.dart';
import 'package:ObjectCoder/screens/test/test_screen_p.dart';
import 'package:ObjectCoder/screens/test/test_screen_t.dart';
import 'package:flutter/material.dart';

class PruebaSection extends StatelessWidget {
  const PruebaSection({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List listTest = [
      "Test de Clases",
      "Test de Herencia",
      "Test de Objetos",
      "Test de Paralelismo",
      "Test de Encapsulamiento",
      "Test de Threads"
    ];

    List rutaTest = [
      const TestScreenC(),
      const TestScreenH(),
      const TestScreenO(),
      const TestScreenP(),
      const TestScreenE(),
      const TestScreenT(),
    ];

    return ListView.builder(
      itemCount: listTest.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 1,
      //     childAspectRatio: 4
      // ),
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.task),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      ///Probar la nueva ruta.
                      builder: (context) => rutaTest[index], //const TestScreenH(), //rutaTest[index]
                    )
                );
              },
            ),
          ),
          title: Text(
            listTest[index],
          ),
        );
      },
    );
  }
}