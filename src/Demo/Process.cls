/// 
Class Demo.Process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Demo.MSG.Request' response='EnsLib.PubSub.Response' height='2000' width='2000' >
<context>
<property name='Response' type='EnsLib.PubSub.Response' instantiate='0' />
<property name='Req' type='EnsLib.PubSub.Request' instantiate='0' />
</context>
<sequence xend='200' yend='650' >
<call name='Send PubSub Request' target='Pub-Subscriber' async='1' xpos='200' ypos='250' >
<request type='EnsLib.PubSub.Request' >
<assign property="callrequest.DomainName" value="request.Domain" action="set" />
<assign property="callrequest.Topic" value="request.Topic" action="set" />
</request>
<response type='EnsLib.PubSub.Response' >
<assign property="context.Response" value="callresponse" action="set" />
</response>
</call>
<sync name='Warten auf Subscribers' calls='Send PubSub Request' type='all' xpos='200' ypos='350' />
<call name='Notify Subscribers' target='Notify Subscribers' async='1' xpos='200' ypos='450' >
<request type='Demo.MSG.NotifyRequest' >
<assign property="callrequest.InitialRequest" value="request" action="set" />
<assign property="callrequest.Subscribers" value="context.Response" action="set" />
</request>
<response type='Ens.Response' />
</call>
<assign name="Antwort aufbereiten" property="response" value="context.Response" action="set" xpos='200' ypos='550' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
