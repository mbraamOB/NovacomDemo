/// Description
Class db.Rechnung Extends (%Persistent, %XML.Adaptor)
{

/// Description
Property Kundennummer As %String;

Property Kundenname As %String;

Property Geburtsdatum As %String;

Property PLZ As %Integer;

Property Ort As %String;

Property Vertragsart As %String;

Property Rechnungsdatum As %String;

Property Gebuehreneinheiten As %Integer;

Storage Default
{
<Data name="RechnungDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Kundennummer</Value>
</Value>
<Value name="3">
<Value>Kundenname</Value>
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
<Value>Vertragsart</Value>
</Value>
<Value name="8">
<Value>Rechnungsdatum</Value>
</Value>
<Value name="9">
<Value>Gebuehreneinheiten</Value>
</Value>
</Data>
<DataLocation>^db.RechnungD</DataLocation>
<DefaultData>RechnungDefaultData</DefaultData>
<IdLocation>^db.RechnungD</IdLocation>
<IndexLocation>^db.RechnungI</IndexLocation>
<StreamLocation>^db.RechnungS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
