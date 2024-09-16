# Gap Column & Row

`gap_column_row` is a Flutter package that introduces two custom widgets: `GapColumn` and `GapRow`. These widgets allow you to easily add uniform gaps between child widgets without manually adding padding or margins.

## Features

- Easy to use, just like Flutter's native `Column` and `Row`.
- Introduces a uniform gap between children.

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  gap_column_row: ^0.0.1
```

## Usage

```dart
import 'package:gap_column_row/gap_column_row.dart';

GapColumn(
  gap: 10.0,
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)

GapRow(
  gap: 15.0,
  children: [
    Text('Item A'),
    Text('Item B'),
  ],
)
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:gap_column_row/gap_column_row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gap Column & Row Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GapColumn(
                gap: 10.0,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                  Text('Item 4'),
                ],
              ),
              GapRow(
                gap: 15.0,
                children: [
                  Text('Item A'),
                  Text('Item B'),
                  Text('Item C'),
                  Text('Item D'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## License

```
BSD 3-Clause License
```

## Author

- Website: [cabelloisaac.com](https://cabelloisaac.com/)
- Github: [CabelloIsaac](https://github.com/CabelloIsaac/)
