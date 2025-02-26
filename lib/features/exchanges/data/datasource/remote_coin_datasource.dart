import 'package:achconit_task/features/exchanges/data/entity/coin_data.dart';
import 'package:dio/dio.dart';

abstract class CoinDatasource {
  Future<List<CoinData>> fetch();
}

class RemoteCoinDatasource extends CoinDatasource {
  @override
  Future<List<CoinData>> fetch() async {
    var dio = Dio();

    var data = (await dio.get('https://api.coincap.io/v2/assets')).data['data'];

    var coinData = (data as List).map((e) => CoinData.fromJson(e)).toList();

    return coinData;
  }
}
