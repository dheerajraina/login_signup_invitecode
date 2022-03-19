

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_signup_invitecode/services/database.dart';

import 'login_signup_page.dart';







// import 'package:login_signup_invitecode/firebase_options.dart';


// import 'package:firebase_core/firebase_core.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';











class InviteCodePage extends StatefulWidget {
  const InviteCodePage({ Key? key }) : super(key: key);

  @override
  State<InviteCodePage> createState() => _InviteCodePageState();
}

class _InviteCodePageState extends State<InviteCodePage> {

  String _inviteCode='';

  // List result=[];
  //  var result;

  String validated='';







  @override
  Widget build(BuildContext context) {

    


    

    var size =MediaQuery.of(context).size;

       
    bool warning =false;
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor: validated=='false'? Colors.red: Color.fromARGB(255, 44, 43, 43),
        title:validated==''? null: Center(child: Text("Invalid Invite Code")),

      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:size.height*0.2 ,
            ),
            Center(
              child: Text(
                "Continue with Invite Code",
                style: TextStyle(
                  fontSize: size.width*0.06,
                  letterSpacing: size.width*0.007,
                ),
                ),
            ),
      
            SizedBox(
              height:size.height*0.08 ,
            ),
      
            
              
            Container(
              width: size.width*0.8,
              child: TextFormField(
                  onChanged: (val){
                    // print(val);
                     setState(() {
                        _inviteCode=val;
                      });
                  },
                  decoration: InputDecoration(
                    hintText:"          Add Invite Code    ",
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
      
                      ),
      
                  ),
                  style: TextStyle(
                    fontSize: size.width*0.06,
                  ),
                ),
      
                 ),
      
      
                  
                   SizedBox(
                    height:size.height*0.08 ,
                  ),
      
      
                  InkWell(
                    onTap: (){
                      DataBaseOps.instance.validateInvite(_inviteCode);
                      
                      Timer(Duration(seconds: 2), (){
                       
                         validated=  (DataBaseOps.instance.validated).toString();
                       
                      
                      });
                      
                      
                        // print('yo');
                      Timer(Duration(seconds: 2), (){
                       print("validated= $validated");
                        if (validated=="true"){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginSignup()));
                          
                        }  
                        setState(() {
                         validated=  DataBaseOps.instance.validated;
                       });
                      });
                       
                        
                      
                     
                    
                    },
                    child: Container(
                      width: size.width*0.5,
                      height: size.height*0.06,
                      
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: size.width*0.06,
                            letterSpacing:size.width*0.01, 
                          ),
                          ),
                      ),
                    
                    ),
                  ),
      
      
                  SizedBox(
                    height:size.height*0.3 ,
                  ),
      
                  Text(
                    "No Invite Code?",
                    style: TextStyle(
                      fontSize: size.width*0.04,
                      letterSpacing: size.width*0.01,
                    ),
                    
                    ),

                  SizedBox(
                    height:size.height*0.01 ,
                  ),

                  Text(
                    "If you want an invite  code and get an early access",
                    style: TextStyle(
                      fontSize: size.width*0.03,
                      letterSpacing: size.width*0.005,
                    ),
                    
                    ),


                    SizedBox(
                    height:size.height*0.01 ,
                  ),

                    Text(
                    "Please fill out this form",
                    style: TextStyle(
                      fontSize: size.width*0.03,
                      letterSpacing: size.width*0.005,
                    ),
                    
                    ),
          ],
        ),
      ),
      
      
    );

                          
  }


  
}
