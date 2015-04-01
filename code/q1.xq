<noplaylist>{
	for $sid in doc("music.xml")//@sid
	return <song sid="{$sid}"/>
}</noplaylist>
