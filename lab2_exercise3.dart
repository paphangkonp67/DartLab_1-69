void main(){
  // List
  List<String> subjects = ['Calculus','Physics','Intro to Programming'];
  print('Number of ssubjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');
  
  subjects.add('English');
  print('Updated subjects: $subjects');
  
  print('---');
  
  //Map
 Map<String , int>studentScores =  {
   'Calculus': 85,
   'Physics': 78,
 };
 print('Score for Physics: ${studentScores['Physics']}');
 studentScores['Intro to Programming'] = 92;
 print('Updated scores: $studentScores');
 print('All subjects in map: ${studentScores.keys}');
 print('All scores in map: ${studentScores.values}');
}