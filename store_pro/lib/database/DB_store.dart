import 'package:sqflite/sqflite.dart'; // حزمة SQLite لإدارة قاعدة البيانات
import 'package:path/path.dart'; // حزمة لتكوين المسارات على الجهاز

// إنشاء كلاس لإدارة قاعدة البيانات
class DBHelper {
  // متغير لتخزين نسخة واحدة من قاعدة البيانات طوال عمر التطبيق
  static Database? _database;

  // getter لإرجاع قاعدة البيانات أو إنشاءها إذا لم تكن موجودة
  Future<Database> get database async {
    if (_database != null) return _database!; // إذا كانت موجودة بالفعل، أرجعها
    _database = await initDatabase(); // إذا لم تكن موجودة، أنشئها
    return _database!;
  }

  // دالة لإنشاء وتهيئة قاعدة البيانات
  Future<Database> initDatabase() async {
    final dbPath =
        await getDatabasesPath(); // المسار الافتراضي لتخزين قواعد البيانات
    final path = join(dbPath, 'storep.db'); // اسم الملف الكامل للقاعدة

    // فتح أو إنشاء قاعدة البيانات
    return await openDatabase(
      path,
      version: 1, // رقم إصدار قاعدة البيانات (مهم للتحديثات المستقبلية)
      onCreate: (db, version) async {
        // تُنفذ عند إنشاء القاعدة لأول مرة

        // إنشاء جدول العملاء
        await db.execute('''
          CREATE TABLE clients (
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            username TEXT NOT NULL,               
            password TEXT NOT NULL               
          )
        ''');
      },
    );
  }

  // دالة لإضافة عميل جديد إلى الجدول
  Future<int> addClient() async {
    final db = await database; // الحصول على نسخة قاعدة البيانات الحالية

    // إدخال العميل في الجدول وإرجاع المعرف الذي تم توليده تلقائيًاواحد فقط
    return await db.insert('clients', {
      'username': 'AFAF',
      'password': 'fa159753',
    });
  }

  Future<Map<String, dynamic>?> login(String username, String password) async {
    final db = await database; // 1️⃣ الحصول على نسخة قاعدة البيانات

    // 2️⃣ البحث عن العميل في جدول clients
    final result = await db.query(
      'clients', // اسم الجدول
      where: 'username = ? AND password = ?', // شرط البحث
      whereArgs: [username, password], // القيم المستخدمة في الشرط
    );

    // 3️⃣ التحقق من وجود نتائج
    if (result.isNotEmpty) {
      // 4️⃣ إذا تم العثور على العميل، نعيد الصف الأول (العميل)
      return result.first;
    } else {
      // 5️⃣ إذا لم يتم العثور على العميل أو كلمة المرور خاطئة، نعيد null
      return null;
    }
  }
}
