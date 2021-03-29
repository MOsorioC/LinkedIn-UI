import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/view_models/home_view_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (_) => HomeViewModel(),
  ),
];