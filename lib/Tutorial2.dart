import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()));

class Home extends StatelessWidget {
  @override // build method override StatelessWidget
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[500]
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //mainAxis = x if row, y if column
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('hello.'),
            SizedBox(height: 10),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: (){
                      print('You pressed me.');
                    },
                    color: Colors.amber,
                    child: Text('Flat')
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RaisedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.mail),
                    color: Colors.amber,
                    label: Text('Raised'),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/unsplash.jpg'),
                  radius: 10
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.alternate_email),
                ),
                Divider(
                  color: Colors.amber,
                  height: 50,
                ),
                Icon(
                  Icons.airport_shuttle,
                  color: Colors.lightBlue,
                  size: 15
                )
              ],
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.fromLTRB(10,0,10,0),
              child: Text('inside')
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text('bye')
            ),
            Image(
              image: AssetImage('assets/unsplash.jpg'),
              height: 100,
              width: 50
            ),
            Image(
              image: NetworkImage('https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80'),
              height: 100,
              width: 50
            )
            ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
        )
    )
    ;
  }
}
