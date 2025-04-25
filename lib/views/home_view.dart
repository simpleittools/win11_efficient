import 'package:flutter/material.dart';
import 'package:win11_efficient/core/utils/reg_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(title: Text("Win 11 Efficient")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  final success = await RegUtils.disableSpotlight();
                  if (success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Spotlight has been disabled successfully',
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Failed to disable spotlight"),
                        backgroundColor: Theme.of(context).colorScheme.error,
                      ),
                    );
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: ${e.toString()}'),
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                  );
                }
              },
              child: Text('Remove Spotlight'),
            ),
          ],
        ),
      ),
    );
  }
}
