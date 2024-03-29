import 'package:ObjectCoder/components/custom_bottom_nav_bar.dart';
import 'package:ObjectCoder/screens/progress_topics/Components/progress.dart';
import 'package:ObjectCoder/enum.dart';
import 'package:ObjectCoder/screens/paradigma/paradigma_screen.dart';
import 'package:ObjectCoder/screens/progress_topics/progress_topics_screen.dart';
import 'package:flutter/material.dart';
import 'package:ObjectCoder/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List catName = [
      "Categorias",
      "Clases",
      "Cursos Gratis",
      "Libros",
      "En vivo",
      "Progreso"
    ];

    List<Color> catColors = [
      const Color(0xFFFFCF2F),
      const Color(0xFF6FE08D),
      const Color(0xFF61BDFD),
      const Color(0xFFFC7C7F),
      const Color(0xFFCB84FB),
      const Color(0xFF78E667),
    ];

    List<IconButton> catIcons = [
      IconButton(
        icon: const Icon(Icons.category),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.video_call),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.assignment),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.store),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {
          launch('https://drive.google.com/drive/u/2/folders/1G0esbA704Lp3uHsgSHXbreqhyrk44oN7');
        },
      ),
      IconButton(
        icon: const Icon(Icons.play_circle_fill),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.emoji_events),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProgressTopicsScreen(progress: progress),
            ),
          );
        },
      ),
    ];

    List imgList = [
      "Clases",
      "Herencia",
      "Objetos",
      "Paralelismo",
      "Encapsulamiento",
      "Threads"
    ];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Text(
                    "Hola Programador",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Buscar",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catName.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          catName[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Categorias",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Más",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 -25) / (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ParadigmaScreen(imgList[index]),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/images/${imgList[index]}.png",
                                width: 90,
                                height: 90,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              imgList[index],
                              style:  const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "10 Lecciones",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectMenu: MenuState.home),
    );
  }
}