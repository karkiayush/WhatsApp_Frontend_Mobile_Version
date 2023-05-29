// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          /*title of the appbar*/
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

          /*Naviagtion section of appbar*/
          bottom: const TabBar(
            labelStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              /*These tabs view under it*/
              /*note kunai eauta icon lai tab le wrap garesi sabbai buttom widget ko tabs haru elevated hunxa*/
              Tab(child: Icon(Icons.people_alt_rounded)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),

          /*For the pop up icons like search etc*/
          actions: [
            /*camera icon*/
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 14,
            ),
            SizedBox(
              width: 10,
            ),

            /**searchbar*/
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),

            /*vertical more icon*/
            // Icon(Icons.more_vert),

            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                /*Menu's contents*/

                /*item 1*/
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("New group"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.broadcast_on_home,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("New broadcast"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.device_hub,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Linked devices"),
                    ],
                  ),
                ),

                /*Starred Message*/
                PopupMenuItem(
                  value: 4,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star_border,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Starred messages"),
                    ],
                  ),
                ),

                /*Log out*/
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Log Out"),
                    ],
                  ),
                ),

                /*item 2*/
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("Settings"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            //Listview makes the scrollable content

            /*People content*/
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    SizedBox(height: 40),
                    Image(
                      image: AssetImage('images/society.png'),
                      height: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Introducing Communities',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Easily organise your related groups and send\n announcements. Now, you communities, like\n neighbourhoods or schools, can have their own \nspace.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                );
              },
            ),

            /*Chats content*/
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                  ),
                  title: Text(
                    'Krisha Bhattarai',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: const [
                      Icon(
                        Icons.check_circle_outline,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Hello aayush'),
                    ],
                  ),
                  trailing: Text('11/05/2023'),
                );
              },
            ),

            /*status content*/
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1685122956432-54551948f8fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                      radius: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 2.0,
                            right: 1,
                            child: Icon(
                              Icons.add_circle,
                              size: 25.0,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My status",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Tap to add status update',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 6, 0, 20),
                  child: Text(
                    "Viewed updates",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://plus.unsplash.com/premium_photo-1677442691344-3b004e60de51?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kunal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Yesterday. 4:30 pm',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                /*Hoz divider*/
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.lock),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Your status update are',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        ' end-to-end encrpyted',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /*Calls Record content*/
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80'),
                    ),
                    title: Text(
                      'Alaister Cook',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(children: const [
                      Icon(Icons.call_missed_outgoing_sharp),
                      Text("01/05/2023"),
                    ]),
                    trailing:
                        Icon(index % 2 == 0 ? Icons.call : Icons.video_call),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
