import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/add_section/add_section.dart';
import 'package:ObjectCoder/screens/paradigma/components/prueba_section.dart';
import 'package:ObjectCoder/screens/paradigma/components/video_section.dart';
import 'package:flutter/material.dart';

class ParadigmaScreen extends StatefulWidget {

  String img;
  ParadigmaScreen(this.img, {super.key});

  @override
  State<ParadigmaScreen> createState() => _CourseScreenState();

}

class _CourseScreenState extends State<ParadigmaScreen> {

  bool isVideosSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor:  Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
            widget.img,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 28,
              color: kPrimaryColor,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AddSelection.routeName,
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("assets/images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon( ///Usar IconButton
                    Icons.play_arrow_rounded,
                    color: kPrimaryColor,
                    size: 45,
                    ///onPressed para un video de YouTube
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
                "${widget.img} - Paradigma Completo", ///Mirar porque cambiar el texto de entrant
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
            ),
            SizedBox(height: 15),
            Text(
              "10 Lecciones",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideosSection ? kPrimaryColor : kPrimaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection ? kPrimaryColor.withOpacity(0.6) : kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Test",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
            isVideosSection ? VideoSection() : PruebaSection(),
          ],
        ),
      ),
    );
  }
}