(*
 * cifra de cesar v0.1b
 * --------------------
 *
 * por   : bleno vinicius
 * e-mail: blenolopes@gmail.com
 * site  : www.blenolopes.com
 * versao: 0.1 beta
 *
 * -[ info ]-
 *
 *      Simples programa que demostra o uso da cifra de césar para criptografar
 * strings. A cifra de césar é uma técnica simples que consiste em trocar cada
 * letra de uma palavra pela terceira préxima letra do alfabeto. Neste caso,
 * por exemplo, a letra "a" seria representada pela letra "d".
 *      Programa de cunho acadêmico. Use-o a vontade, mas conserve os créditos
 * do autor.
 * 
 * -[ compilação ]-
 *
 * compilador: Free Pascal v2.2.0 for i386
 * S.O.      : Ubuntu 8.04
 * kernel    : 2.6.24-19
 * 
 *)

program ccesar;

(*
 * units
 *)

uses
    crt;
    
(*
 * variaveis globais
 *)

var
    escolha : integer;
    
(*
 * procedure info;
 * ---------------
 *      Mostra cabeçalho de informações
 * sobre o ccesar v0.1b.
 *)

procedure info;
begin
    writeln;
    writeln('x. Cifra de César v0.1b');
    writeln('x. ^^^^^ ^^ ^^^^^ ^^^^^');
    writeln;
    writeln('x. por    : Bleno Vinicius');
    writeln('x. e-mail : blenolopes@gmail.com');
    writeln('x. site   : http://www.bleno.org');
    writeln;
end;

(* procedure cifrar
 * ----------------
 *      Procedimento para cifrar a frase
 * informada pelo usuário. 
 *)

procedure cifrar;
var
    c        : char;
    i, j     : integer;
    contador : integer;
    frase    : string;
    alfa     : array[1..26] of char;
    
begin
    contador := 1;

    writeln;
    write('x. Digite a frase: ');
    readln(frase);
    
    for c := 'a' to 'z' do
    begin
        alfa[contador] := c;
        contador       := contador + 1;
    end;
    
    for i := 1 to length(frase) do
        for j := 1 to 26 do
            if (frase[i] = alfa[j]) then
                frase[i] := chr(ord(j + 64 + 3));
    
    writeln('x. Frase cifrada: ', frase);
    readkey;
end;

(* procedure cifrar
 * ----------------
 *      Procedimento para decifrar a frase 
 * informada pelo usuário. 
 *)

procedure decifrar;
var
    c        : char;
    i, j     : integer;
    contador : integer;
    frase    : string;
    alfa     : array[1..26] of char;
    
begin
    contador := 1;

    writeln;
    write('x. Digite a frase: ');
    readln(frase);
    
    for c := 'A' to 'Z' do
    begin
        alfa[contador] := c;
        contador       := contador + 1;
    end;
    
    for i := 1 to length(frase) do
        for j := 1 to 26 do
            if (frase[i] = alfa[j]) then
                frase[i] := chr(ord(j + 96 - 3));
    
    writeln('x. Frase decifrada: ', frase);
    readkey;
end;

(*
 * begin ;P
 *)

begin
    escolha := 0;
    
    while (escolha <> 3) do
    begin
        clrscr;
        
        info;
        writeln('1 : Cifrar');
        writeln('2 : Decifrar');
        writeln('3 : Sair');
        writeln;
        write('Escolha: ');
        readln(escolha);
        
        if (escolha = 1) then
            cifrar
        else
        if (escolha = 2) then
            decifrar
        else
        if (escolha = 3) then
        begin
            clrscr;
            writeln('bye ;)');
        end else
        begin
            writeln;
            writeln('x. Escolha invalida!');
            writeln('x. pressione [enter]...');
            readkey;
        end;
    end;        
end.
{ data: 25/08/2008 - 19:52 }
{ EOF                      }
