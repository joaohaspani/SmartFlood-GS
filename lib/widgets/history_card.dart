import 'package:flutter/material.dart';
import '../models/history_model.dart';

class HistoryCard extends StatelessWidget {
  final HistoryData data;

  HistoryCard({required this.data});

  @override
  Widget build(BuildContext context) {
    Color riskColor;
    if (data.risk == 'Risco Alto') riskColor = Colors.red;
    else if (data.risk == 'Risco Moderado') riskColor = Colors.orange;
    else riskColor = Colors.green;

    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        leading: Icon(Icons.water_drop, color: riskColor),
        title: Text(data.location),
        subtitle: Text('Data: ${data.date} - ${data.pluviometry}'),
        trailing: Text(
          data.risk,
          style: TextStyle(fontWeight: FontWeight.bold, color: riskColor),
        ),
      ),
    );
  }
}