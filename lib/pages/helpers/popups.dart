part of '../home_page.dart';

onPressSheetButton(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return CupertinoActionSheet(
          title: const Text('Title'),
          message: const Text('Message'),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
                onPressed: () => Navigator.of(context),
                child: const Text('Button 1')),
            CupertinoActionSheetAction(
                onPressed: () => Navigator.of(context),
                child: const Text('Button 2')),
          ],
        );
      });
}

onPressDialogButton(BuildContext context) {
  showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text('Title'),
          content: const Text('Message'),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
                onPressed: () => Navigator.of(context),
                isDestructiveAction: true,
                child: const Text('Cancel')),
            CupertinoActionSheetAction(
                onPressed: () => Navigator.of(context),
                child: const Text('Save')),
          ],
        );
      });
}
