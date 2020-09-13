import 'package:corona_api/network/end_points.dart';
import 'package:corona_api/network/network_handler.dart';
import 'package:corona_api/widget/corona_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoronaHome extends StatefulWidget {

  @override
  _CoronaHomeState createState() => _CoronaHomeState();
}

class _CoronaHomeState extends State<CoronaHome> {

  dynamic coronaSummary;
  dynamic coronaMyth;
  @override

  void initState() {
    requestServer();
    super.initState();
  }

  void requestServer(){
    NetworkHandler networkHandler= NetworkHandler();
    var summaryRequest= networkHandler.requestToServer(SUMMARY_ENDPOINTS);
    var mythRequest= networkHandler.requestToServer(MYTH_URL);

    setState(() {
      coronaSummary=summaryRequest;
      coronaMyth=mythRequest;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Nepal Corona Updates')),
      ),
      body: ListView(
        children: [
          Padding(
      padding: EdgeInsets.all(20.0),
          child:Card(
            
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [

                  CoronaCard(
                    label: 'Tested positive',
                    value: coronaSummary ['tested_positive'],
                  ),

                  CoronaCard(
                    label: 'Tested negative',
                    value: coronaSummary['tested_negative'],
                  ),

                  CoronaCard(
                    label: 'In Isolation' ,
                  ),

                  CoronaCard(
                    label: 'Quarantined',
                  ),

                  CoronaCard(
                    label: 'Tested RDT',
                  ),

                  CoronaCard(
                    label: 'Pending Result',
                  ),

                  CoronaCard(
                    label: 'Total Recovered',
                  ),


                  CoronaCard(
                    label: 'Deaths',
                  ),






                ],
              ),
            ),
          ),

          )],
      ),
    );
  }
}
