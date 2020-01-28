import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
          floating: true,
          backgroundColor: Colors.white,
         // centerTitle: true, 
          title: Text("Home",
          style: TextStyle(
            color: Colors.black
          ),
          ),
          leading: Icon(Icons.account_circle, color: Colors.blue,),
          actions: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Icon(Icons.star_border,color: Colors.blue,),
           )
          ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
             List.generate(10, (idx) {
                return Card(
                    child: Column(
                      children: <Widget>[
                    
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1192473461160988672/SPbu5XAg_400x400.jpg"),
                          ),
                          title:  GestureDetector(
                                child: Column(
                                  children: <Widget>[
                                    
                                    Row(
                                      children: <Widget>[

                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                          child: Text("Tushar Nikam",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                          child: Text("@champ96k",
                                           style: TextStyle(
                                            color: Colors.grey,
                                             fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                          child: Text("2h",
                                           style: TextStyle(
                                             color: Colors.grey,
                                             fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey,size: 16,),
                                        )

                                      ],
                                    ),
                                    Text("Over the past year, the Google Dataset Search team has been listening to feedback from users. Today, it is officially out of beta with many new improvements helping scientists, journalists, students and more find the data they need for their research"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                      child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                  child: new ClipRRect(
                                      borderRadius:BorderRadius.circular(15.0),
                                      child: ('' == null)
                                          ? CircularProgressIndicator()
                                          : Image(
                                              image: NetworkImage("https://i.ytimg.com/vi/mbktVehGkUg/maxresdefault.jpg"), 
                                            ))),
                                    ),
                                  ],
                                )
                                ),
                          
                         //  trailing: Icon(Icons.keyboard_arrow_down),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 42),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8), 
                                child: IconButton(
                                  icon: Icon(Icons.comment, size: 17, color:Colors.grey),
                                  onPressed: () {},
                                ),
                              ),

                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8), 
                                 child: IconButton(
                                  icon: Icon(Icons.repeat,size: 17, color:Colors.grey),
                                  onPressed: () {},
                              ),
                               ),

                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8), 
                                 child: IconButton(
                                  icon: Icon(Icons.favorite_border,size: 17, color:Colors.grey), 
                                  onPressed: () {},
                              ),
                               ),

                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8), 
                                 child: IconButton(
                                  icon: Icon(Icons.share,size: 17, color:Colors.grey),
                                  onPressed: () {},
                              ),
                               )
                            ],
                          ),
                        )


                      ],
                    ),
                  );


                
              }
            ),
          )
  
      ),
        ]
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      
    );

  }
      
}

      
      
    
  
