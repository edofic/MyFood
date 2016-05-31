import { bootstrap } from '@angular/platform-browser-dynamic';
import { enableProdMode } from '@angular/core';
import { MyfoodAppComponent, environment } from './app/';
import {FIREBASE_PROVIDERS,
  defaultFirebase,
  AngularFire,
  AuthMethods,
  AuthProviders,
  firebaseAuthConfig} from 'angularfire2';

if (environment.production) {
  enableProdMode();
}

bootstrap(MyfoodAppComponent, [
  FIREBASE_PROVIDERS,
  defaultFirebase(DEFAULT_FIREBASE),
  firebaseAuthConfig({
    provider: AuthProviders.Google,
    method: AuthMethods.Redirect
  }),
]);

