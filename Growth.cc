//This program only works for bidimensional growth.
#include<iostream>
#include<sstream>
#include<fstream>
#include<string>
#include<cmath>
  string key;
   float a,b,c,d;
using namespace std;
  int main() {
       
       cout<<Welcome to the growth calculator!!!!<<endl;
       cout<<Please type the ENTER key...<<endl;
       cin>>(key);
       if(key == 'enter'){
        cout<<Enter initial population size:<<endl;
        cin>>(a);
        cout<<"Iv: "<<a<<endl;
        cout<<"Input the growth rate:"<<endl;
        cin>>(b);
        cout<<"The average growth rate is: "<<endl;
        cout<<"Input the running time:"<<endl;
        cin>>(c);
        d = a^b;
        cout<<"The population size after growth is: "<<d<<endl;
       }
     cout<<"Please reset the program..."<<endl;
  }
