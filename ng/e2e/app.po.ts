export class MyfoodPage {
  navigateTo() {
    return browser.get('/');
  }

  getParagraphText() {
    return element(by.css('myfood-app h1')).getText();
  }
}
