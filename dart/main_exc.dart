int div(int a, int b) {
  return a ~/ b;
}


int callDiv(int a, int b) {
  int r = 0;
  try{

    print('log avant');
    r = div(a,b);
  }
  finally{
    print('log après');

  }
  return r;
}



void main(List<String> args) {
  var r = callDiv(20,0);
  print(r);
}

void main01(List<String> args) {
  try {
    int a = 2;
    int b = 2;

    int c = a ~/ b;
    print(c);
  } on UnsupportedError catch (e) {
    print(e);
  }

  print('après');
}
