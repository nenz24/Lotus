import 'package:flutter/material.dart';
import '../model/data.dart';
import 'package:badges/badges.dart' as badges;

class DetailScreen extends StatefulWidget {
  final Data data;
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int cartItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
              title: Center(
                  child: Text(
                widget.data.name,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              )),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: badges.Badge(
                    badgeContent: Text('${cartItems}'),
                    showBadge: true,
                    position: badges.BadgePosition.topEnd(),
                    badgeAnimation:
                        badges.BadgeAnimation.scale(toAnimate: true),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: Colors.yellow,
                      elevation: 4,
                      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined),
                      iconSize: 30,
                    ),
                  ),
                ),
              ],
              pinned: false,
              floating: true,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 2,
                    child: Center(
                      child: Image.asset(
                        widget.data.logo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Detailed Product',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    widget.data.description,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ]),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              cartItems++;
            });
            ;
          },
          child: Text('Add To Cart'),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow, foregroundColor: Colors.black),
        ),
      ),
    );
  }
}
