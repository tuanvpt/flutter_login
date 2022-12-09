import 'package:auto_route/auto_route.dart';
import 'package:demo/pages/design_screen/future_provider_page.dart';
import 'package:demo/pages/design_screen/provider_page.dart';
import 'package:demo/pages/design_screen/stream_provider_page.dart';
import 'package:demo/router/router.gr.dart';
import 'package:demo/widgets/re_button.dart';
import 'package:flutter/material.dart';

import 'change_notifier_provider_page.dart';
import 'state_notifier_provider_page.dart';
import 'state_provider_page.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ElevatedButton(
            onPressed: () => context.router.navigate(UserProfileScreenRoute()),
            child: Text(
              'Back to user',
            ),
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProviderPage(
                        color: Theme.of(context).colorScheme.primary)),
              );
            },
            text: 'Provider',
          ),
          const SizedBox(
            height: 10,
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StateProviderPage(
                        color: Theme.of(context).colorScheme.secondary)),
              );
            },
            text: 'State Provider',
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(
            height: 10,
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FutureProviderPage(
                        color: Theme.of(context).colorScheme.tertiary)),
              );
            },
            text: 'Future Provider',
            color: Theme.of(context).colorScheme.tertiary,
          ),
          const SizedBox(
            height: 10,
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StreamProviderPage(
                        color: Theme.of(context).colorScheme.error)),
              );
            },
            text: 'Stream Provider',
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(
            height: 10,
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChangeNotifierProviderPage(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer)),
              );
            },
            text: 'Change Notifier Provider',
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          const SizedBox(
            height: 10,
          ),
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StateNotifierProviderPage(
                        color:
                            Theme.of(context).colorScheme.secondaryContainer)),
              );
            },
            text: 'State Notifier Provider',
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ]),
      ),
    );
  }
}
