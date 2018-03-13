#!/usr/bin/env ocaml

(* Referenced in: https://rsmith.io/blog/getting-started-with-ocaml *)

let _ =
    let hello_world =
        Printf.printf "Hello World!\n" ;
    in

    let variables_1 =
        let age = 30 in
        Printf.printf "age: %d\n" age ;
    in

    let variables_2 =
        let age = 30 in
        Printf.printf "age: %d\n" age ;

        let age = 31 in
        Printf.printf "age: %d\n" age ;

        let age = 30 in
        Printf.printf "age: %d\n" age ;

        let age = 30 in (
            Printf.printf "age: %d\n" age ;
            let age = 31 in (
                Printf.printf "age: %d\n" age ;
            )
        )
    in

    let function_1 =
        let even x = x mod 2 = 0 in

        Printf.printf "even 4: %b\n" (even 4) ;
        Printf.printf "even 3: %b\n" (even 3) ;
    in

    let function_2 = 
        let rec sum list =
            match list with
            | [] -> 0
            | first :: rest -> first + sum rest
        in

            Printf.printf "sum [1,2,3]: %d\n" (sum [1; 2; 3]) ;
    in

    let number_formatting =
        let big_num = 123_456_789 in
        Printf.printf "big_num: %d\n" big_num ;

        let big_num2 = 123456.654321 in
        Printf.printf "big_num2: %f\n" big_num2 ;
    in

    hello_world ;
    variables_1 ;
    variables_2 ;
    function_1 ;
    function_2 ;
    number_formatting ;
