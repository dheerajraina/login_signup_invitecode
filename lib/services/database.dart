import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:core';
FirebaseFirestore _firestore =FirebaseFirestore.instance;

CollectionReference _mainTokens = _firestore.collection('1');


class DataBaseOps{

  
  DataBaseOps._instantiate();

  static final DataBaseOps instance =DataBaseOps._instantiate();

  var validated="false";
  void test(){
    // print(_mainTokens);
  }

  //  Stream<QuerySnapshot> readInvites(inviteData) {
  //     CollectionReference invitesCollection=_mainTokens.doc('6RuTYNZyyjTfLwo2qEnu').collection('/1');
      
  //     print(invitesCollection.doc().snapshots());

  //     return invitesCollection.snapshots();
  // }

     validateInvite(enteredInviteCode){

     _mainTokens
     .get()
     .then((QuerySnapshot querySnapshot) {
       
        for(var doc in querySnapshot.docs) {
            // print("data= ${doc['inviteCode']}");
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