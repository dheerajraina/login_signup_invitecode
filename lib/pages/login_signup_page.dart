
import 'package:flutter/material.dart';
import 'package:login_signup_invitecode/pages/invite_code_page.dart';


class LoginSignup extends StatefulWidget {
  const LoginSignup({ Key? key }) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    String phoneNumber="";
    return Scaffold(
      // appBar: AppBar(
      //   actions: [

      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                Container(
                  // color: Colors.pink,
                  // width: size.width*1,
                  
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>InviteCodePage()));
                    }, icon: Icon(Icons.arrow_back))),
              ],
            ),
            SizedBox(
              height:size.height*0.05 ,
            ),
            Center(
              child: Text(
                "Please provide your number",
                style: TextStyle(
                  fontSize: size.width*0.06,
                  letterSpacing: size.width*0.007,
                ),
                ),
            ),
      
            SizedBox(
              height:size.height*0.15,
            ),
      
            
              
            Container(
              width: size.width*0.8,
              child: TextFormField(

                  onChanged: (val){
                    print(val);
                    setState(() {
                      phoneNumber=val;
                    });
                     
                  },
                  
                  decoration: InputDecoration(
                    hintText: "+919671317347",
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      
                      
      
                      ),
      
                  ),
                  style: TextStyle(
                    fontSize: size.width*0.05,
                    
                  ),
                ),
      
                 ),

                  SizedBox(
                    height:size.height*0.02 ,
                  ),      


                  Text(
                    "We will send OTP to verify your number",
                    style: TextStyle(
                      fontSize: size.width*0.04,
                      letterSpacing: size.width*0.007,
                      color: Colors.grey
                ),
                ),
                  
                   SizedBox(
                    height:size.height*0.08 ,
                  ),
      
      
                  InkWell(
                    onTap: (){},
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
                    height:size.height*0.2 ,
                  ),
      
                   

                  Row(
                    children: [
                       SizedBox(
                    width:size.width*0.05 ,
                  ),

                      Container(
                        width: size.width*0.4,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:BorderSide(color: Colors.grey)
                          )
                        ),
                      ),

                      SizedBox(
                    width:size.width*0.02 ,
                  ),  

                        Text(
                          'Or',
                          style: TextStyle(
                            fontSize: size.width*0.04,
                          ),
                          ),

                        SizedBox(
                    width:size.width*0.02 ,
                  ),  


                        Container(
                        width: size.width*0.4,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:BorderSide(color: Colors.grey)
                          )
                        ),
                      ),
                    ],
                  ), 


                   SizedBox(
                    height:size.height*0.02 ,
                  ),


                  Container(
                    width: size.width*0.7,
                    height: size.width*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      children: [

                    Container(
                      height: size.height*0.1,
                        width: size.width*0.1,
                        color: Colors.red,
                      child: Image.network(
                        "https://blog.hubspot.com/hubfs/image8-2.jpg",
                        color: Colors.blue,
                        
                        ),

                      
                    ),
                        
                         SizedBox(
                          width:size.width*0.02 ,
                        ), 
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            letterSpacing: size.width*0.005,
                          ),
                          ),
                      ],
                    ),
                  ),

          ],
        ),
      )
    );
  }
}


