
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  void submit()
  {
    if (_titleTEController.text.trim().isNotEmpty && _descriptionTEController.text.trim().isNotEmpty)
      {
        showModalBottomSheet(context: context, builder: (_) => Container(
          child: Column(

              children:  [
                const Padding(padding: EdgeInsets.all(2.0),),
                Lottie.asset("images/96245-success.json",height: 200,),
                const Padding(padding: EdgeInsets.all(2.0),),
                const Text("Request Submitted",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                const Padding(padding: EdgeInsets.all(5.0),),
                const Text("আপনার জন্য একটি নতুন গল্প তৈরি করার জন্য আমি আপনার একটি অনুরোধ পেয়েছি। আমরা তাড়াতাড়ি কাজ করবো এবং একটি সংক্ষিপ্ত গল্প তৈরি করার চেষ্টা করবো। নিশ্চয়ই আপনি এটা পড়তে এবং উপভোগ করবেন।",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
                const Padding(padding: EdgeInsets.all(5.0),),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Icon(Icons.check,color: Colors.white,),),
              ]
          ),

        ));
      }
    else
      {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please fill all the fields")));
      }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Request For New Story",
                style: TextStyle(fontSize: 24,color: Colors.deepPurple, fontFamily: "NotoSansBengali Bold"),
                textAlign: TextAlign.start,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "নুতন কোনো স্টোরি পেতে রিকোয়েস্ট পাঠান। যত তাড়াতাড়ি সম্ভব আমরা সেটা যোগ্য করার চেষ্টা করবো। বা আপনি চাইলে আপনার গল্পটি এই প্লাটফর্মে অ্যাড করতে পারেন যা অন্যদের সহজে পড়তে পারবে এবং রেটিং দিতে পারবেন।",
                style: TextStyle(
                  fontFamily: "NotoSansBengali",fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _titleTEController,
                decoration: InputDecoration(
                  labelText: "আপনার গল্পের নাম",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "ex: সাত ভাই চম্পা",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.title),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _descriptionTEController,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: "কিছু বর্ণনা দিন",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "ex: ছোটরানি খুব শান্ত, বড়োরানিদের মাটিতে পা পড়ে না",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.details),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                   submit();
                   _titleTEController.clear();
                   _descriptionTEController.clear();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(100, 50),

                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}