import 'package:ace_google_clone/colors.dart';
import 'package:ace_google_clone/screens/search_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              indicatorColor: blueColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "ALL"),
                Tab(text: "IMAGES"),
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/images/more-apps.svg",
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/google-logo.png",
              height: 100,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 450,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(30)
                //color: Colors.blue,
                ),
            child: TextFormField(
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchUi(
                      searchQuery: query,
                      start: "0",
                    ),
                  ),
                );
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/search-icon.svg",
                      // ignore: deprecated_member_use
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: SizedBox(
                    width: 30,
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/mic-icon.svg"),
                      ],
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Google offered in:"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Hausa",
                  style: TextStyle(color: blueColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Igbo",
                  style: TextStyle(color: blueColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Ede Yoruba",
                  style: TextStyle(color: blueColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Nigerian Pidgin",
                  style: TextStyle(color: blueColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
