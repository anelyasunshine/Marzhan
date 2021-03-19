export class Share {
  id: number;
  name: string;
  surname: string;
  age: number;
  fiends: number;
  followers: number;
  position: string;



  constructor(id: number,
              name: string,
              surname: string,
              age: number,
              friends: number,
              followers: number,
              position: string,
              ) {
    this.id = id;
    this.name = name;
    this.surname = surname;
    this.age = age;
    this.fiends = friends;
    this.followers = followers;
    this.position = position;
  }
}
