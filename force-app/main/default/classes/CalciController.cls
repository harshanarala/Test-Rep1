public with sharing class CalciController 
{
 public integer a{set;get;}
 public integer b{set;get;}
 public double c{set;get;}
 
 public CalciController ()
 {
 }
 public pagereference Clr()
 {
 a=null;
 b=null;
 c=null;
 return null;
 }
 
 public pagereference Add()
 {
 c=a+b;
 return null;
 }
 public pagereference Sub()
 {
 c=a-b;
 return null;
 }
 public pagereference Mul()
 {
 c=a*b;
 return null;
 }
 public pagereference Div()
 {
 c=a/b;
 return null;
 }
 
 public Pagereference One()
 {

 a=1;
 return null;
 }
 
 
}