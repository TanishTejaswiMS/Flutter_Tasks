// 02/02/2022

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int active_page_index = 0;
  @override
  void initState() {
    active_page_index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // variables
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String bg = "https://images.unsplash.com/photo-1500916434205-0c77489c6cf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80";
    var page_controller = PageController(
      initialPage: 0,
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(active_page_index==0?"https://images.unsplash.com/photo-1500916434205-0c77489c6cf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80": active_page_index == 1? "https://i.pinimg.com/1200x/03/a4/ce/03a4ceaa6f8cfa0f53a76f5496647485.jpg": "https://w0.peakpx.com/wallpaper/518/830/HD-wallpaper-coast-road-car-aerial-view.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)),
        ),
        child: Column(
          children: [
            //       Image.network("https://www.teahub.io/photos/full/58-585946_sea-hd-wallpapers-for-mobile.jpg"),
            //       CachedNetworkImage(
            //     imageUrl: "https://www.teahub.io/photos/full/58-585946_sea-hd-wallpapers-for-mobile.jpg",
            //     placeholder: (context, url) => CircularProgressIndicator(),
            //     errorWidget: (context, url, error) => Icon(Icons.error),
            //  ),
            Expanded(
              child: Center(
                child: PageView(
                  controller: page_controller,
                  onPageChanged: (value) {
                    if (this.mounted) {
                      setState(() {
                        active_page_index = value;
                        
                      });
                    }
                  },
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 60, left: 30, right: 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Text(
                                      "MARRIOTT",
                                      style: TextStyle(
                                          fontSize: 10,
                                          letterSpacing: 1.5,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "BONV",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "o",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            decorationColor: Colors.orange,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Y",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Text(
                              "Discover a World of \nOpportunity",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "7500+ Hotels to Earn and Redeem Your \nPoints.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                    Container(
                      child: Center(
                          child: Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 60, left: 30, right: 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Text(
                                      "MARRIOTT",
                                      style: TextStyle(
                                          fontSize: 10,
                                          letterSpacing: 1.5,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "BONV",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "o",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            decorationColor: Colors.orange,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Y",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Text(
                              "Elevate Your Experience",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Gain access to special rates and exclusive \nexperiences.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                    Container(
                      child: Center(
                          child: Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 60, left: 30, right: 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Text(
                                      "MARRIOTT",
                                      style: TextStyle(
                                          fontSize: 10,
                                          letterSpacing: 1.5,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "BONV",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "o",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            decorationColor: Colors.orange,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Y",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Text(
                              "Travel With Ease",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Book, check in and make requests from \n anywhere.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                color: Colors.white.withOpacity(0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // first dot
                      GestureDetector(
                        onTap: () {
                          if (this.mounted) {
                            setState(() {
                              active_page_index = 0;
                            });
                          }
                          page_controller.animateToPage(0,
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (active_page_index == 0)
                                ? Colors.white
                                : Color(0xff404040),
                          ),
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      // second dot
                      GestureDetector(
                        onTap: () {
                          if (this.mounted) {
                            setState(() {
                              active_page_index = 1;
                            });
                          }
                          page_controller.animateToPage(1,
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (active_page_index == 1)
                                ? Colors.white
                                : Color(0xff404040),
                          ),
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      // third dot
                      GestureDetector(
                        onTap: () {
                          if (this.mounted) {
                            setState(() {
                              active_page_index = 2;
                            });
                          }
                          page_controller.animateToPage(2,
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (active_page_index == 2)
                                ? Colors.white
                                : Color(0xff404040),
                          ),
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Join",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(color: Colors.black))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 130,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        width: 130,
                        // height: 10,
                        child: Text("Sign In", style: TextStyle(color: Colors.white),),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   child: Text(
                      //     "Sign In",
                      //     style: TextStyle(color: Colors.black),
                      //   ),
                      //   style: ButtonStyle(
                      //       shape:
                      //           MaterialStateProperty.all<RoundedRectangleBorder>(
                      //               RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                            
                      //       )),
                      //       backgroundColor:
                      //           MaterialStateProperty.all(Colors.white),
                      //       padding:
                      //           MaterialStateProperty.all(EdgeInsets.all(15)),
                      //       textStyle: MaterialStateProperty.all(
                      //           TextStyle(color: Colors.black))),
                      // ),
                    ),
                  )
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue as guest", style: TextStyle(color: Colors.white, fontSize: 15),),
                  Align(
                    alignment: Alignment.center,
                    child: Text("\u{2192}", style: TextStyle(color: Colors.white, fontSize: 15), textAlign: TextAlign.center,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
