Class Demo.Utis [ Abstract ]
{

ClassMethod GatewayDemo(pN As %Integer) As %Status
{

    #dim tSc as %Status = $$$OK

    try {
    	set tGw = ##class(%Net.Remote.Gateway).%New()
        $$$ThrowOnError(tGw.%Connect("localhost",53373,"NOVACOM"))  
        write !,"Die Fakultält für ",pN," beträgt: ",##class(NovacomClassLibrary.Math).Fak(tGw,pN)     
    }
    catch tEx {
        set tSc = tEx.AsStatus()
    }

    return tSc
}

}
