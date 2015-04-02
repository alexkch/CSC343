
<pairs> {
	let $users := doc("users.xml")//user
	let $five_or_more :=		
		for $user in $users
		where count($user//playlist) > 4
		return $user
	for $user1 in $five_or_more
	for $user2 in $five_or_more
	where ($user1/@uid < $user2/@uid) and sequence-deep-equal($user1//@pid, $user2//@pid)
	return <pair uid1="{$user1/@uid}" uid2="{$user2/@uid}"/>
} </pairs>