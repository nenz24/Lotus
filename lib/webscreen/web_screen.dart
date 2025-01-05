import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/webscreen/detail_screen.dart';
import 'package:myapp/webscreen/profile_screen.dart';
import 'package:myapp/webscreen/shopping.dart';
import 'package:myapp/second-main.dart';
import '../model/data.dart';

class FirstScreenWeb extends StatelessWidget {
  final gridCount;
  const FirstScreenWeb({Key? key, required this.gridCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondMain();
                      }));
                    },
                    child: Text(
                      'Shop',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact us',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProfileWeb();
                      }));
                    },
                    icon: Icon(Icons.person),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg1.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                    padding: EdgeInsets.only(top: 120, left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 400,
                          padding: EdgeInsets.only(bottom: 5, top: 25),
                          child: Text(
                            'Find Your Perfect Jewelry Match',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(top: 15.0, bottom: 25),
                          child: Text(
                            'Explore Our Wide Range of Jewelry and Accessories to Showcase Your Unique Style',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 50),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              side:
                                  BorderSide(width: 0.5, color: Colors.white)),
                          child: Text(
                            'Start Shopping',
                            style: TextStyle(
                                fontSize: 11, fontFamily: 'Montserrat'),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Shopping(
                                gridCount: dataItemsList.length,
                              );
                            }));
                          },
                        ),
                      ],
                    ))),
            SizedBox(height: 50),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Collections',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Check out our new collections',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: gridCount,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: dataItemsList
                            .where((data) => data.isNew)
                            .toList()
                            .length,
                        itemBuilder: (context, index) {
                          final newData = dataItemsList
                              .where((data) => data.isNew)
                              .toList();
                          final data = newData[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreenWeb(data: data);
                              }));
                            },
                            child: Card(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: Image.asset(data.logo,
                                        fit: BoxFit.cover)),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    data.name,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, bottom: 8.0),
                                  child: Text(
                                    '\$${data.price}',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: ElevatedButton(
                              iconAlignment: IconAlignment.end,
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 40),
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  foregroundColor: Colors.black,
                                  side: BorderSide(
                                      width: 0.5, color: Colors.grey),
                                  backgroundColor: Colors.transparent),
                              onPressed: () {},
                              child: Text(
                                'All Collection',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Best Sellers',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Top Rated Jewelry From Our Collections',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 1,
                        ),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final Data items = dataItemsList[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreenWeb(data: items);
                              }));
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(items.logo),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: Text(
                                    items.name,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 50),
                    ]))
          ],
        )));
  }
}
