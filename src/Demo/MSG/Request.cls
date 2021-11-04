Class Demo.MSG.Request Extends Ens.Request
{

Property Domain As %String;

Property Topic As %String;

Property Message As %String;

Storage Default
{
<Data name="RequestDefaultData">
<Subscript>"Request"</Subscript>
<Value name="1">
<Value>Domain</Value>
</Value>
<Value name="2">
<Value>Topic</Value>
</Value>
<Value name="3">
<Value>Message</Value>
</Value>
</Data>
<DefaultData>RequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
