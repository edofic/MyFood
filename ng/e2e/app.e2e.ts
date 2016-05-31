import { MyfoodPage } from './app.po';

describe('myfood App', function() {
  let page: MyfoodPage;

  beforeEach(() => {
    page = new MyfoodPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('myfood works!');
  });
});
