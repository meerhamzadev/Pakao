import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    Future register(String email, String password) async {
        try {
            UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
            } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
            print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
        }
        } 
        catch (e) {
            print(e.toString());
        }
    }

    Future Login(String email, String password) async {
        try {
            UserCredential userCredential = await _auth.signInWithEmailAndPassword(
                email: email, password: password
            );
        } on FirebaseAuthException catch (e) {
            if (e.code == 'wrong-password') {
                print('The password is invalid or the user does not have a password.');
            } 
            else if (e.code == 'user-not-found') {
                print('There is no user record corresponding to this identifier. The user may have been deleted.');
            } 
            else if (e.code == 'user-disabled') {
                print('The user account has been disabled by an administrator.');
            }
        } 
        catch (e) {
            print(e.toString());
        }
    }
}
