import 'package:flutter/material.dart';
import 'package:staffscheduler/Qr.dart';


class Attendance extends StatelessWidget {
  const Attendance({super.key});

  // Mock present days (replace with backend data later)
  final List<int> presentDays = const [1, 2, 5, 7, 10, 12, 15, 18, 21, 25];

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String monthName =
        "${_monthName(now.month)} ${now.year}";
    final int daysInMonth = _daysInMonth(now.year, now.month);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 MARK ATTENDANCE (QR)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QrScannerPage(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.qr_code_scanner,
                        size: 32, color: Colors.blue),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        "Mark Attendance\nScan QR Code",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🔹 TODAY ATTENDANCE
            const Text(
              "Today's Attendance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading:
                    const Icon(Icons.check_circle, color: Colors.green),
                title: const Text("Present"),
                subtitle: const Text("Date: Today"),
              ),
            ),

            const SizedBox(height: 24),

            // 🔹 PAST ATTENDANCE
            const Text(
              "Past Attendance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(
              monthName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 12),

            _calendarView(daysInMonth),
          ],
        ),
      ),
    );
  }

  // 🔹 Calendar Grid
  Widget _calendarView(int daysInMonth) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: daysInMonth,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (context, index) {
        final day = index + 1;
        final isPresent = presentDays.contains(day);

        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isPresent ? Colors.green : Colors.grey.shade300,
              width: isPresent ? 2 : 1,
            ),
          ),
          child: Text(
            day.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isPresent ? Colors.green : Colors.black,
            ),
          ),
        );
      },
    );
  }

  // 🔹 Helpers
  int _daysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }

  String _monthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    return months[month - 1];
  }
}
