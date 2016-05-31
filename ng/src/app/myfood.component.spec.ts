import {
  beforeEachProviders,
  describe,
  expect,
  it,
  inject
} from '@angular/core/testing';
import { MyfoodAppComponent } from '../app/myfood.component';

beforeEachProviders(() => [MyfoodAppComponent]);

describe('App: Myfood', () => {
  it('should create the app',
      inject([MyfoodAppComponent], (app: MyfoodAppComponent) => {
    expect(app).toBeTruthy();
  }));

  it('should have as title \'myfood works!\'',
      inject([MyfoodAppComponent], (app: MyfoodAppComponent) => {
      // expect(app.title).toEqual('myfood works!');
  }));
});
