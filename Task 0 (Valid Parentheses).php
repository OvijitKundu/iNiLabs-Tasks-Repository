<?php

function isValidParentheses($s) {
    $stack = [];
    $bracketPairs = [
        ')' => '(',
        '}' => '{',
        ']' => '['
    ];

    for ($i = 0; $i < strlen($s); $i++) {
        $char = $s[$i];
        // If the current character is a closing bracket
        if (isset($bracketPairs[$char])) {
            $topElement = array_pop($stack) ?? '#';
            if ($bracketPairs[$char] != $topElement) {
                return false;
            }
        } else {
            // If it's an opening bracket, push it onto the stack.
            $stack[] = $char;
        }
    }
    return empty($stack);
}

echo "Output: ";
echo isValidParentheses("()[]{}") ? "true" : "false";
echo "\n";
echo "Output: ";
echo isValidParentheses("([)]") ? "true" : "false";
