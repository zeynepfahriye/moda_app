import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath ;
 
  Detay({Key? key, this.imgPath}) : super(key: key);


  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
        tag: widget.imgPath,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)
          ),
        ),
      ),
      Positioned(
        left: 15,
        right: 15,
        bottom: 15,
        
       child: Material(
         borderRadius: BorderRadius.circular(10),
         elevation: 4,
         child: Container(
        height: 230,
        width: MediaQuery.of(context).size.width-30,
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain)
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('LAMINATED',style: TextStyle(fontSize:22,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                    const Text('Louis Vuitton',style: TextStyle(fontSize:16,fontFamily: 'Montserrat',color: Colors.grey),),
                    const SizedBox(height:10,),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width-170,
                      child: const Text('One button V-neck sling log-sleeved waist female stitching dress',
                      style: TextStyle(fontSize:13,fontFamily: 'Montserrat',color: Colors.grey),
                      ),
                      ),
                ],
              )
            ],),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(left:15,top:10,bottom:2),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:<Widget> [
                   const Text('\$6500',style: TextStyle(fontFamily:'Montserrat',fontSize: 22),),
                   
                   Container(
                     margin: const EdgeInsets.only(right: 30),
                     child: FloatingActionButton(
                       onPressed: (){},
                       child: Center(child: Icon(Icons.arrow_forward_ios)),
                     backgroundColor: Colors.brown,
                     ),
                   )
                ],
              ),
            )
        ],),
         ),
       ),
        ),
        
      
        ],
        ),
    );
  }
}
