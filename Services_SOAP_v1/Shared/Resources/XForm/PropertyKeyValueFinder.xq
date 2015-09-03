(:: pragma  parameter="$LogProperties" type="anyType" ::)
(:: pragma  parameter="$propertyName" type="string" ::)
(:: pragma  type="string" ::)

declare namespace xf = "http://tempuri.org/OSBProject1/getProperty/";
declare namespace ctx = "http://www.bea.com/wli/sb/context";

declare function xf:RoutingTableParser($LogProperties as element(*),
    $propertyName as xs:string)
    as xs:string {
    let $match := $LogProperties//*[name()=$propertyName]
    return
    if ($match) then
     $match/text()
    else
   fn:error(xs:QName('IllegalArgument'), $propertyName)
};

declare variable $LogProperties as element(*) external;
declare variable $propertyName as xs:string external;

xf:RoutingTableParser($LogProperties,
    $propertyName)