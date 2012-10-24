<?php

$image = imagecreatefrompng("lenna_padded.png");

for ($y = 0; $y < imagesy($image); $y++) {
    for ($x = 0; $x < imagesx($image); $x++) {
        $byte = imagecolorat($image, $x, $y);
        $line = "\n";
        for ($i = 0; $i < 8; $i++) {
            $line = ($byte % 2).$line;
            $byte /= 2;
        }
        echo $line;
    }
}

?>
