import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double count=0.0;
  double countTwo=0.0;
  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      count++;
                    });
                  }, child: Text('+')),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      countTwo++;
                    });
                    double finalcountTwo = countTwo;
                  }, child: Text('+')),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text('$count',style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[700]

                  ),),

                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text('$countTwo',style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[700]
                  ),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      count--;
                    });

                  }, child: Text('-')),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      countTwo--;
                    });

                  }, child: Text('-')),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                       total = count + countTwo;
                    });
                  }, child: Text('+')),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      total = count - countTwo;
                    });
                  }, child: Text('-')),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      total = count * countTwo;
                    });
                  }, child: Text('*')),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      total = count / countTwo;
                    });
                  }, child: Text('/')),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Result = $total',style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue[700]
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
