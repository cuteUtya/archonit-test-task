import 'package:achconit_task/features/exchanges/data/datasource/remote_coin_datasource.dart';
import 'package:achconit_task/features/exchanges/data/entity/coin_data.dart';

class CoinRepo {
  final RemoteCoinDatasource _datasource = RemoteCoinDatasource();

  Future<List<CoinData>> fetchCoinData() => _datasource.fetch();
}
