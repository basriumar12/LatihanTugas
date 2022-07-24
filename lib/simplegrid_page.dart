import 'package:flutter/material.dart';

class SimpleGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Grid Veiw'),
        backgroundColor: Colors.amber,
      ),

      body: GridView.count(crossAxisCount: 3,
        children: List.generate(12, (index) {
          int nIndex = index + 1;
          String dataIndex = "$nIndex";

          return Center (
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.amber,
                height: 100.0,
                width: 100.0,
                child: Text(
                  'Data Ke - $dataIndex', style: Theme.of(context).textTheme.headline1,
                ),
              )
          );
        }),
      ),
    );
  }
}
