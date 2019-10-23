import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Image.asset(
                'assets/images/back.png',
              )),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF8F9F9),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(16, 24, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended for you',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Container(
                      child: Image.asset(
                    'assets/images/funnel.png',
                    height: 16,
                  ))
                ],
              ),
            ),
            for (int i = 0; i < 5; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color(0xFFE6E6E6)),
                ),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                            image: DecorationImage(image: AssetImage('assets/images/background$i.jpg'), fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 16,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xFF7D59EE),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text('9.1'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Iceland - 6D 5N',
                                style: TextStyle(color: Color(0xFF2A2A2A)),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Complete Guided Tour',
                                style: TextStyle(color: Color(0xFFA9A9BA), fontSize: 11.5),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '\$2,250',
                            style: TextStyle(color: Color(0xFF2A2A2A), fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
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
