import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:core';
FirebaseFirestore _firestore =FirebaseFirestore.instance;

CollectionReference _mainTokens = _firestore.collection('1');


class DataBaseOps{

  
  DataBaseOps._instantiate();

  static final DataBaseOps instance =DataBaseOps._instantiate();

  var validated="false";
 

    //function that retrives data from the firestore
     validateInvite(enteredInviteCode){

     _mainTokens
     .get()
     .then((QuerySnapshot querySnapshot) {
       
       // iterating through all data present in the database
        for(var doc in querySnapshot.docs) {
            // print("data= ${doc['inviteCode']}");
            
            //checking if entered invite code is present in the database
            if (enteredInviteCode==doc['inviteCode']){
              print("correct $enteredInviteCode");
              validated="true";
              break;
            }
            print("incorrect $enteredInviteCode");
            validated="false";
         }
        //  return false;
         
     }
    //  return "false";
     );
    

   }
  

}