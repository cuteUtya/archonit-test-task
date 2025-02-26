class CoinData {
  final String id;
  final int rank;
  final String symbol;
  final String name;
  final double? supply;
  final double? maxSupply;
  final double? marketCapUsd;
  final double? volumeUsd24Hr;
  final double? priceUsd;
  final double? changePercent24Hr;
  final double? vwap24Hr;

  CoinData({
    required this.id,
    required this.rank,
    required this.symbol,
    required this.name,
    required this.supply,
    required this.maxSupply,
    required this.marketCapUsd,
    required this.volumeUsd24Hr,
    required this.priceUsd,
    required this.changePercent24Hr,
    required this.vwap24Hr,
  });

  factory CoinData.fromJson(Map<String, dynamic> json) {
    double? parseD(String? d) {
      if (d == null) return null;

      return double.parse(d);
    }

    return CoinData(
      id: json['id'],
      rank: int.parse(json['rank']),
      symbol: json['symbol'],
      name: json['name'],
      supply: parseD(json['supply']),
      maxSupply: parseD(json['maxSupply']),
      marketCapUsd: parseD(json['marketCapUsd']),
      volumeUsd24Hr: parseD(json['volumeUsd24Hr']),
      priceUsd: parseD(json['priceUsd']),
      changePercent24Hr: parseD(json['changePercent24Hr']),
      vwap24Hr: parseD(json['vwap24Hr']),
    );
  }
}
