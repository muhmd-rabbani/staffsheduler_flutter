import 'package:flutter/material.dart';
import 'package:staffscheduler/Complaint.dart';
import 'package:staffscheduler/Leaverequest.dart';
import 'package:staffscheduler/Upcomingshifts.dart';
import 'package:staffscheduler/department.dart';
import 'package:staffscheduler/attendance.dart';
import 'package:staffscheduler/Complaint.dart';
import 'package:staffscheduler/notification.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context),
                const SizedBox(height: 16),
                _upcomingShiftCard(context),
                const SizedBox(height: 20),
                _listCards(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔹 Header
  Widget _header(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.badge, size: 36, color: Colors.blue),
              SizedBox(width: 10),
              Text(
                "StaffScheduler",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Stack(
            children:  [
              IconButton(icon: Icon(Icons.notifications, size: 28),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Notification1(),));
              },),
              // Positioned(
              //   right: 0,
              //   child: CircleAvatar(
              //     radius: 6,
              //     backgroundColor: Colors.red,
              //     child: Text(
              //       "1",
              //       style: TextStyle(fontSize: 8, color: Colors.white),
              //     ),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Upcoming Shift Card
  Widget _upcomingShiftCard(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
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
                const Text(
                  "Upcoming Shift",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                const Text("Tue, Apr 25 | 9:00 AM - 5:00 PM"),
                const SizedBox(height: 6),
                const Text("IT Department"),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Upcomingshifts(),
                      ),
                    );
                  },
                  child: const Text("View Shift"),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.calendar_today,
              size: 34,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 List Cards with Navigation
  Widget _listCards(BuildContext context) {
    return Column(
      children: [
        _listCard(
          title: "Department",
          icon: Icons.apartment,
          subtitle: "View your department",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Department()),
            );
          },
        ),
        const SizedBox(height: 16),
        _listCard(
          title: "Complaints",
          icon: Icons.report,
          subtitle: "View & raise complaints",
          alert: true,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Complaint()),
            );
          },
        ),
        const SizedBox(height: 16),
        _listCard(
          title: "Leave Request",
          icon: Icons.event,
          subtitle: "Apply & view leave status",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Leaverequest()),
            );
          },
        ),
      ],
    );
  }

  Widget _listCard({
    required String title,
    required IconData icon,
    required String subtitle,
    required VoidCallback onTap,
    bool alert = false,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: alert ? Colors.red : Colors.blue,
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: alert ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

