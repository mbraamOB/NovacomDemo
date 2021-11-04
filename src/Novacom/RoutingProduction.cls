Class Novacom.RoutingProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Novacom.RoutingProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="XML Output" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\InterSystems\IRIS\mgr\novacom\XML-OUT\</Setting>
  </Item>
  <Item Name="Router" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">Demo.BR.Router</Setting>
  </Item>
  <Item Name="CSV Input" Category="" ClassName="EnsLib.RecordMap.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="RecordMap">Novacom.CSV</Setting>
    <Setting Target="Host" Name="TargetConfigNames">Router</Setting>
    <Setting Target="Adapter" Name="ArchivePath">C:\InterSystems\IRIS\mgr\novacom\CSV-ARCHIVE\</Setting>
    <Setting Target="Adapter" Name="FilePath">C:\InterSystems\IRIS\mgr\novacom\CSV-IN\</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.csv</Setting>
    <Setting Target="Host" Name="HeaderCount">1</Setting>
  </Item>
  <Item Name="EDIFACT Output" Category="" ClassName="EnsLib.EDI.EDIFACT.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\InterSystems\IRIS\mgr\novacom\EDIFACT-OUT\</Setting>
  </Item>
</Production>
}

}
