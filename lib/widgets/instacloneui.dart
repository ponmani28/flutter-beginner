import 'package:flutter/material.dart';

class Instaclone extends StatelessWidget {
  const Instaclone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.arrow_back,color: Colors.black,),backgroundColor: Colors.white,title: const Text("Jbiber",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
      body: Container(child: Column(children: [Container(height: 200,child: Row(children: [Container(width: 160,child: const Column(mainAxisAlignment: MainAxisAlignment.center,children: [CircleAvatar(radius: 40,),Text("Justin biber",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Text("Artist",style: TextStyle(fontSize: 18),)],),),
      
      Expanded(child: Container(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [SizedBox(height: 50,),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [  profiledetails("150", "posts"), profiledetails("1500", "followers"), profiledetails("222", "following") ],),SizedBox(height:10),Container(child: Row(children:[Expanded(child: Container(padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),height: 50 ,child: ElevatedButton(onPressed: (){}, child: Text("Follow")),)),SizedBox(width: 10,),Container(padding: EdgeInsets.fromLTRB(0, 0, 17,0),height: 50,width: 50,child: Icon(Icons.arrow_downward),)]))]),),
      
      )],),),


                            Container(height: 120,child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,itemBuilder: (context,index){return  Column(children:[Container(margin: EdgeInsets.all(5),height: 70,width: 70,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.cyan )),Text("title")]);},)),



                            Container(color: Colors.indigo,height: 100,),



                            Expanded(child: Container(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: double.minPositive), itemBuilder: (content,index){return Container(padding: EdgeInsets.all(20),decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("https://wallpaperaccess.com/full/889948.jpg"),fit: BoxFit.cover),color: Colors.greenAccent,borderRadius: BorderRadius.circular(20)),height: 100,width: 100,);}),))],),





      ),


    );
  }
}



Widget profiledetails(String text1 ,String text2){

return  Column(children: [Text(text1,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),Text(text2,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],);



}