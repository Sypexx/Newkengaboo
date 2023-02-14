library kengaboo.globals;

import 'texts.dart' as globals;

String themeTitle = '';
String backGround = '';
int choosedTheme = 0;
int categoryid = 0;
String categoryTitle = '';
var categories = ['', '', '', ''];
int viewid = 0;
String viewTitle = '';
int textid = 0;
String currentText = '';

void currentView() {
  if (categoryid == 0) {
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

  if (categoryid == 1) {
    if (viewid == 0) {
      viewTitle = 'assets/images/sbornikigr11.png';
    }
    if (viewid == 1) {
      viewTitle = 'assets/images/sbornikigr22.png';
    }
    if (viewid == 2) {
      viewTitle = 'assets/images/sbornikigr33.png';
    }
    if (viewid == 3) {
      viewTitle = 'assets/images/sbornikigr44.png';
    }
  }

  if (categoryid == 2) {
    if (viewid == 0) {
      viewTitle = 'assets/images/konspekt11.png';
    }
    if (viewid == 1) {
      viewTitle = 'assets/images/konspekt22.png';
    }
    if (viewid == 2) {
      viewTitle = 'assets/images/konspekt33.png';
    }
    if (viewid == 3) {
      viewTitle = 'assets/images/konspekt44.png';
    }
  }

  if (categoryid == 3) {
    if (viewid == 0) {
      viewTitle = 'assets/images/sbornik11.png';
    }
    if (viewid == 1) {
      viewTitle = 'assets/images/sbornik22.png';
    }
    if (viewid == 2) {
      viewTitle = 'assets/images/sbornik33.png';
    }
    if (viewid == 3) {
      viewTitle = 'assets/images/sbornik11.png';
    }
  }

  if (categoryid == 4) {
    if (viewid == 0) {
      viewTitle = 'assets/images/sbornik11.png';
    }
    if (viewid == 1) {
      viewTitle = 'assets/images/sbornik22.png';
    }
    if (viewid == 2) {
      viewTitle = 'assets/images/sbornik33.png';
    }
    if (viewid == 3) {
      viewTitle = 'assets/images/sbornik11.png';
    }
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
    categories[0] = 'assets/images/sbornikigr1.png';
    categories[1] = 'assets/images/sbornikigr2.png';
    categories[2] = 'assets/images/sbornikigr3.png';
    categories[3] = 'assets/images/sbornikigr4.png';
  }
  if (categoryid == 2) {
    categoryTitle = 'assets/images/texttasks.png';
    categories[0] = 'assets/images/konspekt1.png';
    categories[1] = 'assets/images/konspekt2.png';
    categories[2] = 'assets/images/konspekt3.png';
    categories[3] = 'assets/images/konspekt4.png';
  }
  if (categoryid == 3) {
    categoryTitle = 'assets/images/textpaint.png';
    categories[0] = 'assets/images/sbornik1.png';
    categories[1] = 'assets/images/sbornik2.png';
    categories[2] = 'assets/images/sbornik3.png';
    categories[3] = 'assets/images/sbornik1.png';
  }
  if (categoryid == 4) {
    categoryTitle = 'assets/images/textsongs.png';
    categories[0] = 'assets/images/sbornik1.png';
    categories[1] = 'assets/images/sbornik2.png';
    categories[2] = 'assets/images/sbornik3.png';
    categories[3] = 'assets/images/sbornik1.png';
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
    themeTitle = 'assets/images/8marta.png';
    backGround = 'assets/images/back3.png';
  }
  if (choosedTheme == 3) {
    themeTitle = 'assets/images/cosmos.png';
    backGround = 'assets/images/back4.png';
  }
  if (choosedTheme == 4) {
    themeTitle = 'assets/images/detskiysad.png';
    backGround = 'assets/images/back5.png';
  }
  if (choosedTheme == 5) {
    themeTitle = 'assets/images/Rastenia.png';
    backGround = 'assets/images/back6.png';
  }
  if (choosedTheme == 6) {
    themeTitle = 'assets/images/Semya.png';
    backGround = 'assets/images/back7.png';
  }
  if (choosedTheme == 7) {
    themeTitle = 'assets/images/Transport.png';
    backGround = 'assets/images/back8.png';
  }
  if (choosedTheme == 8) {
    themeTitle = 'assets/images/Mebel.png';
    backGround = 'assets/images/back9.png';
  }
  if (choosedTheme == 9) {
    themeTitle = 'assets/images/Leto.png';
    backGround = 'assets/images/back10.png';
  }
}

void ChooseText() {
  if (choosedTheme == 0) {
    if (categoryid == 0) {
      if (textid == 0) {
        currentText = globals.SomeText.scenario[0];
      }
    }
  }
  if (choosedTheme == 0) {
    if (categoryid == 0) {
      if (textid == 1) {
        currentText = globals.SomeText.scenario[1];
      }
    }
  }
  if (choosedTheme == 0) {
    if (categoryid == 0) {
      if (textid == 2) {
        currentText = globals.SomeText.scenario[2];
      }
    }
  }
  if (choosedTheme == 0) {
    if (categoryid == 0) {
      if (viewid == 0) {
        if (textid == 3) {
          currentText = globals.SomeText.scenario[3];
        }
      }
    }
  }
}

void chooseChange() {}
