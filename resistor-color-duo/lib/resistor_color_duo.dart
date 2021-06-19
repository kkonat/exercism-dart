class ResistorColorDuo {
  List<String> _colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int value(List<String> bands) =>
      _colors.indexOf(bands[0]) * 10 + _colors.indexOf(bands[1]);
}
