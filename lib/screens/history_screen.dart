import 'package:flutter/material.dart';
import '../models/history_model.dart';
import '../widgets/history_card.dart';

class HistoryScreen extends StatelessWidget {
  final List<HistoryData> historyData = [
    HistoryData(date: '03/06/2025', location: 'Rua das Flores, SP', pluviometry: '110 mm', risk: 'Risco Alto'),
    HistoryData(date: '28/05/2025', location: 'Av. Brasil, RJ', pluviometry: '85 mm', risk: 'Risco Moderado'),
    HistoryData(date: '15/05/2025', location: 'Centro, BH', pluviometry: '42 mm', risk: 'Risco Baixo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Histórico de Ocorrências')),
      body: ListView.builder(
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          return HistoryCard(data: historyData[index]);
        },
      ),
    );
  }
}