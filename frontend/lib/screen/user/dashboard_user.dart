import 'package:flutter/material.dart';

class DashboardUser extends StatelessWidget {
  const DashboardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Helpdesk TIK Unila'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Icon(Icons.person)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Status Tiket Saya",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _StatusCard(
                    title: "TIKET DIAJUKAN",
                    total: 2,
                    today: 1,
                    color: Colors.blue),
                _StatusCard(
                    title: "TIKET DIPROSES",
                    total: 1,
                    today: 0,
                    color: Colors.orange),
                _StatusCard(
                    title: "FEEDBACK", total: 3, today: 0, color: Colors.green),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Tiket Terakhir",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: const Text("Permintaan Reset Password"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Status: Diproses"),
                    Text("Dibuat: 08 Mei 2025, 09:40"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt), label: "Cek Tiket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "Ajukan Tiket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.feedback), label: "Feedback"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}

class _StatusCard extends StatelessWidget {
  final String title;
  final int total;
  final int today;
  final Color color;

  const _StatusCard({
    required this.title,
    required this.total,
    required this.today,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: color.withOpacity(0.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text("Total: $total",
                  style: const TextStyle(color: Colors.white)),
              Text("Hari ini: $today",
                  style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
