<fewfollowers> {

let $doc := doc("users.xml")
for $u1 in $doc//user
where contains($doc//user/follows/@who, $u1/@uid)
return <who uid="{$u1/@uid}"/>

} </fewfollowers>