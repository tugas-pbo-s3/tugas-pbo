part of '../_index.dart';

class AdminProductInputSize extends StatelessWidget {
  const AdminProductInputSize({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return OnReactive(() => Container(
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: ExpansionTile(
            iconColor: Colors.grey,
            title: Text(
              _dt.rxListOfSelectedItem.st.isEmpty ? "Select" : _dt.rxListOfSelectedItem.st[0].toString(),
            ),
            children: <Widget>[
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _dt.listOfSizes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * .032, right: size.width * .098),
                      child: OnReactive(
                        () => Row(
                          children: [
                            SizedBox(
                              height: 24.0,
                              width: 24.0,
                              child: OnReactive(
                                () => Checkbox(
                                  value: _ct.getIsSelected(index).st,
                                  onChanged: (val) {
                                    _dt.rxSelectedText.st = _dt.listOfSizes[index].toString();
                                    if (_ct.getIsSelected(index).st) {
                                      _dt.rxListOfSelectedItem.st.remove(_dt.listOfSizes[index]);
                                      _ct.getIsSelected(index).setState((s) => false);
                                    } else {
                                      // _dt.rxListOfSelectedItem.st.add(_dt.listOfSizes[index]);
                                      _ct.addToSelectedList(_dt.listOfSizes[index]);
                                      _ct.getIsSelected(index).setState((s) => true);
                                    }
                                  },
                                  activeColor: Colors.blue,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .025,
                            ),
                            Text(
                              _dt.listOfSizes[index].toString(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
