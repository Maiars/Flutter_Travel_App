import 'package:file_manager/widgets/Route/route_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../style/colors.dart';

class MapRoute extends StatefulWidget {
  const MapRoute({super.key});

  @override
  State<MapRoute> createState() => _MapRouteState();
}

class _MapRouteState extends State<MapRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          const RouteTopBar(
              title: 'Route',
              icon: Icons.search_outlined,
              icon2: Icons.notifications_active_outlined),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'YOUR GOOGLE MAP API',
                style: GoogleFonts.poppins(
                    color: darkblue, fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ))
        ],
      ),
    );
  }
}
