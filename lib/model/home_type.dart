import 'package:flutter/material.dart';

enum HomeType { aiChatbot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  String get title => switch (this) {
    HomeType.aiChatbot => 'AI Chatbot',
    HomeType.aiImage => 'AI Image',
    HomeType.aiTranslator => 'AI Translator',
  };

  String get lottie => switch (this) {
    HomeType.aiChatbot => 'assets/lottie/ai_hand_waving.json',
    HomeType.aiImage => 'assets/lottie/ai_img_generation.json',
    HomeType.aiTranslator => 'assets/lottie/ai_translator.json',
  };

  // Adjust these values to make the icons look identically sized!
  EdgeInsets get padding => switch (this) {
    HomeType.aiChatbot => EdgeInsets.zero, // Baseline size
    HomeType.aiImage => const EdgeInsets.all(
      16.0,
    ), // Add padding to shrink it, or make it 0 to grow
    HomeType.aiTranslator => const EdgeInsets.all(16.0),
  };

  bool get leftAlign => switch (this) {
    HomeType.aiChatbot => true,
    HomeType.aiImage => false,
    HomeType.aiTranslator => true,
  };
}
