import 'package:flutter/material.dart';

class FullStart extends StatefulWidget {
  const FullStart({super.key});

  @override
  State<FullStart> createState() => _FullStartState();
}

class _FullStartState extends State<FullStart> {
  late double screenWidth;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenWidth = MediaQuery.of(context).size.width;
  }

  int number_like = 41;
  var like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://plus.unsplash.com/premium_photo-1690489323667-ea52e341b184?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=953&q=80',
            width: screenWidth,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Osenchinen Lake Campground',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Kandersteg, Swizerland',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                like = !like;
                                if (like) {
                                  number_like += 1;
                                }
                                if (!like) {
                                  number_like -= 1;
                                }
                              });
                            },
                            icon: Icon(
                                like ? Icons.star : Icons.star_border_outlined,
                                color: Colors.orange,
                                size: 30),
                          ),
                          Text('$number_like')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.call, color: Colors.blue),
                            ],
                          ),
                          Row(
                            children: [Text('CALL')],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.near_me,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          Row(
                            children: [Text('ROUTE')],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          Row(
                            children: [Text('SHARE')],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 370,
                child: Text(
                    'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by half -hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.'),
              )
            ],
          )
        ],
      ),
    );
  }
}
