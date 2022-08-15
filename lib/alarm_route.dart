
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AlarmPage extends HookConsumerWidget {
  const AlarmPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アラーム'),
      ),
      body: Column(
        children: [
          SizedBox(
            // height: 160,
            width: double.infinity,
            child: Card(
              color: Colors.white, // Card自体の色
              margin: const EdgeInsets.all(30),
              elevation: 8, // 影の離れ具合
              shadowColor: Colors.black ,// 影の色
              shape: RoundedRectangleBorder( // 枠線を変更できる
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  childrenPadding: EdgeInsets.all(8),
                  leading: Checkbox(
                    value: true,
                    onChanged: (newValue) {

                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                  trailing: IconButton(
                    onPressed: () {  },
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                  title: const Text(
                    '06:30',
                    style: TextStyle(
                        fontSize: 17
                    ),
                  ),
                  subtitle: const Text(
                    '繰り返し：月火水木金土日',
                    style: TextStyle(
                        fontSize: 10
                    ),
                  ),
                  onExpansionChanged: (bool changed) {

                  },
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'スヌーズ：あり\n'
                      'サウンド：　　\n'
                      'バイブレーション：あり',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}