/// Artikelklasse
Class Demo.Artikel Extends (%Persistent, %Populate)
{

/// Artikelname
Property Artikelname As %String;

/// Artikelnummer
Property Artikelnummer As %String;

Property VK As %Numeric;

Index ArtikelnummerIndex On Artikelnummer [ Unique ];

Storage Default
{
<Data name="ArtikelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Artikelname</Value>
</Value>
<Value name="3">
<Value>Artikelnummer</Value>
</Value>
<Value name="4">
<Value>VK</Value>
</Value>
</Data>
<DataLocation>^Demo.ArtikelD</DataLocation>
<DefaultData>ArtikelDefaultData</DefaultData>
<IdLocation>^Demo.ArtikelD</IdLocation>
<IndexLocation>^Demo.ArtikelI</IndexLocation>
<StreamLocation>^Demo.ArtikelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
