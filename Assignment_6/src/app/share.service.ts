import {Share} from './share';
import { Injectable } from '@angular/core';
import {LongingService} from './longing.service';

@Injectable()
export class ShareService {


  constructor(private longingService: LongingService) {
  }

  getShares(){
    let shareList: Share[];
    shareList = [
      new Share(1, 'Erdaulet', 'Serikbai', 19, 79, 168, 'sudent'),
    ];
    this.longingService.log('List of users: ' + shareList);
    return shareList;
  }
  getShares2(){
    let shareList2: Share[];
    shareList2 = [
      new Share(2, 'Nurbol', 'Lakhaibekov', 19, 200, 100, 'sudent'),
    ];
    this.longingService.log('List of users: ' + shareList2);
    return shareList2;
  }
  getShares3(){
    let shareList3: Share[];
    shareList3 = [
      new Share(3, 'Zhanay', 'Kalimbetov', 19, 150, 90, 'sudent'),
    ];
    this.longingService.log('List of users: ' + shareList3);
    return shareList3;
  }
}
