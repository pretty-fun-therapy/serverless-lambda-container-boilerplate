<?php

echo "Hello from outside";

return function () {
    echo "Hello from inside";
    return 'Hello world!';
};
