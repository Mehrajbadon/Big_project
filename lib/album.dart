import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  final List<String> names = [
    'Mehraj Ibne Halim', 'Aftab Ibne Halim', 'Mahtab Ibne Halim'];
  final List<String> work = ["Apps Developer", "Software Engineer","Senior Officer"];
  final List<String> images =[
    'assets/images/mehraj_pic.jpg',
    'assets/images/mehraj_pic.jpg',
    'assets/images/mehraj_pic.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xDDB7E3FF);
    return Scaffold(
        appBar: AppBar(title: Text("Album",style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: myColor,),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Card(
                color: myColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,8,0,8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(names[index],
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5,0,0,0),
                          child: Text(work[index],
                              style: TextStyle(fontSize: 13)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
    );
  }
}
