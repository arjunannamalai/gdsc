import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseServices {
  final _auth = FirebaseAuth.instance;
  final _googleSignin = GoogleSignIn();
  SignInGoogle() async {
    try {
      final GoogleSignInAccount? _googleSigninAccount =
          await _googleSignin.signIn();
      if (_googleSigninAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await _googleSigninAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        await _auth.signInWithCredential(authCredential);
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw (e);
    }
  }

  SignOutGoogle() async {
  await  _auth.signOut();
  await  _googleSignin.signOut();
  }
}
