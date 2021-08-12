I have created a demo project in #Switui using #MVVM and push it to Github. This repo contains following thing:- 
1. Implementation of  Property wrappers like @ObservedObject,   @Binding, @Published and @State etc.
2. Concept like ViewRepresenatble and a complete Login Module. 

One of the main reasons to create this repo is to specifically point out that we shouldn't create Massive ViewModel in #MVVM. I have seen some projects in which dev are creating Massive ViewModel just like Dev were creating Massive ViewController in #MVC. So I have created the architecture of the app in such a way that Code will be easily manageable and loosely coupled. 

Login API :- 
URL :- https://bhakunidemoapi108.herokuapp.com/login
Method :- POST
Params(raw) :- {
    "email": "XYZ",
    "password": "XYZ"
}
response :-
 {
    "Status": true
}

Note:- remove  any key it will give following response - 
{
    "Status": false
}

