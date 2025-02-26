import 'package:achconit_task/features/exchanges/data/entity/coin_data.dart';
import 'package:achconit_task/features/exchanges/domain/repository/coin_repo.dart';
import 'package:riverpod/riverpod.dart';

class CoinDataProvider extends StateNotifier<List<CoinData>?> {
  final CoinRepo _repo = CoinRepo();

  CoinDataProvider() : super(null) {
    update();
  }

  Future<void> update() async {
    state = await _repo.fetchCoinData();
  }
}

var coinProvider = StateNotifierProvider<CoinDataProvider, List<CoinData>?>(
  (ref) => CoinDataProvider(),
);
