public with sharing class CustomPickList17_2Controller 
{
    
    Public String Conts{set;get;}
    Public List<SelectOption> getContinents()
    {
    
    List<SelectOption> continents= New List<SelectOption>();
    continents.Add(new SelectOption('None','--None--' ));
    continents.Add(New SelectOption('ASIA','Asia' ));
    continents.Add(New SelectOption('EUROPE','Europe' ));
    continents.Add(New SelectOption('ANTARCITICA','Antarctica' ));
    continents.Add(New SelectOption('NA','NA' ));
    continents.Add(New SelectOption('SA','SA' ));
    continents.Add(New SelectOption('AFRICA','Africa' ));
    continents.Add(New SelectOption('AUSTRALIA','Australia' ));
    system.debug('Selected :'+ Continents);
    return continents;
    }
}