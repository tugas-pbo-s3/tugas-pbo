part of '_index.dart';

class SearchData {
  final rxTitle = 'Search'.inj();

  final rxInt = 0.inj();

  TextEditingController tecSearch = TextEditingController();

  FocusNode focusNode = FocusNode();

  final isShowSearchBar = false.inj();
}
