void greet(String name){
  print("Hello, $name!");
}

void multiply(int a,int b)=> print("Multiply result is: ${a*b}");

calculateArea(int w,int h){
  print("Square area is : ${w*h}");
  print("Triangle area is : ${0.5*w*h}");
  print("Cylender area is : ${3.14*w*w*h}");  
}

void main(){
  greet('Paphangkon');
  multiply(2, 5);
  calculateArea(5, 10);
}
