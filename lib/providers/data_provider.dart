import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_fetch_api/models/user_model.dart';
import 'package:riverpod_fetch_api/services/services.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
