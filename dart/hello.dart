
// HelloWorld UpperCamelCase
// helloWorld camelCase
// hello_world snake_case
// hello-world train/spin/kebab

void main(List<String> args) {
  print(args.length);
  var arg1 = int.parse(args[0]);
  var arg2 = int.parse(args[1]);

  print('Hello, $args!');
  int a = 3;
  print("a : $a");

  var b = 1;
  print(b.runtimeType);
  print(args.runtimeType);

  print(arg1+arg2);

  const c=2;
  print(c);
  
  final d;
  d=3;
  print(d);
  var numList = [1, 2, 3,4,5,6];
  var [a1, b1, c1,...d1] = numList;
  print(a1);
  print(b1);
  print(c1);
  print(d1);

  printInteger(a1);

  var e = add2(1,2,val01:2,val02:2);
  print(e);

}

void printInteger(int a){
  print("int $a");
}

int add(int a,int b){
  return a+b;
}

int add2(a,b,{int val01=0,int val02=0,int val03=0}){
  return a+b+val01+val02+val03;
}
