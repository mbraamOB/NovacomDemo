/// Demo.Net.Service
Class Demo.Net.Service Extends %SOAP.WebService
{

/// Name des WebService.
Parameter SERVICENAME = "PubSubService";

/// ZU ERLEDIGEN: tatsächlichem SOAP-Namespace angeben
/// SOAP Namespace für den WebService
Parameter NAMESPACE = "http://tempuri.org";

/// Namespaces von referenzierten Klassen werden in der WSDL verwendet.
Parameter USECLASSNAMESPACES = 1;

/// ZU ERLEDIGEN: Argumente und Code hinzufügen.
/// Publish
Method Publish(pInput As Demo.MSG.Request) As EnsLib.PubSub.Response [ WebMethod ]
{
	#dim tSc as %Status
	try {
		$$$ThrowOnError(##class(Ens.Director).CreateBusinessService("PubSub Service",.tSrv))
		$$$ThrowOnError(tSrv.ProcessInput(pInput,.tResponse))
	}
	catch tEx {
		set ^mbException($i(^mbException)) = tEx.DisplayString()
	}
	Return tResponse
}

}
