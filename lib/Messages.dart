import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body:   CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(
          floating: true,
          backgroundColor: Colors.white,
          title: Text("Messages",
          style: TextStyle(
            color: Colors.black
          ),
          ),
          leading: Icon(Icons.account_circle, color: Colors.blue,),
          actions: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Icon(Icons.settings,color: Colors.blue,),
           )
          ],
          ),

          SliverList(
            delegate: SliverChildListDelegate(
             List.generate(10, (idx) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://specials-images.forbesimg.com/imageserve/5d6ab584fead28000892ba85/960x0.jpg?cropX1=3&cropX2=791&cropY1=47&cropY2=646"),
                      radius: 24, 
                    ),
                    title:Row(
                      children: <Widget>[
                    
                    Flexible(
                      child: Container(
                        child: Text(" Alexa Micle ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                         ),
                        ),
                      ),
                    ), 

                    Flexible(
                      child: Container(
                        child: Text(" @alexamicle",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey
                         ),
                        ),
                      ),
                    ), 
                  ],
                ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hey hi Alexa How are You ?"),
                    ),
                    trailing:  Text(" 4d ",
                    style: TextStyle(
                      fontSize: 14,
                       color: Colors.grey
                     ),
                    ),
                  ),
                );
             
                
              }
            ),
          ),
  
      ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mail_outline),
      ),
       )
   );
  }
  }