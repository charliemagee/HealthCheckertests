<?
$logFile = dirname($_SERVER['SCRIPT_FILENAME']) . "/logs/log.txt";
$buff = file_get_contents($logFile);
$logLines = explode("\n", $buff);
$max = count($logLines);
for($i = $max; $i > 0; $i--) {
	$line = $logLines[$i - 1];
	if (!trim($line)) {
		continue;
	}
	list($dateStamp, $logLine) = explode('->', $line);
	echo "$dateStamp";
	$log = unserialize($logLine);

	echo "<blockquote>";
	foreach($log as $key=>$value) {
		echo "{$key} -- " . htmlentities($value) . "<br>\n";
	}
	echo "</blockquote>";
	echo "<hr>";
}
