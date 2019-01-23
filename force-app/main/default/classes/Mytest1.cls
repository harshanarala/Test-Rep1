public with sharing class Mytest1 
{
integer A=5;
public Mytest1 ()
{

method1();
method2();
}
public void method1(){
A=A+1;
system.debug(A+'Method1');
}
public void method2(){
system.debug(A+'from before');
A=A-1;
system.debug(A+'Method2');
}
}