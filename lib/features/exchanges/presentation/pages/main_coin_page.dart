import 'package:achconit_task/features/exchanges/presentation/provider/coin_data_provider.dart';
import 'package:achconit_task/features/exchanges/presentation/widgets/coin_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainCoinPage extends ConsumerStatefulWidget {
  const MainCoinPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainCoinPageState();
}

class _MainCoinPageState extends ConsumerState<MainCoinPage> {
  @override
  Widget build(BuildContext context) {
    var coins = ref.watch(coinProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        child:
            coins == null
                ? CircularProgressIndicator()
                : ListView.builder(
                  itemCount: coins.length,
                  itemBuilder: (_, i) => CoinContainer(coin: coins[i]),
                ),
        onRefresh: () => ref.read(coinProvider.notifier).update(),
      ),
    );
  }
}
