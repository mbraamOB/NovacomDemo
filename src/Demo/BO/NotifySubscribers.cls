Class Demo.BO.NotifySubscribers Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.EMail.OutboundAdapter";

Property Adapter As EnsLib.EMail.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SendNotification(pRequest As Demo.MSG.NotifyRequest, Output pResponse As Ens.Response) As %Status
{
	try {
		set tMsg = ##class(%Net.MailMessage).%New()
		set tMsg.Subject = pRequest.InitialRequest.Domain_" / "_pRequest.InitialRequest.Topic_" / "_pRequest.InitialRequest.Message
		for i=1:1:pRequest.Subscribers.TargetList.Count() {
			 $$$ThrowOnError(tMsg.To.Insert(pRequest.Subscribers.TargetList.GetAt(i).Address))
		}
		$$$ThrowOnError(..Adapter.SendMail(tMsg))
	}
	catch tEx {
		set ^mbException($i(^mbException)) = tEx.DisplayString()
	}
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Demo.MSG.NotifyRequest"> 
		<Method>SendNotification</Method>
	</MapItem>
</MapItems>
}

}
