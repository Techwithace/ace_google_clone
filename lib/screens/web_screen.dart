import 'package:ace_google_clone/colors.dart';
import 'package:ace_google_clone/screens/search_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        // leading: InkWell(
        //   onTap: () {},
        //   child: const Icon(
        //     Icons.menu,
        //     color: Colors.grey,
        //   ),
        // ),
        // title: SizedBox(
        //   width: size.width * 0.34,
        //   child: const DefaultTabController(
        //     length: 2,
        //     child: TabBar(
        //       labelColor: blueColor,
        //       indicatorColor: blueColor,
        //       unselectedLabelColor: Colors.grey,
        //       tabs: [
        //         Tab(text: "ALL"),
        //         Tab(text: "IMAGES"),
        //       ],
        //     ),
        //   ),
        // ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Gmail",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Images",
              style: TextStyle(color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.add_business_sharp,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 7),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
              width: 550,
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
                        start: '0',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  //color: Colors.white10,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Google Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(5)),
                  //color: Colors.white10,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "I'm Feeling Lucky",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
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
            ),
            const SizedBox(
              height: 230,
            ),
            Container(
              height: size.height * 0.07,
              width: double.infinity,
              color: footerColor,
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Text(
                  "Nigeria",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              height: size.height * 0.07,
              width: double.infinity,
              color: footerColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "About",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Advertising",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Business",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "How Search work",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "🔥 Our third decade of climate action: join us",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Privacy",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Terms",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Settings",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
