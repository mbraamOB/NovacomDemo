Class Demo.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Pub-Subscriber" Category="" ClassName="EnsLib.PubSub.PubSubOperation" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="PubSub Prozess" Category="" ClassName="Demo.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="PubSub Service" Category="" ClassName="Demo.BS.PubSub" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Notify Subscribers" Category="" ClassName="Demo.BO.NotifySubscribers" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="SMTPPort">465</Setting>
    <Setting Target="Adapter" Name="SMTPServer">smtp.web.de</Setting>
    <Setting Target="Adapter" Name="Credentials">WEB.DE</Setting>
    <Setting Target="Adapter" Name="SSLCheckServerIdentity">0</Setting>
    <Setting Target="Adapter" Name="SSLConfig">ForMail</Setting>
    <Setting Target="Adapter" Name="From">iris_sam@web.de</Setting>
  </Item>
</Production>
}

}
