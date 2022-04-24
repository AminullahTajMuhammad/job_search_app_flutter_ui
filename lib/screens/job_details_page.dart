import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsPage extends StatefulWidget {
  @override
  _JobDetailsPageState createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 35),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              "assets/ic_back.svg",
              width: 10,
              height: 10,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset(
                "assets/ic_bookmark.svg",
              ),
            ),
          )
        ],
        title: const Text(
          "Job Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: initWidget(),
        ),
      ),
    );
  }

  Widget initWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildJobTitle(),
        buildJobDescription(),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          width: MediaQuery.of(context).size.width,
          child: MaterialButton(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            color: const Color(0xff7837C2),
            onPressed: () {},
            child: const Text(
              "Apply",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildJobTitle() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  "assets/company_one.png",
                  fit: BoxFit.fill,
                  height: 70,
                  width: 60,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "UI/UX Designer",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            const Text(
              "Fanavaran khebreh",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: const BoxDecoration(
                        color: Color(0xffB392D8),
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: const Center(
                      child: Text(
                        "Full Time",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        color: Color(0xffB392D8),
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: const Center(
                      child: Text(
                        "Senior",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildJobDescription() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Job Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Gather and evaluate user requirements in collaboration with product managers and engineers \nCreate user flow and user story for different sections \nDesign UI based on wireframe and turn it into prototypes for final test \nIllustrate design ideas using storyboards, process flows and sitemaps \nDesign graphic user interface elements, like menus, tabs and widgets",
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Requirements",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Over 4 years of experience as UI/UX designer \nMasters design tools including Figma \nFamiliar with design systems and styles \nFamiliar with CSS, HTML, and JS frameworks \nTeam-worker and collaborative \nGood knowledge of English ",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Job Categories",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "IT - Software & Web Development \nUI & UX/ Industrial Design",
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
