import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> optionList = [
    'Total Stream',
    'Online',
    'Offline',
  ];
  final List<String> optionImage = [
    'assets/images/w.png',
    'assets/images/a.png',
    'assets/images/o.png',
  ];

  final List<String> secondImage = [
    'assets/images/play.png',
    'assets/images/pause.png',
    'assets/images/play.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8EDF3),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 180),
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        '+  Add Stream',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Color(0xff25345A),
                      height: 38,
                      minWidth: 150,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.width/2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // color: Colors.white,
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),

                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(25.0),
                                            child: Text(
                                              optionList[index],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey.shade400,
                                                  fontFamily: 'Bodoni Moda'),
                                            ),
                                          ),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 100),
                                              child: Image.asset(
                                                optionImage[index],
                                                scale: 2.5,
                                              ))
                                        ],
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 200),
                                          child: Text(
                                            '99',
                                            style: TextStyle(fontSize: 35),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              /* Text(
                            secondTitle[index],
                            style: TextStyle(fontSize: 18),
                          ),*/
                            ],
                          )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width/3,
                        onPressed: () {},
                        child: Text(
                          'Stream Backup',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: Colors.grey.shade500,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width/3,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Download',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        color: Colors.grey.shade500,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 38,
                      width: MediaQuery.of(context).size.width/3,
                      child: OutlineButton(
                        borderSide: BorderSide(width: 1.0, color: Colors.green),
                        onPressed: () {},
                        child: Text(
                          'Start All',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                        color: Colors.grey.shade500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width/3,
                        onPressed: () {},
                        child: Text(
                          'Stream Backup',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Bodoni Moda'),
                        ),
                        color: Color(0xffFB1E20),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
               
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) => Card(
                            elevation: 0,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    // color: Colors.white,
                                    height: 130,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(30)),

                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 100),
                                          child: RichText(
                                              text: TextSpan(children: [
                                            TextSpan(
                                                text: 'Group: ',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text: 'Quiana Barba',
                                                style: TextStyle(
                                                    color:
                                                        Colors.grey.shade400))
                                          ])),
                                        ),
                                        ListTile(
                                          leading: Image.asset(
                                              'assets/images/w.png'),
                                          title: Text('Cassy Noples'),
                                          subtitle: Row(
                                            children: [
                                              Text('Published'),
                                              Icon(
                                                Icons.toggle_on,
                                                color: Colors.green,
                                              )
                                            ],
                                          ),
                                          trailing: Column(
                                            children: [
                                              Image.asset(
                                                secondImage[index],
                                                height: 30,
                                                width: 30,
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 150),
                                          child: Row(
                                            children: [
                                              Container(
                                                width:40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  border: Border.all()
                                                ),
                                                child: Text("Edit"),

                                                  ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all()
                                                  ),

                                                  child: Text("Delete")),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
        
      ),

    );
    
  }
}
