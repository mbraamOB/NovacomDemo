Class Demo.BS.PubSub Extends Ens.BusinessService
{

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	set pOutput = ##class(EnsLib.PubSub.Response).%New()
	set tSc = ..SendRequestSync("PubSub Prozess", pInput, .pOutput)
	Quit $$$OK
}

}
