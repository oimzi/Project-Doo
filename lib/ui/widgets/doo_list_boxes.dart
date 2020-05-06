import 'package:flutter/material.dart';
import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:flutter_doo_test/ui/shared/shared_styles.dart';
import 'package:flutter_doo_test/ui/widgets/txt_title.dart';
import 'package:flutter_doo_test/viewmodels/doo_list_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_doo_test/ui/utils.dart';

class DooListBox extends StatelessWidget {
  final color;
  final double height;

  final DooListViewModel dooListViewModel;

  const DooListBox(this.color, this.height, this.dooListViewModel);
//Colors.blueAccent, 'You can do anything', 'Every Tuesday', 'title'

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DooListViewModel>.reactive(
      viewModelBuilder: () => dooListViewModel,
      builder: (context, model, child) {
        return Column(
          children: <Widget>[
            ...model.dooLists.map((item) => DooCard(color, height, item)),
          ],
        );
      }
    );
  }
}

class DooCard extends StatelessWidget {
  final color;
  final double height;
  final DooModel item;

  DooCard(this.color, this.height, this.item);

  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: color,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TxtQuotes(item.quotes),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TxtCycle(item.cycle.toDisplayText()),
                  SizedBox(height: 4),
                  TxtTitle(item.title, 18, FontWeight.w600,
                      Colors.black),
                ],
              ),
            ],
          ),
          //child: Text('You can do anything'),
        ),
      ),
    );
  }
}


class TxtQuotes extends StatelessWidget {
  final String quotes;

  const TxtQuotes(this.quotes);

  @override
  Widget build(BuildContext context) {
    return Text(
      quotes,
      style: cTsQuotes,
    );
  }
}

class TxtCycle extends StatelessWidget {
  final String cycle;

  const TxtCycle(this.cycle);

  @override
  Widget build(BuildContext context) {
    return Text(
      cycle,
      style: cTsCycle,);
  }
}


