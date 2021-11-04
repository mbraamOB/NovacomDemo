Class Demo.MSG.NotifyRequest Extends Ens.Request
{

Property InitialRequest As Demo.MSG.Request;

Property Subscribers As EnsLib.PubSub.Response;

Storage Default
{
<Data name="NotifyRequestDefaultData">
<Subscript>"NotifyRequest"</Subscript>
<Value name="1">
<Value>InitialRequest</Value>
</Value>
<Value name="2">
<Value>Subscribers</Value>
</Value>
</Data>
<DefaultData>NotifyRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
