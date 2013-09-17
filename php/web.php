<?php

// slide content (raw html)
$slides = array(
  "<h1>Learned PHP</h1>",
  "<h1>Self-taught</h1>",
  "<h1>Feel something is not right</h1>",
  "<h1>First time</h1>",
  "<h1>Tools don't make sense</h1>",
  "<h1>Arbitrary</h1>",
  "<h1>Holding me back</h1>",
  "<h1>\"I just need computer science school\"</h1><h2>- Ramsey Nasser, c. 2004</h2>",
);

$slide = $_GET['slide'] + 0;
$prev_slide = $_GET['slide'] - 1;
$next_slide = $_GET['slide'] + 1;

$content = $slides[$slide];

if(!$content) $content = "<h1>&#9731;</h1>";

echo "$content";

// navigation
echo "<p><a href='web.php?slide=$prev_slide'>Previous</a> &bull; <a href='web.php?slide=$next_slide'>Next</a></p>";

?>
