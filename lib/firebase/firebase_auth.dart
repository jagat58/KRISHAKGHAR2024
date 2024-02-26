import 'package:firebase_auth/firebase_auth.dart';



class FireBaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> SignUp(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  signOut() async {
    await auth.signOut();
  }

  Future<void>signIn(String email, String password) async {
  
      await auth.signInWithEmailAndPassword(email: email, password: password);
   
  }


  forgetPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }
}