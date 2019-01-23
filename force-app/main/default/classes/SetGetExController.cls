public with sharing class SetGetExController 
{

  //public String name1;
  public string s;
  Public string s1{Set;Get;}

   public SetGetExController()//Constructor
   {
   s1='This is From Constructor';
   } 
public void setname1(string s2)
{
s=s2;
System.debug('This is From Set');
}
public string getname1()
{
System.debug('This is From Get');
return s;

}
}