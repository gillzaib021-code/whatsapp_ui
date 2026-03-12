import 'package:flutter/material.dart';
import 'package:whatsappui/calls_screen.dart';
import 'package:whatsappui/chat_screen.dart';
import 'package:whatsappui/status_screen.dart';

import 'package:whatsappui/updates_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
         appBar: AppBar(
          title: Text('whatsapp',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
            PopupMenuButton(
            iconColor: Colors.white,
              itemBuilder: (context){
              
            return  [
                PopupMenuItem(child: Text('Settings')),
                 PopupMenuItem(child: Text('Group')),
                  PopupMenuItem(child: Text('Logout')),
              ];
            }),
            
          ],
          bottom: TabBar(
           indicatorColor: Colors.white,
           labelColor: Colors.white,
            tabs: [
            Tab(text: 'chats',),
            Tab(text: 'updates',),
            Tab(text: 'status',),
            Tab(text: 'calls',),
          ]),
         ),
         
           body: TabBarView(children: [
            ChatScreen(),
           UpdatesScreen(),
           StatusScreen(),
            CallsScreen(),
           ]),

          floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.teal,
          child: Icon(Icons.message),

          ),

      )
    );
  }
}