import { Component } from '@angular/core';
import {AngularFire, FirebaseObjectObservable} from 'angularfire2';
import {Observable} from 'rxjs/Rx';
import * as moment from 'moment';


@Component({
  moduleId: module.id,
  selector: 'myfood-app',
  templateUrl: 'myfood.component.html',
  styleUrls: ['myfood.component.css'],
})
export class MyfoodAppComponent {
  my_name = "Andraz Bajt";
  close_time = moment({hour: 14, minute: 38});
  timeState = Observable.interval(1000).map(() => {
    return {
      open: this.close_time.isAfter(),
      text: this.close_time.fromNow(),
    };
  });

  af: AngularFire;
  today = new Date().toISOString().substring(0,10);

  menu_link: Observable<String>;
  orders: Observable<Array<Object>>;
  my_order: FirebaseObjectObservable<String>;

  constructor(af: AngularFire) {
    this.af = af;
    af.auth.subscribe((auth) => {
      if (auth == null) {
        af.auth.login();
      } else {
        this.init(auth.google.displayName);
      }
    });
  }

  init(my_name: string) {
    this.my_name = my_name;
    this.menu_link = this.af.object("/latest_menu");
    this.orders = Observable.combineLatest(
      this.af.object("/days/" + this.today),
      this.timeState
    ).map(([value, ts]) => {
      let result = [];
      for(let key in value) {
        if (key != this.my_name || !ts.open) {
          result.push({ key, value: value[key] });
        }
      }
      return result;
    })
    this.my_order = this.af.object("/days/" + this.today + "/" + my_name);
  }

  save(newValue: String) {
    console.log("saving", newValue);
    this.my_order.set(newValue);
  }

  logout() {
    this.af.auth.logout();
  }
}
