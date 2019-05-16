import 'okr.dart';

class OKRService {

  static final mock_okrs = [
    {
      'id': 1,
      'title': 'OKR1',
      'description': 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'tags': 'Project 1'
    },

    {
      'id': 2,
      'title': 'OKR2',
      'description': 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'tags': 'Project 2'
    },

    {
      'id': 3,
      'title': 'OKR3',
      'description': 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'tags': 'Project 3'
    },
  ];

  static List<OKR> _okrDB;

  static resetDb() {
    _okrDB = mock_okrs.map((json) => OKR.fromJson(json)).toList();
  }

  Future<List<OKR>> getAll() async {
    if (_okrDB == null) {
      resetDb();
    }
    return _okrDB;
  }

  Future<OKR> get(int id) async =>
      (await getAll()).firstWhere((okr) => okr.id == id);

}