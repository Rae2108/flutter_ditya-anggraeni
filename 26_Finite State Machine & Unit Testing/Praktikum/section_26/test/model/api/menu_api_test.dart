import 'package:section_26/model/api/menu_api.dart';
import 'package:section_26/model/menu_model.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'menu_api_test.mocks.dart';

@GenerateMocks([MenuApi])
void main() {
  group('MenuAPI', () {
    MenuApi menuApi = MockMenuApi();
    test('get all menus returns data', () async {
      when(menuApi.getMenus())
          .thenAnswer((_) async => <Menu>[Menu(id: 2, menu: 'Sosis')]);

      var menus = await menuApi.getMenus();
      expect(menus.isNotEmpty, true);
    });
  });
}
