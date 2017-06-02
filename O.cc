#include<iostream>
#include<sstream>
#include<cmath>
#include<string>
#include<fstream>
using namespace std;
void si(){
 cout<<"The sum is: "; 

}
float aa(float& b){
 cin>>b;
 return b;
}  
void ss(){
 cout<<"Please insert your number: ";
}
void sa(){
cout<<"Input a value to add up: ";
}
float add(float a ,float b){
  cout<<(a+b)<<endl;

}
int main() {
 float a,b;
 ss();
 aa(a);
 sa();
 aa(b);
 si(); 
 add(a,b);
}
