declare namespace functx = "http://www.functx.com";
declare function functx:sequence-deep-equal
  ( $seq1 as item()* ,
    $seq2 as item()* )  as xs:boolean {

  every $i in 1 to max((count($seq1),count($seq2)))
  satisfies deep-equal($seq1[$i],$seq2[$i])
 } ;
<pairs> {
	let $users := doc("users.xml")//user
	let $five_or_more :=		
		for $user in $users
		where count($user//playlist) > 4
		return $user
	for $user1 in $five_or_more
	for $user2 in $five_or_more
	where ($user1/@uid < $user2/@uid)
		return
		if (every $p1 in $user1//@pid satisfies ($p1=$user2//@pid) and
			every $p2 in $user2//@pid satisfies ($p2=$user1//@pid)) then
			<pair uid1="{$user1/@uid}" uid2="{$user2/@uid}"/>
		else
			()
} </pairs>