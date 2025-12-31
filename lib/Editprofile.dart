import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text("Edit Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 PROFILE IMAGE
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.blue.shade100,
                    child: const Icon(
                      Icons.person,
                      size: 48,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                    label: const Text("Change Photo"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // 🔹 BASIC INFO
            const Text(
              "Basic Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _textField(
              label: "Full Name",
              icon: Icons.person,
              initialValue: "Muhammed Rabbani",
            ),
            _textField(
              label: "Email",
              icon: Icons.email,
              initialValue: "rabbani@staffscheduler.com",
              enabled: false, // usually not editable
            ),
            _textField(
              label: "Phone",
              icon: Icons.phone,
              initialValue: "+91 98765 43210",
            ),

            const SizedBox(height: 28),

            // 🔹 WORK INFO
            const Text(
              "Work Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _textField(
              label: "Department",
              icon: Icons.apartment,
              initialValue: "IT Department",
              enabled: false,
            ),
            _textField(
              label: "Role",
              icon: Icons.work,
              initialValue: "Software Engineer",
              enabled: false,
            ),

            const SizedBox(height: 36),

            // 🔹 SAVE BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Profile updated successfully"),
                    ),
                  );
                },
                child: const Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 REUSABLE TEXT FIELD
  Widget _textField({
    required String label,
    required IconData icon,
    String? initialValue,
    bool enabled = true,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        initialValue: initialValue,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: enabled ? Colors.white : Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
