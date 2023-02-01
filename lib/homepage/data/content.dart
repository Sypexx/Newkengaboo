library kengaboo.globals;

String themeTitle = '';
String backGround = '';
int choosedTheme = 0;
int categoryid = 0;
String categoryTitle = '';
var categories = ['', '', '', ''];
int viewid = 0;
String viewTitle = '';

void currentView() {
  if (viewid == 0) {
    viewTitle = 'assets/images/scenario11.png';
  }
  if (viewid == 1) {
    viewTitle = 'assets/images/scenario22.png';
  }
  if (viewid == 2) {
    viewTitle = 'assets/images/scenario33.png';
  }
  if (viewid == 3) {
    viewTitle = 'assets/images/scenario44.png';
  }
}

void applycat() {
  if (categoryid == 0) {
    categoryTitle = 'assets/images/textmain.png';
    categories[0] = 'assets/images/scenario1.png';
    categories[1] = 'assets/images/scenario2.png';
    categories[2] = 'assets/images/scenario3.png';
    categories[3] = 'assets/images/scenario4.png';
  }
  if (categoryid == 1) {
    categoryTitle = 'assets/images/textgame.png';
    categories[0] = '';
    categories[1] = '';
    categories[2] = '';
    categories[3] = '';
  }
  if (categoryid == 2) {
    categoryTitle = 'assets/images/texttasks.png';
    categories[0] = '';
    categories[1] = '';
    categories[2] = '';
    categories[3] = '';
  }
  if (categoryid == 3) {
    categoryTitle = 'assets/images/textpaint.png';
    categories[0] = '';
    categories[1] = '';
    categories[2] = '';
    categories[3] = '';
  }
  if (categoryid == 4) {
    categoryTitle = 'assets/images/textsongs.png';
    categories[0] = '';
    categories[1] = '';
    categories[2] = '';
    categories[3] = '';
  }
}

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
