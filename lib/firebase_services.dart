import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result> addFeedback(Map<String, double> feedbackData, userId, jobTitle) async {
    final timestamp = DateTime.now().toString();
    try {
      await _firestore
          .collection(jobTitle)
          .doc("userId: $userId timestamp: $timestamp")
          .set(feedbackData);
      return Result(true, "Feedback submitted successfully");
    } catch (e) {
      return Result(false, "Error submitting feedback");
    }
  }
}

class Result {
  final bool isSuccess;
  final String message;

  Result(this.isSuccess, this.message);
}