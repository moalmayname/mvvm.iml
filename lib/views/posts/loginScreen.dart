import 'package:flutter/material.dart';
import 'package:mvvm/resource/component/rounded_button.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:mvvm/view_models/auth_viewModel.dart';
import 'package:provider/provider.dart';
class log_in_screen extends StatefulWidget {
  const log_in_screen({super.key});

  @override
  State<log_in_screen> createState() => _log_in_screenState();
}

class _log_in_screenState extends State<log_in_screen> {
  ValueNotifier<bool>_obsecureText= ValueNotifier<bool>(true);
   final FocusNode _emailFoucsNode= FocusNode();
   final FocusNode _passwordFoucsNode= FocusNode();
   final TextEditingController _emailcontroler=TextEditingController();
  final TextEditingController _passwordcontroler=TextEditingController();
  AuthViewModel _authViewModel =AuthViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailcontroler,
              //keyboardType: TextInputType.emailAddress,
              focusNode: _emailFoucsNode,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Appcolor.hintextcolor
                ),
                prefixIcon: Icon(Icons.email_outlined,
                color: Appcolor.iconColor,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),

                ),


              ),
              onFieldSubmitted: (value){
                Utils().onChangeFoucsNode(context, _emailFoucsNode,_passwordFoucsNode);
              },
            ),
            SizedBox(height: 20,),
            ValueListenableBuilder(valueListenable: _obsecureText, builder: (context,value,child){
              return
                TextFormField(
                  controller: _passwordcontroler,
                  obscureText: _obsecureText.value,
                  obscuringCharacter: "*",
                  focusNode: _passwordFoucsNode,
                  decoration: InputDecoration(
                      hintText: "Password",

                      hintStyle: TextStyle(
                          color: Appcolor.hintextcolor
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outline,
                        color: Appcolor.iconColor,),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          _obsecureText.value=! _obsecureText.value;
                        },
                        child: Icon(
                            _obsecureText.value?Icons.visibility_outlined: Icons.visibility_off_outlined
                        ),
                      ),



                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),

                  ),
                );



            },),
            SizedBox(height: 20,),
            Consumer(builder: (context,auth_viewModel,child){

              return RoundedButton(title: "Login",onpress: (){
                if (_emailcontroler.text.isEmpty){

                  Utils().showerorrFlusBar(context, "EmailReqaired", "Please Enter Your Email");
                }
               // else if (_passwordcontroler.text.isEmpty){

                 // Utils().showerorrFlusBar(context, "PasswordRequaired", "Please enter your passsword");
              //  }
                else{
                  Map data= {
                    "email":_emailcontroler.text.toString(),
                    "password":_passwordcontroler.text.toString(),

                  };
                  _authViewModel.loginApi(data, context);
                }



              }


              );
            }
            )


          ],
        ),
      )
    );
  }
}
