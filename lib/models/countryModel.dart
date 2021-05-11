class Country {
  Country({
    this.name,
    this.capital,
  });

  startLockdown() {
    print('${this.name} is now in lockdown!!!');
  }

  String name;
  String capital;
}

int i = 0;

String name = 'Alan';

Country india = Country(
  name: 'India',
  capital: 'Delhi',
);

testFn() {
  india.startLockdown();
}
