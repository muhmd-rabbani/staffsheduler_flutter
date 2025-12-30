import 'package:flutter/material.dart';

class Complaint extends StatefulWidget {
  const Complaint({super.key});

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  // 🎨 Colors
  static const primaryColor = Color(0xFF334155);
  static const backgroundColor = Color(0xFFF8FAFC);
  static const accentColor = Color(0xFF2563EB);
  static const textColor = Color(0xFF0F172A);

  // 🔽 Dropdown value
  String selectedCategory = "Shift Issue";

  // 🔘 Priority value
  String selectedPriority = "Low";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryColor),
        title: const Text(
          "Complaints",
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

            _label("Select Complaint Category *"),
            _dropdown(),

            _label("Complaint Title *"),
            _textField("Short summary of the issue"),

            _label("Describe Your Issue *"),
            _descriptionField(),

            const SizedBox(height: 16),

            
            // const SizedBox(height: 24),

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
                  // submit logic here
                },
                child: const Text(
                  "Submit Complaint",
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

  Widget _textField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _descriptionField() {
    return TextFormField(
      maxLines: 4,
      maxLength: 500,
      decoration: InputDecoration(
        hintText: "Explain your complaint clearly...",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // ✅ WORKING DROPDOWN
  Widget _dropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCategory,
          isExpanded: true,
          items: const [
            DropdownMenuItem(value: "Work Environment", child: Text("Work Environment")),
            DropdownMenuItem(value: "Shift Issue", child: Text("Shift Issue")),
            DropdownMenuItem(value: "Salary / Payment", child: Text("Salary / Payment")),
            DropdownMenuItem(value: "Manager / Staff", child: Text("Manager / Staff")),
            DropdownMenuItem(value: "Technical Issue", child: Text("Technical Issue")),
            DropdownMenuItem(value: "Other", child: Text("Other")),
          ],
          onChanged: (value) {
            setState(() {
              selectedCategory = value!;
            });
          },
        ),
      ),
    );
  }

  // ✅ SELECTABLE PRIORITY CHIP
  Widget _priorityChip(String priority) {
    final bool isSelected = selectedPriority == priority;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPriority = priority;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected
                ? accentColor.withOpacity(0.15)
                : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected
                  ? accentColor
                  : Colors.grey.shade300,
            ),
          ),
          child: Center(
            child: Text(
              priority,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? accentColor
                    : textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
