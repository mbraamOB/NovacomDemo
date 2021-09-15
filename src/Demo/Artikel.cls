/// Artikelklasse
Class Demo.Artikel Extends %Persistent
{

/// Artikelname
Property Artikelname As %String;

/// Artikelnummer
Property Artikelnummer As %String;

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
</Data>
<DataLocation>^Demo.ArtikelD</DataLocation>
<DefaultData>ArtikelDefaultData</DefaultData>
<IdLocation>^Demo.ArtikelD</IdLocation>
<IndexLocation>^Demo.ArtikelI</IndexLocation>
<StreamLocation>^Demo.ArtikelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
