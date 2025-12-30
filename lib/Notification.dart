import 'package:flutter/material.dart';

class Notification1 extends StatelessWidget {
  const Notification1({super.key});

  // Colors (same theme as other pages)
  static const primaryColor = Color(0xFF334155);
  static const backgroundColor = Color(0xFFF8FAFC);
  static const accentColor = Color(0xFF2563EB);
  static const textColor = Color(0xFF0F172A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryColor),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [

          _notificationCard(
            title: "Welcome to the Company",
            subtitle: "Your account has been successfully created",
            time: "Monday",
            icon: Icons.notifications_active,
          ),

          _notificationCard(
            title: "Leave Approved",
            subtitle: "Your leave request has been approved",
            time: "Yesterday",
            icon: Icons.check_circle,
          ),

          _notificationCard(
            title: "Shift Reminder",
            subtitle: "You have a shift tomorrow at 9:00 AM",
            time: "2 days ago",
            icon: Icons.schedule,
          ),
        ],
      ),
    );
  }

  // ---------- Notification Card ----------

  Widget _notificationCard({
    required String title,
    required String subtitle,
    required String time,
    required IconData icon,
  }) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: accentColor.withOpacity(0.15),
          child: Icon(icon, color: accentColor),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: Text(
          time,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
