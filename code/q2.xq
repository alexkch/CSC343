<fewfollowers> {

let $doc := doc("users.xml")
let $users := $doc//user
for $user in $users
where count(for $user2 in $users 
where contains(concat($user2//follows/@who, " "), concat($user/@uid, " "))
return $user/@uid) < 4 
return <who uid="{$user/@uid}"> {for $user3 in $users
								where contains(concat($user3//follows/@who, " "), concat($user/@uid, " "))
								return <follower uid="{$user3/@uid}" />} </who>
} </fewfollowers>






