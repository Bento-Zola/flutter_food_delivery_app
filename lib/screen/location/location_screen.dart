import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LocationScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: const GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(target: LatLng(-8.896512, 13.254656), zoom: 10),
            ),
          ),
            Positioned(
            top: 30, 
            left:20,
            right:20, 
           child: SizedBox(
            height: 100,
             child: Row(
               children: [
                SvgPicture.asset(
                'assets/logo.svg',
                height: 50,
                ),
                const SizedBox(width: 10,),
                 const Expanded(child: LocationSearchBox()),
               ],
             ),
           )),
           Positioned(
            bottom: 50, 
            left:20,
            right:20, 
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 70.0),
             child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
             onPressed: () {}, child: const Text('Salvar')),
           )
           ),
        ],
      ),
    );
  }
}

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
       decoration: InputDecoration(
         filled: true,
         fillColor: Colors.white,
         hintText: "Escreva a tua localizaçao",
         suffixIcon: const Icon(Icons.search),
         contentPadding: const EdgeInsets.only(left: 20,bottom: 5,right:5),
         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
         borderSide: const BorderSide(color: Colors.white),
         ),
         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
         borderSide: const BorderSide(color: Colors.white),
       ),
              )),
    );
  }
}
