<fewfollowers> {

let $doc := doc("users.xml")
for $u1 in $doc//user
for $u2 in $doc//user
where contains($u2//follows/@who, $u1/@uid)
return distinct-values(<who uid="{$u1/@uid}"/>)

} </fewfollowers>