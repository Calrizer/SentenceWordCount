program word;

uses crt;

var input:string;

words,len,current,currentback:integer;

isSentence:boolean;

procedure main;
begin

    clrscr;
    TextColor(White);
    
    writeln('Enter a sentence to find out how many words there are...');
    writeln;
    readln(input);
    
    len := Length(input);
    
    isSentence := true;
    
    for current := 1 to len do
    begin
        if (input[current] = ' ') then
        begin
            words := words + 1;
        end
        else if current = len then
        begin
            words := words + 1;
        end;
    end;
    
    writeln;
    if words > 1 then
    begin
        writeln('There are ', words, ' words in your sentence.');
    end
    else if words = 1 then
    begin
        writeln('There is ', words, ' word in your sentence.');
    end
    else
    begin
        writeln('There are no words in your sentence.');
        isSentence := false;
    end;
    writeln;
end;

procedure backwards;
begin
    writeln('The sentence backwards is...');
    writeln;
    currentback := len;
    for current := 1 to len do
    begin
        write(input[currentback]);
        currentback := currentback - 1;
    end;
end;

begin
    main;
    if isSentence = true then backwards;
    readln;
end.