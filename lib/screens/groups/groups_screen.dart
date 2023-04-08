import 'package:ObjectCoder/components/custom_bottom_nav_bar.dart';
import 'package:ObjectCoder/enum.dart';
import 'package:ObjectCoder/screens/groups/components/groups.dart';
import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  static String routeName = "/groups";

  final List<Group> group;

  const GroupsScreen({
    Key? key,
    required this.group,
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
          "Grupos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: group.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 4,
                  ),
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
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
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Image.asset(
                                group[index].images,
                                height: 60,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    group[index].name,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    group[index].members,
                                  )
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
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(selectMenu: MenuState.assignment),
    );
  }
}