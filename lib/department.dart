// import 'package:flutter/material.dart';

// class Department extends StatelessWidget {
//   const Department({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       appBar: AppBar(
//         title: const Text("My Department"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🔹 TOP DEPARTMENT CARD (CREATIVE)
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF6FB1FC), Color(0xFF4A90E2)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(14),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                     child: const Icon(
//                       Icons.computer,
//                       size: 34,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "IT Department",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         const Text(
//                           "Software Development & Support",
//                           style: TextStyle(
//                             color: Colors.white70,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 12, vertical: 6),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: const Text(
//                             "Software Engineer",
//                             style: TextStyle(
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 12,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 28),

//             // 🔹 SECTION TITLE
//             const Text(
//               "Department Information",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 16),

//             // 🔹 INFO CARDS
//             _infoTile(
//               icon: Icons.badge,
//               title: "Department Name",
//               value: "IT Department",
//             ),
//             _infoTile(
//               icon: Icons.work,
//               title: "Role",
//               value: "Software Engineer",
//             ),
//             _infoTile(
//               icon: Icons.person,
//               title: "Reporting Manager",
//               value: "Project Manager",
//             ),
//             _infoTile(
//               icon: Icons.access_time,
//               title: "Working Hours",
//               value: "9:00 AM – 5:00 PM",
//             ),
//             _infoTile(
//               icon: Icons.location_on,
//               title: "Location",
//               value: "Head Office",
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 CREATIVE INFO TILE
//   Widget _infoTile({
//     required IconData icon,
//     required String title,
//     required String value,
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
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.blue.shade50,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(
//               icon,
//               color: Colors.blue,
//               size: 22,
//             ),
//           ),
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
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // 👈 BACK ACTION
          },
        ),
        title: const Text("My Department"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 TOP DEPARTMENT CARD (CREATIVE)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6FB1FC), Color(0xFF4A90E2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.computer,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "IT Department",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Software Development & Support",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Software Engineer",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // 🔹 SECTION TITLE
            const Text(
              "Department Information",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 INFO CARDS
            _infoTile(
              icon: Icons.badge,
              title: "Department Name",
              value: "IT Department",
            ),
            _infoTile(
              icon: Icons.work,
              title: "Role",
              value: "Software Engineer",
            ),
            _infoTile(
              icon: Icons.person,
              title: "Reporting Manager",
              value: "Project Manager",
            ),
            _infoTile(
              icon: Icons.access_time,
              title: "Working Hours",
              value: "9:00 AM – 5:00 PM",
            ),
            _infoTile(
              icon: Icons.location_on,
              title: "Location",
              value: "Head Office",
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 CREATIVE INFO TILE
  Widget _infoTile({
    required IconData icon,
    required String title,
    required String value,
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
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 22,
            ),
          ),
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
        ],
      ),
    );
  }
}
