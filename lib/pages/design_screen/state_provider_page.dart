import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = StateProvider.autoDispose((ref) => 15);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueProvider);

    ref.listen(valueProvider, (previous, next) {
      if(next == 20){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('value = 20'))
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('StateProviderPage'),
      ),
      body: Column(
        children: [
          Text('value: $value'),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => ref.read(valueProvider.notifier).state++,
              child: Text('Plus')),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => ref.invalidate(valueProvider),
              child: Text('Clear')),
        ],
      ),
    );
  }
}
