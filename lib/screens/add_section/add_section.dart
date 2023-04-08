import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/add_section/components/subir_test_section.dart';
import 'package:ObjectCoder/screens/add_section/components/subir_video_section.dart';
import 'package:flutter/material.dart';

class AddSelection extends StatefulWidget {
  static String routeName = "/add";

  const AddSelection({
    Key? key
  }) : super(key: key);

  @override
  State<AddSelection> createState() => _AddSelectionState();
}

class _AddSelectionState extends State<AddSelection> {

  bool isAddSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Subir Archivos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isAddSection ? kPrimaryColor : kPrimaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isAddSection = true;
                        });
                      },
                      ///Revisar tamaño
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Subir Videos", ///Revisar NOMBRE
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isAddSection ? kPrimaryColor.withOpacity(0.6) : kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isAddSection = false;
                        });
                      },
                      ///Revisar tamaño
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Subir Test",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isAddSection ? SubirVideoSection() : SubirTestSection(),
          ],
        ),
      ),
    );
  }
}