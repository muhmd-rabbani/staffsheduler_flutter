import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      bottomNavigationBar: _bottomNav(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                const SizedBox(height: 16),
                _upcomingShiftCard(),
                const SizedBox(height: 16),
                _gridCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔹 Header
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning,",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 4),
            Text(
              " ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Stack(
          children: [
            const Icon(Icons.notifications, size: 28),
            Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.red,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 8, color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  // 🔹 Upcoming Shift Card
  Widget _upcomingShiftCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFB3D9FF), Color(0xFF6FB1FC)],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Upcoming Shift",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 8),
                const Text("Tue, Apr 25 | 9:00 AM - 5:00 PM"),
                const SizedBox(height: 4),
                const Text("IT Department"),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("View Shift"),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.qr_code, size: 50),
          )
        ],
      ),
    );
  }

  // 🔹 Grid Cards
  Widget _gridCards() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        _card("Departments", Icons.apartment, "View assigned departments"),
        _card("Departments", Icons.apartment, "2 Pending", highlight: true),
        _card("Complaints", Icons.report, "1 New Reply", alert: true),
        _card("Leave Request", Icons.event, "2 Pending\n28 Working Days"),
        _card("Complaints", Icons.report, "Send complaint", alert: true),
        _card("Attendance", Icons.check_circle, "Today: Present (5)"),
      ],
    );
  }

  Widget _card(String title, IconData icon, String subtitle,
      {bool alert = false, bool highlight = false}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: alert
                  ? Colors.red
                  : highlight
                      ? Colors.green
                      : Colors.blue),
          const SizedBox(height: 12),
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: TextStyle(
              color: alert
                  ? Colors.red
                  : highlight
                      ? Colors.green
                      : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Bottom Navigation
  Widget _bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Shifts"),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
