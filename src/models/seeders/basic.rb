p1  = Person.create()
u1  = User.create(email: 'mzjdeen@hotmail.com', password: 'abc123', display_name: 'ZiyanDeen', person: p1)
pd1 = PersonalDetail.create(first_name: 'Ziyan', last_name: 'Junaideen', person: p1) 
