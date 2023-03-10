import 'package:flutter/material.dart';
import 'info.dart';
import 'info_widget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IdApp(),
  ));
}

class IdApp extends StatelessWidget {
  const IdApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<InfoData> infoDataList = [
      InfoData("Gender","Male"),
      InfoData("Date of Birth", "November 10, 2000"),
      InfoData("Address", "592 G-1, Johar Town"),
      InfoData("Occupation", "Student")
    ];

    List<InfoIcon> infoIconList = [
      InfoIcon(Icons.call, "0317-4639614"),
      InfoIcon(Icons.email, "nauman.sh7099@gmail.com")
    ];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.lightBlue.shade100,
            ],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Owner Id Card"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.lightBlue[400],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              color: Colors.blue.shade700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/img_user.jpg",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Muhammad Nauman Sheikh",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                ...infoDataList.map((info) => InfoDataWidget(infoData: info)).toList(),
                const SizedBox(
                  height: 20,
                ),
                for(InfoIcon infoIcon in infoIconList)...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                            infoIcon.icon
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          infoIcon.text,
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
