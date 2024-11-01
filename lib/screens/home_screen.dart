import 'package:e_comm/getx/bottom_app_bar_screen_changer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const id = "HomeScreen";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ScreenChanger myGetXController = Get.find<ScreenChanger>();

    return Scaffold(
 body: CustomScrollView(
   slivers: [
     SliverToBoxAdapter(
       child:  StreamBuilder(stream: , builder: (context,snapshot)
       {
         if(snapshot.connectionState==ConnectionState.waiting)
         {
           return const Center(
             child: CircularProgressIndicator(),
           );
         }
         if(snapshot.hasData)
         {
           SliverToBoxAdapter(
                 child: SizedBox(
                   height: 150,
                   child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: 13,
                       itemBuilder: (context,index)
                       {
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               GestureDetector(
                                 child: Container(
                                   height:80,
                                   width: 80,
                                   decoration: const BoxDecoration(
                                       color: Colors.pink,
                                       shape: BoxShape.circle
                                   ),
                                 ),
                                 onTap: ()
                                 {

                                 },
                               ),
                               const Text(
                                 maxLines: 2,
                                 overflow: TextOverflow.ellipsis,
                                 "Mobile \n Accessories",textAlign: TextAlign.center,)
                             ],
                           ),
                         );
                       }),
                 ),
               )


         }


       }),
     )

   ],
 ),



    );
  }
}
