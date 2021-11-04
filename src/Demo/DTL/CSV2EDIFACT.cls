Class Demo.DTL.CSV2EDIFACT Extends Ens.DataTransformDTL [ DependsOn = (Novacom.CSV.Record, EnsLib.EDI.EDIFACT.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Novacom.CSV.Record' targetClass='EnsLib.EDI.EDIFACT.Document' targetDocType='D96A:INVOIC' create='new' language='objectscript' >
<assign value='source.Rechnungsdatum' property='target.{DTM-3(1):C507.2380}' action='set' />
<assign value='source.Vertragspartner' property='target.{SegmentGroup2(1).NAD-12:C058(1).3124}' action='set' />
<assign value='source.Ort' property='target.{SegmentGroup2(1).NAD-12:C058(1).31242}' action='set' />
<assign value='source.Strasse' property='target.{SegmentGroup2(1).NAD-12:C058(1).31243}' action='set' />
<assign value='source.KundenNr' property='target.{UNH-1:0062}' action='set' />
<assign value='"INVOIC"' property='target.{UNH-1:S009(1).0065}' action='set' />
<assign value='"D"' property='target.{UNH-1:S009(1).0052}' action='set' />
<assign value='"96A"' property='target.{UNH-1:S009(1).0054}' action='set' />
<assign value='"UN"' property='target.{UNH-1:S009(1).0051}' action='set' />
<assign value='"4.2"' property='target.{UNH-1:S009(1).0057}' action='set' />
<assign value='1' property='target.{UNT-193:0074}' action='set' />
<assign value='source.KundenNr' property='target.{UNT-193:0062}' action='set' />
<assign value='source.PLZ' property='target.{BGM-2:C002.1001}' action='set' />
</transform>
}

}
