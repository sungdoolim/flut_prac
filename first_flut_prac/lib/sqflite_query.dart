import 'package:firstflutprac/dbspring.dart';
import 'package:firstflutprac/sqflite.dart';
import 'package:firstflutprac/textsubmit.dart';
import 'package:firstflutprac/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';
import 'memo.dart';


final String TableName = 'memos';

class DBHelper {
  var _db;

  Future<Database> get database async {
    if ( _db != null ) return _db;
    _db = openDatabase(
      // 데이터베이스 경로를 지정합니다. 참고: `path` 패키지의 `join` 함수를 사용하는 것이
      // 각 플랫폼 별로 경로가 제대로 생성됐는지 보장할 수 있는 가장 좋은 방법입니다.
      join(await getDatabasesPath(), 'memos.db'),
      // 데이터베이스가 처음 생성될 때, dog를 저장하기 위한 테이블을 생성합니다.
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE IF NOT EXISTS TABLE memos(id INTEGER, title TEXT, text TEXT, createTime TEXT, editTime TEXT)",
        );
      },
      // 버전을 설정하세요. onCreate 함수에서 수행되며 데이터베이스 업그레이드와 다운그레이드를
      // 수행하기 위한 경로를 제공합니다.
      version: 1,
    );
    return _db;
  }

  Future<void> insertMemo(Memo memo) async {
    final db = await database;

    // Memo를 올바른 테이블에 추가하세요. 또한
    // `conflictAlgorithm`을 명시할 것입니다. 본 예제에서는
    // 만약 동일한 memo가 여러번 추가되면, 이전 데이터를 덮어쓸 것입니다.

    db.execute("insert into memos(id,title,editTime) values(?,?,?)",[memo.id,memo.title,memo.editTime]);

  }

  Future<List<Memo>> memos() async {
    final db = await database;


    final List<Memo> maps=(await db.rawQuery("select * from memos",)).cast<Memo>();
    return maps;
   /* return List.generate(maps.length, (i) {
      return Memo(
        id: maps[i]['id'],
        title: maps[i]['title'],
        text: maps[i]['text'],
        createTime: maps[i]['createTime'],
        editTime: maps[i]['editTime'],
      );
    });*/


  }
  Future<List<Memo>> show() async {
    final db = await database;

    // 모든 Memo를 얻기 위해 테이블에 질의합니다.
   // final List<Map<String, dynamic>> maps = await db.query('memos');

    // List<Map<String, dynamic>를 List<Memo>으로 변환합니다.
    // List.generate(maps.length, (i) {});
    final List<Map<String, dynamic>> maps=await db.rawQuery("select * from memos",);
     for(var i=0;i<maps.length;i++){
       print("${maps[i]['id']}, ${maps[i]['title']}, ${maps[i]['text']},${maps[i]['createTime']},${maps[i]['editTime']}");
     }
  }

  Future<void> updateMemo(Memo memo) async {
    final db = await database;

    // 주어진 Memo를 수정합니다.
    /*await db.update(
      TableName,
      memo.toMap(),
      // Memo의 id가 일치하는 지 확인합니다.
      where: "id = ?",
      // Memo의 id를 whereArg로 넘겨 SQL injection을 방지합니다.
      whereArgs: [memo.id],
    );*/
    await db.execute(
      "update memos set id=? where id=?",[3,1],
    );


  }

  Future<void> deleteMemo(int id) async {
    final db = await database;

    // 데이터베이스에서 Memo를 삭제합니다.

    await db.execute(
      "delete from memos where id=?",[3]
    );
  }
}

