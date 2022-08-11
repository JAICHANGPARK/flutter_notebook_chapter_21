import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';

class JobDescriptionPage extends StatefulWidget {
  const JobDescriptionPage({Key? key}) : super(key: key);

  @override
  State<JobDescriptionPage> createState() => _JobDescriptionPageState();
}

class _JobDescriptionPageState extends State<JobDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Center(
                          child: Text(
                            "Job Description",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        )),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 38,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Center(
                              child: Text(
                                "Job Description",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Center(
                              child: Text("Company"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Center(
                              child: Text("Company"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Center(
                              child: Text("Company"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${loremIpsum.substring(0, 150)}",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Requirements",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 4),
                        child: Text(" - ${loremIpsum.substring(0, 50)}"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(.8),
                      Colors.white.withOpacity(.6),
                      Colors.white.withOpacity(.4),
                      Colors.white.withOpacity(.2),
                      Colors.white.withOpacity(.1),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 64,
                      right: 64,
                      bottom: 24,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Center(
                          child: Text(
                            "Apply for this job",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
