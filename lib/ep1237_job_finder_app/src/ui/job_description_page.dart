import 'package:flutter/material.dart';

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
              child: Column(
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
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  SizedBox(
                    height: 42,
                    child: ListView(
                      children: [],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
