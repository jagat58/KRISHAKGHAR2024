import 'package:firebase_auth/firebase_auth.dart';



class FireBaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> SignUp(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  void signOut() async {
    await auth.signOut();
  }

  Future<void>signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      print("the error is $error");
    }
  }
}