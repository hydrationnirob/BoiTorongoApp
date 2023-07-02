import 'package:Supkothar_Somoy/Scen/CatagoryPage/Horror/CHorror.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'CatagoryPage/Detective/CDetective.dart';


class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 70,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu_open_rounded)),


        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.report_outlined),

          )
        ],
      ),

      body:  SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(

                padding: EdgeInsets.all(18.0),
                child: Text("Select Category's",
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber),textAlign: TextAlign.center,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Search your category",
                    fillColor: Colors.white,
                    filled: true,
                    label: const Text("Search"),
                    prefixIcon: const Icon(Icons.search_off),
                    helperText: "Search feature is currently unavailable.",
                    helperStyle: const TextStyle(color: Colors.red),

                  )
                ),
              ),

              Padding(padding:
              const EdgeInsets.all(9.0),
              child: Wrap(
                  spacing: 10,
                runSpacing: 10,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,PageTransition(child: const CHorror(), type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Lottie.asset("images/121370-horror-halloween-house-animation.json",height: 120,),
                        const SizedBox(height: 1,),
                                const Text("Horror Story",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),

                              ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,PageTransition(child: const CDetective(), type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Lottie.asset("images/96262-detective-search.json",height: 120,),
                                  const         SizedBox(height: 1,),
                                  const Text("Detective",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.cyan,));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Lottie.asset("images/111717-animacao-kids-patria-escola.json",height: 120,),
                                  const         SizedBox(height: 1,),
                                  const Text("Kids Story",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.deepPurple,));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Lottie.asset("images/94879-lover-people-sitting-on-garden-banch.json",height: 120,),
                                  const   SizedBox(height: 1,),
                                  const Text("Love Story",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: Card(
                      color: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                              children: [

                                const   SizedBox(height: 1,),
                                const Text("সাত ভাই চম্পা",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24,fontFamily: "NotoSansBengali Bold"),),
                                const Text("সাত ভাই চম্পা – দক্ষিণারঞ্জন মিত্র মজুমদার এক রাজার সাত রানি। দেমাকে, বড়োরানিদের মাটিতে পা পড়ে না। ছোটরানি খুব শান্ত।",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 18,fontFamily: "NotoSansBengali"),textAlign: TextAlign.center,),
                                ElevatedButton(onPressed: (){
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.red,));
                                },style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ), child: const Text("Read More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),)


                              ]
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.yellow,));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                                children: [
                                  Lottie.asset("images/19444-a-funny-annoying-fly.json",height: 120,),
                                  const   SizedBox(height: 1,),
                                  const Text("Funny Story",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon!"),backgroundColor: Colors.cyan,));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Card(
                        color: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Lottie.asset("images/39962-funny-brain.json",height: 120,),
                                  const   SizedBox(height: 1,),
                                  const Text("Mogojh Dholai",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 23),),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),




                ]
              )
              ),

            ],
          ),
        ),
      ),

    );
  }
}
