Class Demo.DTL.CSV2XML Extends Ens.DataTransformDTL [ DependsOn = (Novacom.CSV.Record, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Novacom.CSV.Record' targetClass='EnsLib.EDI.XML.Document' targetDocType='Rechnung:Rechnung' create='new' language='objectscript' >
<assign value='source.KundenNr' property='target.{Kundennummer}' action='set' />
<assign value='source.Vertragspartner' property='target.{Kundenname}' action='set' />
<assign value='source.Geburtsdatum' property='target.{Geburtsdatum}' action='set' />
<assign value='source.PLZ' property='target.{PLZ}' action='set' />
<assign value='source.Ort' property='target.{Ort}' action='set' />
<assign value='source.Rechnungsdatum' property='target.{Rechnungsdatum}' action='set' />
<assign value='source.Gebuehreneinheiten' property='target.{Gebuehreneinheiten}' action='set' />
<assign value='source.Vertragsart' property='target.{Vertragsart}' action='set' />
</transform>
}

}
