import 'package:flutter/material.dart';

class Leaverequest extends StatefulWidget {
  const Leaverequest({super.key});

  @override
  State<Leaverequest> createState() => _LeaverequestState();
}

class _LeaverequestState extends State<Leaverequest> {
  // 🎨 Colors
  static const primaryColor = Color(0xFF334155);
  static const backgroundColor = Color(0xFFF8FAFC);
  static const accentColor = Color(0xFF00346B);
  static const textColor = Color(0xFF0F172A);

  // 🔽 State variables
  String leaveType = "Casual Leave";
  bool halfDay = false;
  DateTime? fromDate;
  DateTime? toDate;

  final TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      // ✅ APP BAR WITH BACK BUTTON
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: primaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Leave Request",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _label("Select Leave Type *"),
            _leaveDropdown(),

            _label("From Date *"),
            _dateField(
              hint: "Select start date",
              date: fromDate,
              onTap: () => _pickDate(isFrom: true),
            ),

            _label("To Date *"),
            _dateField(
              hint: "Select end date",
              date: toDate,
              onTap: () => _pickDate(isFrom: false),
            ),

            _label("Reason for Leave *"),
            _reasonField(),

            const SizedBox(height: 12),

            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Emergency Leave",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              activeColor: accentColor,
              value: halfDay,
              onChanged: (value) {
                setState(() {
                  halfDay = value;
                });
              },
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  // Submit leave request logic
                },
                child: const Text(
                  "Submit Leave Request",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------- Helper Widgets ----------

  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _leaveDropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: leaveType,
          isExpanded: true,
          items: const [
            DropdownMenuItem(value: "Casual Leave", child: Text("Casual Leave")),
            DropdownMenuItem(value: "Sick Leave", child: Text("Sick Leave")),
            DropdownMenuItem(value: "Earned Leave", child: Text("Earned Leave")),
            DropdownMenuItem(
                value: "Emergency Leave",
                child: Text("Emergency Leave")),
          ],
          onChanged: (value) {
            setState(() {
              leaveType = value!;
            });
          },
        ),
      ),
    );
  }

  Widget _dateField({
    required String hint,
    required DateTime? date,
    required VoidCallback onTap,
  }) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: date == null
            ? hint
            : "${date.day}/${date.month}/${date.year}",
        suffixIcon: const Icon(Icons.calendar_today, color: primaryColor),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _reasonField() {
    return TextFormField(
      controller: reasonController,
      maxLines: 3,
      maxLength: 300,
      decoration: InputDecoration(
        hintText: "Explain reason for leave",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // ---------- Date Picker ----------

  Future<void> _pickDate({required bool isFrom}) async {
    DateTime initialDate = DateTime.now();

    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        if (isFrom) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }
}

