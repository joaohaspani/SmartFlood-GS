import 'package:flutter/material.dart';

class FloodAlertScreen extends StatefulWidget {
  @override
  _FloodAlertScreenState createState() => _FloodAlertScreenState();
}

class _FloodAlertScreenState extends State<FloodAlertScreen> {
  double pluviometry = 0;
  String riskLevel = 'Nenhum risco';
  Color riskColor = Colors.green;

  void checkRisk() {
    if (pluviometry < 50) {
      riskLevel = 'Risco Baixo';
      riskColor = Colors.green;
    } else if (pluviometry >= 50 && pluviometry <= 100) {
      riskLevel = 'Risco Moderado';
      riskColor = Colors.orange;
    } else {
      riskLevel = 'Risco Alto!';
      riskColor = Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    checkRisk();

    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoramento de Enchentes'),
        backgroundColor: riskColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Icon(Icons.water_drop, size: 80, color: riskColor),
            SizedBox(height: 20),
            Text('Nível Atual de Pluviosidade:', style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text('${pluviometry.toStringAsFixed(1)} mm',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            Slider(
              value: pluviometry,
              min: 0,
              max: 200,
              divisions: 40,
              label: '${pluviometry.round()} mm',
              activeColor: riskColor,
              onChanged: (double value) {
                setState(() {
                  pluviometry = value;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: riskColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: riskColor, width: 2),
              ),
              child: Column(
                children: [
                  Text('Risco de Enchente:', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Text(riskLevel,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: riskColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}