import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DrawerTab extends StatefulWidget {
  const DrawerTab({super.key});

  @override
  State<DrawerTab> createState() => _DrawerTabState();
}

class _DrawerTabState extends State<DrawerTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Tab"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Profile',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            ),
          ]),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
               DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage('https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/437375371_2749453931885049_3371458224864587371_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeErdtlTeiVsy5SnxwwdP4xLj6sez7ucHFuPqx7Pu5wcW0A1x32jCAaKO_8FsKzq9qYv-Okdm2OjHCyeLD1ty6Ti&_nc_ohc=tk3oCSeQrQMQ7kNvwGBw8ha&_nc_oc=AdnH_CQc8--Grrhvlax5t7moE_NgGnHqIbtWUYsWd2xXGWHIQ17hF4QQ_mdulITCSMg&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=8MhYvhX5lu5tJytwWgo5zQ&oh=00_AfKMtnaaWGDkCtbp0AVq_MxBNPk0yFqxPHdOkkiDnciVrg&oe=682E623E'),

                    ),
                    SizedBox(height: 10,),
                    Text('Rocky',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text('rocky@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),

                  ],
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Home'),
            ),
            Center(
              child: Text('Profile'),
            ),
            Center(
              child: Text('Settings'),
            ),

      ],
      ),
      ),
    );
  }
}
