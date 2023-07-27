import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class LoginPage extends StatelessWidget {
  bool _obscureText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String username, password;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [Colors.white, Colors.lightGreen],
          //   ),
          // ),
          child: Column(
            children:[
              
            Padding(
              padding: const EdgeInsets.only(top:40),
              child: SizedBox(
                height: 150,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Lottie.asset(
                    'assets/animation_isb.json', // Replace with your animation file path
                    repeat: true,
                    reverse: false,
                    animate: true,
                  ),
                ),
              ),
            ),
      
               Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
        
                  const Text(
                    'eoffice',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen,
                        fontStyle: FontStyle.normal),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: const TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(Icons.person, color: Colors.lightGreen),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(Icons.lock, color: Colors.lightGreen),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _obscureText = false;
                        },
                        child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.lightGreen),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.lightGreen, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  LoginButton(
                    text: 'Login',
                    onPressed: () async {
                      // Implement login functionality here
                      username = usernameController.text.toString();
                      password = passwordController.text.toString();
        
                      print('{$username &  $password}');
                      // await authenticate(context, username, password);
        
                      //    try {
                      //      await authenticate(username, password);
        
                      // print('login successfull');
                      //   //  If login is successful, navigate to the DashboardScreen here
                      //      // e.g., Navigator.pushNamed(context, '/dashboard');
                      //    } catch (e) {
                      //   // Handle the login error here (display error message, etc.)
                      //     print('Login failed: $e');
                      //   }
                    },
                  ),
                  
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 200,top: 20),
               child: Positioned(
                         bottom: 16, // Adjust the distance from the bottom as needed
                         right: 16, // Adjust the distance from the right as needed
                         child: Lottie.asset(
                'assets/vector_animation.json', // Replace with your animation file path
                width: 150, // Adjust the width of the animation as needed
                height: 150, // Adjust the height of the animation as needed
                repeat: true,
                reverse: false,
                animate: true,
                         ),
                       ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 260),
               child: Positioned(
                         bottom: 16, // Adjust the distance from the bottom as needed
                         right: 16, // Adjust the distance from the right as needed
                         child: Lottie.asset(
                'assets/animation_pak.json', // Replace with your animation file path
                width: 150, // Adjust the width of the animation as needed
                height: 150, // Adjust the height of the animation as needed
                repeat: true,
                reverse: false,
                animate: true,
                         ),
                       ),
             ),
            ]
          ),
        ),
        
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  final bool obscureText;

  LoginTextField({
    required this.labelText,
    required this.iconData,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(iconData, color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  LoginButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          
        ),
        padding: const EdgeInsets.symmetric(vertical: 15.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
        
      ),
      
    );
  }
}
