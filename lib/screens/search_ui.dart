import 'package:ace_google_clone/screens/search_screen_appBar.dart';
import 'package:ace_google_clone/widgets/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchUi extends StatefulWidget {
  final String searchQuery;
  final String start;
  const SearchUi({super.key, required this.searchQuery, this.start = '0'});

  @override
  State<SearchUi> createState() => _SearchUiState();
}

class _SearchUiState extends State<SearchUi> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Extract the items list from apiResponse
    // List<dynamic> items = apiResponse['items'] ?? [];
    //ApiService().fetchData(queryTerm: "Ace");

    return Scaffold(
      body: FutureBuilder<Map<String, dynamic>>(
        future: ApiService()
            .fetchData(queryTerm: widget.searchQuery, start: widget.start),
        builder: (context, snapshot) {
          //print(snapshot);
          // print(snapshot.runtimeType);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator.adaptive();
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          if (snapshot.hasData) {
            return Title(
              title: widget.searchQuery,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.width <= 768 ? 40 : 0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset(
                          "assets/images/google-logo.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: size.width < 768 ? 200 : 700),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10,
                        ),
                        width: 700,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
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
                              suffixIcon: SizedBox(
                                width: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/mic-icon.svg"),
                                    SvgPicture.asset(
                                        "assets/images/search-icon.svg")
                                  ],
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      size.width >= 768
                          ? SizedBox(
                              width: 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.panorama_photosphere_sharp),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      "assets/images/more-apps.svg",
                                      // ignore: deprecated_member_use
                                      color: Colors.white,
                                    ),
                                  ),
                                  const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/img.jpeg"))
                                ],
                              ),
                            )
                          : const Padding(
                              padding: EdgeInsets.only(right: 12.0),
                              child: Icon(Icons.menu),
                            )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: size.width * 0.09),
                        const SearchScreenAppbar(
                          label: "All",
                          icon: Icons.search,
                          isActive: true,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "Images",
                          icon: Icons.image,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "Videos",
                          icon: Icons.video_call,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "News",
                          icon: Icons.newspaper,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "Maps",
                          icon: Icons.map,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "Web",
                          icon: Icons.search,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "Books",
                          icon: Icons.book,
                          isActive: false,
                        ),
                        const SizedBox(width: 15),
                        const SearchScreenAppbar(
                          label: "More",
                          icon: Icons.more_vert,
                          isActive: false,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 0.3,
                    width: double.infinity,
                    child: ColoredBox(color: Colors.white),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data!["items"].length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: size.width <= 768 ? 15 : 130,
                                top: size.width <= 768 ? 0 : 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data!["items"][index]["title"],
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: TextButton(
                                    onPressed: () async {
                                      if (await canLaunchUrl(Uri.parse(snapshot
                                          .data!["items"][index]["link"]))) {
                                        await launchUrl(
                                            Uri.parse(snapshot.data!["items"]
                                                [index]["link"]),
                                            mode: LaunchMode.inAppWebView);
                                      }
                                    },
                                    child: Text(
                                        snapshot.data!["items"][index]
                                            ["displayLink"],
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                Text(
                                  snapshot.data!["items"][index]["snippet"],
                                  overflow: TextOverflow.ellipsis,
                                ),
                                // Image.network(snapshot.data!["items"][index]
                                //     ["pagemap"]["cse_image"][index]["src"])
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (widget.start != "0") {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SearchUi(
                                  searchQuery: widget.searchQuery,
                                  start:
                                      (int.parse(widget.start) - 10).toString(),
                                ),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "< Prev",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchUi(
                                    searchQuery: widget.searchQuery,
                                    start: (int.parse(widget.start) + 10)
                                        .toString(),
                                  )));
                        },
                        child: const Text(
                          "Next >",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }
          return const Text("No data");
        },
      ),
    );
  }
}
