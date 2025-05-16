import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/astrologer_model.dart';

final astrologerListProvider = Provider<List<AstrologerModel>>((ref) {
  return List.generate(
    6,
        (index) => AstrologerModel(
      name: 'Rakesh Kaushik',
      rating: 4.7,
      experience: 10,
      followers: 10000,
      price: '102/min',
    ),
  );
});