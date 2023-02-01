library kengaboo.globals;

String themeTitle = '';
String backGround = '';
int choosedTheme = 0;

void changeTheme() {
  if (choosedTheme == 0) {
    themeTitle = 'assets/images/textnewyear.png';
    backGround = 'assets/images/back1.png';
  }
  if (choosedTheme == 1) {
    themeTitle = 'assets/images/23febrary.png';
    backGround = 'assets/images/back2.png';
  }
  if (choosedTheme == 2) {
    themeTitle = 'assets/images/cosmos.png';
    backGround = 'assets/images/back3.png';
  }
  if (choosedTheme == 3) {
    themeTitle = 'assets/images/detskiysad.png';
    backGround = 'assets/images/back4.png';
  }
}

void chooseChange() {}
