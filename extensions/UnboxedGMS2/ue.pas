{

  This file is part of "Unboxed".

  "Unboxed" is free software; see 
  "http://wiki.lazarus.freepascal.org/FPC_modified_LGPL"
  for details about the copyright.

  "Unboxed" is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

}

library ue;

{$mode objfpc}{$H+}

{$IFDEF FCC_CROSSCOMPILING}
  {$IFDEF UNIX}
    {$linklib libc_nonshared.a}
  {$ENDIF}
{$ENDIF}

uses
  {$IFDEF UNIX}cthreads,{$ENDIF}
  SysUtils, 
  Classes;

type
  PTextFile = ^TextFile;

var
  Info: TUnicodeSearchRec;

{$IFDEF WINDOWS} 
function SystemPath(const VPath: PAnsiChar): widestring; inline;
begin
  Result := UTF8Decode(VPath);
end; 

function SystemReturn(const Value: widestring): PAnsiChar; inline;
begin
  Result := PAnsiChar(UTF8Encode(Value));
end;
{$ELSE}
function SystemPath(const VPath: PAnsiChar): string; inline;
begin
  Result := VPath;
end;

function SystemReturn(const Value: string): PAnsiChar; inline;
begin
  Result := PAnsiChar(Value);
end;
{$ENDIF}

function environment_get_variable_ue(VName: PAnsiChar): PAnsiChar; cdecl;
begin
  Result := SystemReturn(GetEnvironmentVariable(SystemPath(VName)));
end;

function file_exists_ue(VName: PAnsiChar): Double; cdecl;
begin
  if FileExists(SystemPath(VName)) then
    Result := 1
  else
    Result := 0;
end;                    

function file_delete_ue(VName: PAnsiChar): Double; cdecl;
begin
  if DeleteFile(SystemPath(VName)) then
    Result := 1
  else
    Result := 0;
end;

function file_rename_ue(VOld, VNew: PAnsiChar): Double; cdecl;
begin
  if FileExists(SystemPath(VOld)) and RenameFile(SystemPath(VOld), SystemPath(VNew)) then
    Result := 1
  else
    Result := 0;
end;               

function file_copy_ue(VOld, VNew: PAnsiChar): Double; cdecl;
var
  M: TMemoryStream;
begin
  M := TMemoryStream.Create;
  try
    try
      M.LoadFromFile(SystemPath(VOld));
      M.SaveToFile(SystemPath(VNew));
      Result := 1;
    except  
      on E: Exception do
        Result := 0;
    end;
  finally
    FreeAndNil(M);
  end;
end;

function file_text_open_read_ue(VName: PAnsiChar): PChar; cdecl;
var
  F: PTextFile;
begin  
  try
    New(F);
    AssignFile(F^, SystemPath(VName));
    Reset(F^);
    Result := PChar(IntToStr(QWord(F)));
  except
    on E: Exception do Result := PChar('');
  end;
end;        

function file_text_open_write_ue(VName: PAnsiChar): PChar; cdecl;
var
  F: PTextFile;
begin
  try
    New(F);
    AssignFile(F^, SystemPath(VName));
    Rewrite(F^);
    Result := PChar(IntToStr(QWord(F)));
  except
    on E: Exception do Result := PChar('');
  end;
end;

function file_text_open_append_ue(VName: PAnsiChar): PChar; cdecl;
var
  F: PTextFile;
begin      
  try
    New(F);
    AssignFile(F^, SystemPath(VName));
    Append(F^);
    Result := PChar(IntToStr(QWord(F)));     
  except
    on E: Exception do Result := PChar('');
  end;
end;

function file_text_eof_ue(VFile: PChar): Double; cdecl;  
var
  F: PTextFile;
begin 
  try
	F := PTextFile(StrToQWord(VFile));
	if EOF(F^) then
	  Result := 1
	else
	  Result := 0;
  except
    on E: Exception do Result := 1;
  end;
end;

function file_text_readln_ue(VFile: PChar): PAnsiChar; cdecl;
var
  F: PTextFile;
  S: string;
begin   
  try
    F := PTextFile(StrToQWord(VFile));
    Readln(F^, S);
    Result := PAnsiChar(S);
  except
    on E: Exception do Result := PAnsiChar('');
  end;
end;       

function file_text_writeln_ue(VFile: PChar; VText: PAnsiChar): Double; cdecl;
var
  F: PTextFile;
begin
  Result := 0;
  try
    F := PTextFile(StrToQWord(VFile));
    Writeln(F^, VText);
    Result := 1;
  except
    on E: Exception do;
  end;
end;

function file_text_close_ue(VFile: PChar): Double; cdecl;
var
  F: PTextFile;
begin
  Result := 0;
  try
    F := PTextFile(StrToQWord(VFile));
    CloseFile(F^);
	Dispose(F);
    Result := 1;  
  except
    on E: Exception do;
  end;
end;

function working_directory_ue: PAnsiChar; cdecl;
begin
  Result := PAnsiChar(StringReplace(GetCurrentDir, '\', '/', [rfReplaceAll]) + '/');
end;

function directory_exists_ue(VName: PAnsiChar): Double; cdecl;
begin
  if DirectoryExists(SystemPath(VName)) then
    Result := 1
  else
    Result := 0;
end;

function directory_delete_ue(VName: PAnsiChar): Double; cdecl;
begin
  if RemoveDir(SystemPath(VName)) then
    Result := 1
  else
    Result := 0;
end;

function directory_create_ue(VName: PAnsiChar): Double; cdecl;
begin
  if CreateDir(SystemPath(VName)) then
    Result := 1
  else
    Result := 0;
end;        

function directory_rename_ue(VOld, VNew: PAnsiChar): Double; cdecl;
begin
  if DirectoryExists(SystemPath(VOld)) and RenameFile(SystemPath(VOld), SystemPath(VNew)) then
    Result := 1
  else
    Result := 0;
end;

function file_find_first_ue(VPath: PAnsiChar): PAnsiChar; cdecl;
begin
  Result := PAnsiChar('');
  if FindFirst(SystemPath(VPath), faAnyFile and faDirectory, Info) = 0 then
    Result := SystemReturn(Info.Name);
end;           

function file_find_next_ue: PAnsiChar; cdecl;
begin
  Result := PAnsiChar('');
  if FindNext(Info) = 0 then
    Result := SystemReturn(Info.Name);
end;

function file_find_attributes_ue: Double; cdecl;
begin
  Result := Info.Attr;
end;

function file_find_size_ue: Double; cdecl;
begin
  Result := Info.Size;
end;

function file_find_close_ue: Double; cdecl;
begin
  FindClose(Info);
  Result := 1;
end;

exports
  environment_get_variable_ue,
  file_exists_ue,
  file_delete_ue,
  file_rename_ue,
  file_copy_ue,
  file_text_open_read_ue,
  file_text_open_write_ue,
  file_text_open_append_ue,
  file_text_eof_ue,
  file_text_readln_ue, 
  file_text_writeln_ue,
  file_text_close_ue,
  working_directory_ue,
  directory_exists_ue,
  directory_delete_ue,
  directory_create_ue,
  directory_rename_ue,
  file_find_first_ue,
  file_find_next_ue,
  file_find_attributes_ue,     
  file_find_size_ue,
  file_find_close_ue;

begin
end.

