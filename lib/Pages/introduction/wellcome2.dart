
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stru/Pages/introduction/wellcome1.dart';
import 'package:stru/Pages/introduction/wellcome3.dart';

import '/Pages/auth/login.dart';
import '/Vars/globalss.dart' as globalss;

class wellcomepage2 extends StatefulWidget {
  const wellcomepage2({Key? key}) : super(key: key);

  @override
  State<wellcomepage2> createState() => _wellcomepage2State();
}

class _wellcomepage2State extends State<wellcomepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child: Container(
          height:MediaQuery.of(context).size.height ,
          width:MediaQuery.of(context).size.width ,
          //   color: Colors.amber,
          // height:812 ,
          // width: 100,
          child: Padding(
            padding:EdgeInsets.only(left: 8.0,right: 8,top: 5,bottom: 10),
            child:Stack(
              alignment: Alignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //  mainAxisSize: MainAxisSize.max,
              children: [
                Positioned(
                  top:0,
                  right: 0,
                  left: 0,


                  child: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width *(31/375),

                          width: MediaQuery.of(context).size.width *(102/375),
                          child: Image.asset(
                            'assets/22images/logo22.png',
                            color:Theme.of(context).textTheme.headline1!.color,
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextButton(onPressed: (){}, child: Text("",style: TextStyle(color: Color(0xFF000000).withOpacity(0.3)),))
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      AspectRatio(
                        aspectRatio: 1,

                        child: SizedBox(
                          //  height:900,
                          // //425,
                          // MediaQuery.of(context).size.height/2,
                          child: SvgPicture.asset(
                            'assets/22images/w3.svg',
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(radius: 5,backgroundColor:Color(0xFFC4C4C4) ),
                          SizedBox(width: 5,height: 30),
                          CircleAvatar(radius: 5,backgroundColor:globalss.cblue ),
                          SizedBox(width: 5,),
                          CircleAvatar(radius: 5,backgroundColor: Color(0xFFC4C4C4)),
                        ],
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width-40,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text("intro.StudyInRussia Awesome".tr()+"\n"+ "intro.Talk Show and Broadcast".tr(),style: TextStyle(fontWeight: FontWeight.w600,color:Theme.of(context).textTheme.bodyText1!.color,), textAlign: TextAlign.center,)),
                      ),

                      SizedBox(
                          width:MediaQuery.of(context).size.width-40,
                          child: Text("intro.The distinctive feature of our mobile application which enables you to watch live talk show & broadcast with leading Russian universities to discuss and obtain the latest news and information".tr(),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xFF8D8D8D)), textAlign: TextAlign.center,)),
                      SizedBox(height:140,)

                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width-40,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(
                                    color:globalss.cblue ,
                                    width: 1,
                                    style: BorderStyle.solid
                                ),
                              ),

                              primary: Theme.of(context).primaryColor,

                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => wellcomepage1()),
                              );
                            },
                            child:  Text("intro.Back".tr(),style: TextStyle(color:Theme.of(context).textTheme.headline1!.color,),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),

                                primary: Color(0xFF002BFF)

                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => wellcomepage3()),
                              );
                            },
                            child:  Text("intro.Next".tr(),style: TextStyle(color:Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
