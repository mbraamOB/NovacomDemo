/// RECORDMAP: Generated from RecordMap 'Novacom.CSV'
/// on 2021-11-04 at 10:49:18,992 [2021-11-04 09:49:18.992 UTC]
/// by user UnknownUser
Class Novacom.CSV.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property KundenNr As %String;

Property Vertragspartner As %String;

Property Geburtsdatum As %String;

Property PLZ As %String;

Property Ort As %String;

Property Strasse As %String;

Property Vertragsart As %String;

Property Rechnungsdatum As %String;

Property Gebuehreneinheiten As %String;

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>KundenNr</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Geburtsdatum</Value>
</Value>
<Value name="5">
<Value>PLZ</Value>
</Value>
<Value name="6">
<Value>Ort</Value>
</Value>
<Value name="7">
<Value>Strasse</Value>
</Value>
<Value name="8">
<Value>Vertragsart</Value>
</Value>
<Value name="9">
<Value>Rechnungsdatum</Value>
</Value>
<Value name="10">
<Value>Gebuehreneinheiten</Value>
</Value>
<Value name="11">
<Value>Vertragspartner</Value>
</Value>
</Data>
<DataLocation>^Novacom.CSV.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^Novacom.CSV.RecordD</IdLocation>
<IndexLocation>^Novacom.CSV.RecordI</IndexLocation>
<StreamLocation>^Novacom.CSV.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
