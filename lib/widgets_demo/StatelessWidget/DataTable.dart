import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class _Bean {
  final int id;
  final String name;
  final String type;
  bool select;

  _Bean(this.id, this.name, this.type, this.select);

  @override
  String toString() {
    return '_Bean{id: $id, name: $name, type: $type, select: $select}';
  }
}

class CustomDataTable extends StatefulWidget {
  @override
  _CustomDataTableState createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  final data = [
    _Bean(1, 'Artist', '愛醬', false),
    _Bean(2, 'Culle', 'love醬', false),
    _Bean(3, 'Sukipi', 'Aipii', false),
    _Bean(4, 'China', '愛哥', false),
  ];

  final columns = ['id', '名稱', '暱稱',];

  bool _sortAscending = false;
  var selectData = <_Bean>[];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: DataTable(
          columnSpacing: 20,
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          columns: [
            DataColumn(
              label: Container(
                child: Checkbox(
                  value: selectData.length == data.length,
                  onChanged: _onSelectAll,
                ),
              ),
            ),
            DataColumn(label: Text('ID'), numeric: false, onSort: _onSortId),
            DataColumn(label: Text('名稱')),
            DataColumn(label: Text('暱稱')),
          ],
          rows: data
              .map((e) => DataRow(selected: false, cells: [
            DataCell(Checkbox(
              value: e.select,
              onChanged: (v) => _onSelectOne(v, e),
            )),
            DataCell(Text('${e.id}')),
            DataCell(Text('${e.name}'), showEditIcon: true, onTap: () {}),
            DataCell(Text('${e.type}')),
          ]))
              .toList()),
    );
  }

  _onSortId(int index, bool ascending) {
    setState(() {
      _sortAscending = ascending;
      data.sort(
              (a, b) => ascending ? a.id.compareTo(b.id) : b.id.compareTo(a.id));
    });
  }

  _onSelectOne(bool selected, _Bean e) {
    setState(() {
      if (selected) {
        //选中
        selectData.add(e);
      } else {
        selectData.remove(e);
      }
      e.select = selected;
      print(selectData);
    });
  }

  _onSelectAll(bool select) {
    setState(() {
      if (select) {
        data.forEach((e) => e.select = true);
        selectData = data.map((e) => e).toList();
      } else {
        data.forEach((e) => e.select = false);
        selectData = [];
      }
    });
  }
}