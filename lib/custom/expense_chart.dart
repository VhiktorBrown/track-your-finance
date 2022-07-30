import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class ExpenseChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  bool animate;

  ExpenseChart(this.seriesList, {Key? key, this.animate=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      animationDuration: const Duration(seconds: 1),
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 12,
        strokeWidthPx: 0,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPadding: 0,
            showLeaderLines: false,
            outsideLabelStyleSpec: const charts.TextStyleSpec(
              fontSize: 12,
              fontFamily: 'Raleway',
              color: charts.MaterialPalette.white,
            )
          )
        ]
      ),
      behaviors: [
        charts.DatumLegend(
          position: charts.BehaviorPosition.end,
          outsideJustification: charts.OutsideJustification.start,
          horizontalFirst: false,
          desiredMaxColumns: 1,
          cellPadding: const EdgeInsets.only(right: 4.0, bottom: 4.0),
          entryTextStyle: const charts.TextStyleSpec(
            fontSize: 12,
            fontFamily: 'Raleway',
            color: charts.MaterialPalette.white,
          )
        )
      ],
    );
  }
}
