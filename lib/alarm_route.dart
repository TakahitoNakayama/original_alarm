
import 'package:dropdown_button2/dropdown_button2.dart';
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
            width: double.infinity,
            child: Card(
              color: Colors.white, // Card自体の色
              margin: const EdgeInsets.all(8),
              elevation: 8, // 影の離れ具合
              shadowColor: Colors.black ,// 影の色
              shape: RoundedRectangleBorder( // 枠線を変更できる
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.only(right: 8),
                  childrenPadding: const EdgeInsets.all(8),
                  leading: Checkbox(
                    value: true,
                    onChanged: (newValue) {

                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                  trailing:
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      customButton: const Icon(
                        Icons.more_vert,
                        size: 40,
                      ),
                      customItemsIndexes: const [4],
                        items: <String>['編集', 'コピー', '移動', '削除']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged: (value) {

                      },
                      itemHeight: 70,
                      itemPadding: const EdgeInsets.only(left: 16, right: 16),
                      dropdownWidth: 90,
                      dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      dropdownElevation: 8,
                      offset: const Offset(30, 0),
                    ),
                  ),
                  title: const Text(
                    '06:30',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    '繰り返し：'
                    '月火水木金土日',
                    style: TextStyle(
                        fontSize: 13
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