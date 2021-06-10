import 'package:flutter/material.dart';
import 'package:uas_upik/sign_in.dart';
import 'homePage.dart';
import 'item/homeItem.dart';
import 'login_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.black,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.shopping_basket_rounded),
                      ),
                    ),
                  ),
                  Text(
                    'Shoes Mardinal',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(Home.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(
              'Item',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
             Navigator.of(context).pushNamed(HomeItem.itemPage);
            },
          ),
            ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              'Log out',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
                signOutGoogle();

                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }), ModalRoute.withName('/'));
             
            },
          ),
        ],
      ),
    );
  }
}
