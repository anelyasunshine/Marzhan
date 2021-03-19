import { TestBed } from '@angular/core/testing';

import { LongingService } from './longing.service';

describe('LongingService', () => {
  let service: LongingService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(LongingService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
