import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'helpers/popups.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Surya'),
      ),
      child: _itemBuilder(),
    );
  }

  Widget _itemBuilder() {
    List<Widget> list = [
      const CupertinoActivityIndicator(radius: 30, color: Colors.purple),
      CupertinoButton(
          onPressed: () => onPressSheetButton(context),
          child: const Text('Sheet')),
      CupertinoButton.filled(
        onPressed: () => onPressDialogButton(context),
        child: const Text('Dialog'),
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      itemBuilder: (_, index) => list[index],
      separatorBuilder: (_, index) => const SizedBox(
        height: 20,
      ),
      itemCount: list.length,
    );
  }
}
