<noplaylist>{
	let $doc := doc("music.xml")
	for $sid in $doc//song/@sid
	where not($doc//track/@sid = $sid)
	return <song sid="{$sid}"/>
	
}</noplaylist>
