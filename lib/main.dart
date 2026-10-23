import 'package:flutter/material.dart';
void main() => runApp(QaveloApp());
class QaveloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QAVELO', debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: QaveloHome(),
    );
  }
}
class QaveloHome extends StatefulWidget {
  @override
  _QaveloHomeState createState() => _QaveloHomeState();
}
class _QaveloHomeState extends State<QaveloHome> {
  bool isSuperAdmin = true;
  Map<String, bool> iaControl = {'doublage': false,'wallet': false,'videos': false,'support': false};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF6B00),
        title: Row(children: [Text('Q', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)), Text('AVELO', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white))]),
        actions: [Padding(padding: EdgeInsets.all(12), child: Icon(Icons.account_balance_wallet))],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('World Connected 🌍', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Container(height: 350, decoration: BoxDecoration(color: Color(0xFF1A1A1A), borderRadius: BorderRadius.circular(16)), child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.play_circle, size: 80, color: Color(0xFFFF6B00)), SizedBox(height: 12), Text('Vidéos Doublées Illimitées 🎬', style: TextStyle(color: Colors.white))]))),
          SizedBox(height: 16),
          Card(color: Color(0xFF1A1A1A), child: ListTile(leading: Icon(Icons.wallet, color: Color(0xFFFF6B00)), title: Text('Wallet', style: TextStyle(color: Colors.white)), subtitle: Text('Support Creator \$1 / \$5', style: TextStyle(color: Color(0xFFFF6B00))), trailing: Icon(Icons.arrow_forward, color: Colors.grey))),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFF111111), borderRadius: BorderRadius.circular(16), border: Border.all(color: Color(0xFFFF6B00), width: 1.5)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('QAVELO IA CONTROL CENTER 🤖', style: TextStyle(color: Color(0xFFFF6B00), fontWeight: FontWeight.bold, fontSize: 16)),
              Text('Super Admin: nicanor96', style: TextStyle(color: Colors.grey, fontSize: 12)),
              Divider(color: Colors.grey[800]),
              CheckboxListTile(title: Text('Doublé Auto - Voir & Gérer 💰', style: TextStyle(color: Colors.white, fontSize: 13)), value: iaControl['doublage'], activeColor: Color(0xFFFF6B00), onChanged: (v) => setState(() => iaControl['doublage'] = v!)),
              CheckboxListTile(title: Text('Wallet & Argent ⚙️', style: TextStyle(color: Colors.white, fontSize: 13)), value: iaControl['wallet'], activeColor: Color(0xFFFF6B00), onChanged: (v) => setState(() => iaControl['wallet'] = v!)),
              CheckboxListTile(title: Text('Vidéos Illimitées 💳', style: TextStyle(color: Colors.white, fontSize: 13)), value: iaControl['videos'], activeColor: Color(0xFFFF6B00), onChanged: (v) => setState(() => iaControl['videos'] = v!)),
              CheckboxListTile(title: Text('Support Créateur 👥', style: TextStyle(color: Colors.white, fontSize: 13)), value: iaControl['support'], activeColor: Color(0xFFFF6B00), onChanged: (v) => setState(() => iaControl['support'] = v!)),
              SizedBox(height: 12),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFF6B00)), onPressed: () {}, child: Text('SAUVEGARDER LES DROITS IA', style: TextStyle(color: Colors.white))),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black, selectedItemColor: Color(0xFFFF6B00), unselectedItemColor: Colors.grey, items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Vidéos'), BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')]),
    );
  }
}
