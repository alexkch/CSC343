let $doc := doc("users.xml")
let $users := $doc//user/@uid 
for $user in $users
for $user2 in $users
return <cool>1 is {$users//@uid} 2 is {$users//@uid} </cool>
