import 'package:ObjectCoder/components/custom_bottom_nav_bar.dart';
import 'package:ObjectCoder/enum.dart';
import 'package:ObjectCoder/screens/certificates/components/certificates.dart';
import 'package:ObjectCoder/components/icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateScreen extends StatelessWidget {
  static String routeName = "/certificate";

  final List<Certificates> certificates;

  const CertificateScreen({
    Key? key,
    required this.certificates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Certificados",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1
          ),
        ),
      ),
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: certificates.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 4,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        launch('https://drive.google.com/file/d/19GzlNpEXHFxGYUilW0eRO88Nq7apTEnf/view');
                        ///Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            certificates[index].isPlaying ?
                            Image.asset(
                              icDone,
                              height: 45,
                            ) :
                            Image.asset(
                              icLock,
                              height: 45,
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    certificates[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    certificates[index].duration,
                                    style: const TextStyle(
                                        fontSize: 12, ///Revisar tamaño de la letra
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            certificates[index].isCompleted ?
                            Image.asset(
                              icDone,
                              height: 30,
                            ) :
                            Image.asset(
                              icLock,
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(selectMenu: MenuState.accountbalancewallet),
    );
  }
}