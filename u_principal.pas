unit u_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfrmprincipal }

  Tfrmprincipal = class(TForm)
    btncalcular: TButton;
    Btnlimpar: TButton;
    BtnFechar: TButton;
    edtvalor: TEdit;
    edtmargem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btncalcularClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnlimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.lfm}

{ Tfrmprincipal }

procedure Tfrmprincipal.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmprincipal.btncalcularClick(Sender: TObject);
 // Declaração de variavéis do projeto
 Var
   Valor_Compra, Porcetagem, Valor_Final : Real;
begin
   if edtvalor.Text = '' then
   begin
   ShowMessage('Digite uma valor para processeguir....');
   end;
   edtvalor.SetFocus;
   TryStrToFloat(EdtValor.Text, Valor_Compra);
//   Valor_Compra:=StrToFloat(edtvalor.Text);
//   Porcetagem:=StrToFloat(edtmargem.Text) /100;
   if( TryStrToFloat(EdtMargem.Text, Porcetagem)) then
       Porcetagem:= Porcetagem/100;
   Valor_Final:=(Valor_Compra+(Porcetagem*Valor_Compra));
   ShowMessage('O Valor do Produto é : ' + FloatToStr(Valor_Final));
end;

procedure Tfrmprincipal.BtnlimparClick(Sender: TObject);
begin
  edtvalor.Clear;
  edtmargem.clear;
  edtvalor.SetFocus;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin

end;

procedure Tfrmprincipal.FormKeyPress(Sender: TObject; var Key: char);
begin
  if key=#13 then begin
  SelectNext(ActiveControl as TWinControl,True,True);
  key:=#0;
 end;
end;

end.

