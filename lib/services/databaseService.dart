import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {


  Firestore firestore = Firestore.instance;

  Future<void> data(userData, userEmail) {

      firestore.collection("potfolio_data").document(userEmail).setData(userData)
      .catchError((e) {
        print(e.message);
      }); 
  }

}