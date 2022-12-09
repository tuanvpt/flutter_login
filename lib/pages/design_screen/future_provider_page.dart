import 'package:demo/models/suggestion.dart';
import 'package:demo/services/ApiService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final valueStateProvider = FutureProvider.autoDispose<Suggestion>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggesstion();
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestionRef = ref.watch(valueStateProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('FutureProviderPage'),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(valueStateProvider.future);
        },
        child: ListView(
          children: [
            suggestionRef.when(data: (data) {
              return Column(
                children: [
                  Text(data.activity,
                      style: Theme.of(context).textTheme.headline4),
                  Text(data.type, style: Theme.of(context).textTheme.headline5)
                ],
              );
            }, error: (error, _) {
              return Text(error.toString());
            }, loading: () {
              return const CircularProgressIndicator();
            })
          ],
        ),
      ),
    );
  }
}
