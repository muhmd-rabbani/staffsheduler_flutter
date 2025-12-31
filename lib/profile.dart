// import 'package:flutter/material.dart';
// import 'package:staffscheduler/personalinfo.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       appBar: AppBar(
//         title: const Text("My Profile"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🔹 PROFILE HEADER
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.05),
//                     blurRadius: 8,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.blue.shade100,
//                     child: const Icon(
//                       Icons.person,
//                       size: 40,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Muhammed Rabbani",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 6),
//                         Text(
//                           "Software Engineer",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         SizedBox(height: 6),
//                         Text(
//                           "Employee ID: SS1024",
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 24),

//             // 🔹 PROFILE INFORMATION
//             const Text(
//               "Profile Information",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             _infoTile(
//               icon: Icons.apartment,
//               title: "Department",
//               value: "IT Department",
//             ),
//             _infoTile(
//               icon: Icons.email,
//               title: "Email",
//               value: "rabbani@staffscheduler.com",
//             ),
//             _infoTile(
//               icon: Icons.phone,
//               title: "Phone",
//               value: "+91 98765 43210",
//             ),

//             // 🔹 PERSONAL INFORMATION (CLICKABLE)
//             InkWell(
//               borderRadius: BorderRadius.circular(16),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const Personalinfo(),
//                   ),
//                 );
//               },
//               child: _infoTile(
//                 icon: Icons.person_outline,
//                 title: "Personal Information",
//                 value: "View personal details",
//                 showArrow: true,
//               ),
//             ),

//             const SizedBox(height: 24),

//             // 🔹 ACCOUNT ACTIONS
//             const Text(
//               "Account Actions",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             _actionTile(
//               icon: Icons.edit,
//               title: "Edit Profile",
//               onTap: () {},
//             ),
//             _actionTile(
//               icon: Icons.logout,
//               title: "Logout",
//               isLogout: true,
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 INFO TILE
//   Widget _infoTile({
//     required IconData icon,
//     required String title,
//     required String value,
//     bool showArrow = false,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 8,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.blue),
//           const SizedBox(width: 14),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 13,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           if (showArrow)
//             const Icon(Icons.arrow_forward_ios,
//                 size: 16, color: Colors.grey),
//         ],
//       ),
//     );
//   }

//   // 🔹 ACTION TILE
//   Widget _actionTile({
//     required IconData icon,
//     required String title,
//     required VoidCallback onTap,
//     bool isLogout = false,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(16),
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 12),
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Row(
//           children: [
//             Icon(
//               icon,
//               color: isLogout ? Colors.red : Colors.blue,
//             ),
//             const SizedBox(width: 14),
//             Expanded(
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: isLogout ? Colors.red : Colors.black,
//                 ),
//               ),
//             ),
//             const Icon(Icons.arrow_forward_ios,
//                 size: 16, color: Colors.grey),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:staffscheduler/login.dart';
import 'package:staffscheduler/personalinfo.dart';
import 'package:staffscheduler/editprofile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 PROFILE HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue.shade100,
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Muhammed Rabbani",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Software Engineer",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Employee ID: SS1024",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // 🔹 PROFILE INFORMATION
            const Text(
              "Profile Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            _infoTile(
              icon: Icons.apartment,
              title: "Department",
              value: "IT Department",
            ),
            _infoTile(
              icon: Icons.email,
              title: "Email",
              value: "rabbani@staffscheduler.com",
            ),
            _infoTile(
              icon: Icons.phone,
              title: "Phone",
              value: "+91 98765 43210",
            ),

            // 🔹 PERSONAL INFORMATION
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Personalinfo(),
                  ),
                );
              },
              child: _infoTile(
                icon: Icons.person_outline,
                title: "Personal Information",
                value: "View personal details",
                showArrow: true,
              ),
            ),

            const SizedBox(height: 24),

            // 🔹 ACCOUNT ACTIONS
            const Text(
              "Account Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            _actionTile(
              icon: Icons.edit,
              title: "Edit Profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Editprofile(),
                  ),
                );
              },
            ),
            _actionTile(
              icon: Icons.logout,
              title: "Logout",
              isLogout: true,
              onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));},
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 INFO TILE
  Widget _infoTile({
    required IconData icon,
    required String title,
    required String value,
    bool showArrow = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          if (showArrow)
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: Colors.grey),
        ],
      ),
    );
  }

  // 🔹 ACTION TILE
  Widget _actionTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isLogout ? Colors.red : Colors.blue,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isLogout ? Colors.red : Colors.black,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
