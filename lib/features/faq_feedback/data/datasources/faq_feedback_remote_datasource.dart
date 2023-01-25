import 'package:flutter/material.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/faq_feedback/domain/entities/entity.dart';

abstract class FAQFeedbackRemoteDataSource {
  Future<List<FAQ>> getFaq();
  Future<String> addFeedback(String feedback);
}

class FAQFeedbackRemoteDataSourceImpl implements FAQFeedbackRemoteDataSource {
  final DioClient _dioClient;

  FAQFeedbackRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<List<FAQ>> getFaq() async {
    try {
      final response = await _dioClient.get(ApiUrl.getFaq);
      Iterable res = response['data'] ?? [];
      List<FAQ> faqs = [];
      for (var f in res) {
        try {
          faqs.add(FAQ.fromJson(f));
        } catch (e) {
          debugPrint(e.toString());
        }
      }
      return faqs;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> addFeedback(String feedback) async {
    try {
      final response = await _dioClient.post(ApiUrl.addFeedback, data: {
        'message': feedback,
      });
      return response['message'] ?? "Thank you for your feedback";
    } catch (e) {
      rethrow;
    }
  }
}
