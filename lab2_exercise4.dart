void main() {
  String? middleName; // เริ่มต้นเป็น null
  String city = 'Nakhon Sawan';

  // พิมพ์ความยาว middleName (จัดการ null)
  int middleNameLength = middleName?.length ?? 0;
  print('Middle name length: $middleNameLength');

  // พิมพ์ความยาว city (non-nullable)
  print('City length: ${city.length}');

  print('Middle name before assignment: $middleName');

  // กำหนดค่าถ้าเป็น null
  middleName ??= 'N/A';
  print('Middle name after assignment: $middleName');

  // ลองกำหนดค่าอีกครั้ง (จะไม่มีผลเพราะไม่ใช่ null แล้ว)
  middleName ??= 'Something Else';
  print('Middle name after second assignment: $middleName');
}