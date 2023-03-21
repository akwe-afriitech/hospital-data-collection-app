import 'package:flutter/material.dart';
import 'package:hospital_data/screens/hospitals.dart';

class submitted extends StatelessWidget {
  const submitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('submitted Successfully'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 40),
                      shape: StadiumBorder(),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => hospitals()
                          )
                      );
                    },
                    child: Text('Sudmit for another Hospital')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
