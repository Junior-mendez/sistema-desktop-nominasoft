�
gD:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\FormBoletasPago.cs
	namespace 	
CapaPresentacion
 
. 
WindowsForms '
{
public 

partial 
class 
FormBoletasPago (
:) *
Form+ /
{ 
public 
FormBoletasPago 
( 
List #
<# $
BoletaDePago$ 0
>0 1
boletas2 9
)9 :
{ 	
InitializeComponent 
(  
)  !
;! "
foreach 
( 
BoletaDePago  
boleta! '
in( *
boletas+ 2
)2 3
{ 
Empleado 
empleado !
=" #
new$ '
Empleado( 0
(0 1
)1 2
;2 3
Contrato 
contrato !
=" #
new$ '
Contrato( 0
(0 1
empleado1 9
)9 :
;: ;
Double 
	totalHora  
=! "
boleta# )
.) *
TotalDeHoras* 6
;6 7
Double 
	valorHora  
=! "
boleta# )
.) *
Contrato* 2
.2 3
PagoPorHora3 >
;> ?
Double 
sueldoBasico #
=$ %
boleta& ,
., -
SueldoBasico- 9
;9 :
Double 

=% &
boleta' -
.- .
TotalDeIngresos. =
;= >
Double 
totalDescuentos &
=' (
boleta) /
./ 0
TotalDeDescuentos0 A
;A B
Double 

sueldoNeto !
=" #
boleta$ *
.* +

SueldoNeto+ 5
;5 6
String 
dniEmpleado "
=# $
boleta% +
.+ ,
Contrato, 4
.4 5
Empleado5 =
.= >
Dni> A
;A B
String 
nombre 
= 
boleta  &
.& '
Contrato' /
./ 0
Empleado0 8
.8 9
Nombre9 ?
;? @
dataGridBoletas   
.    
Rows    $
.  $ %
Add  % (
(  ( )
dniEmpleado  ) 4
,  4 5
nombre  6 <
,  < =
	totalHora  > G
,  G H
	valorHora  I R
,  R S
sueldoBasico  T `
,  ` a

,  o p
totalDescuentos	  q �
,
  � �

sueldoNeto
  � �
)
  � �
;
  � �
}!! 
}## 	
private%% 
void%% *
dataGridView1_CellContentClick%% 3
(%%3 4
object%%4 :
sender%%; A
,%%A B%
DataGridViewCellEventArgs%%C \
e%%] ^
)%%^ _
{&& 	
}(( 	
private** 
void**  
FormBoletasPago_Load** )
(**) *
object*** 0
sender**1 7
,**7 8
	EventArgs**9 B
e**C D
)**D E
{++ 	
},, 	
}-- 
}.. �
`D:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\FormMenu.cs
	namespace 	
CapaPresentacion
 
. 
WindowsForms '
{ 
public

partial
class
FormMenu
:
Form
{ 
public 
FormMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 4
(registrarContratoToolStripMenuItem_Click =
(= >
object> D
senderE K
,K L
	EventArgsM V
eW X
)X Y
{ 	!
FormRegistrarContrato !!
formRegistrarContrato" 7
=8 9
new: =!
FormRegistrarContrato> S
(S T
)T U
;U V!
formRegistrarContrato !
.! "
Show" &
(& '
)' (
;( )
} 	
private 
void 4
(registrarEmpleadoToolStripMenuItem_Click =
(= >
object> D
senderE K
,K L
	EventArgsM V
eW X
)X Y
{ 	 
FormRegistroEmpleado  
formEmpleado! -
=. /
new0 3 
FormRegistroEmpleado4 H
(H I
)I J
;J K
formEmpleado 
. 
Show 
( 
) 
;  
} 	
private   
void   0
$procesarPagosToolStripMenuItem_Click   9
(  9 :
object  : @
sender  A G
,  G H
	EventArgs  I R
e  S T
)  T U
{!! 	
FormProcesarPago"" 
formProcesar"" )
=""* +
new""+ .
FormProcesarPago""/ ?
(""? @
)""@ A
;""A B
formProcesar## 
.## 
Show## 
(## 
)## 
;##  
}$$ 	
}%% 
}&& �
hD:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\FormProcesarPago.cs
	namespace
CapaPresentacion
 
.
WindowsForms
{ 
public 

partial 
class 
FormProcesarPago )
:* +
Form, 0
{  
ProcesarPagoServicio 
procesarPago )
=* +
new, / 
ProcesarPagoServicio0 D
(D E
)E F
;F G

periodo 
= 
new  #

(1 2
)2 3
;3 4
public 
FormProcesarPago 
(  
)  !
{ 	
InitializeComponent 
(  
)  !
;! "
obtenerPeriodo 
( 
)  
;  !
} 	
private 
void 
btnProcesar_Click &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
procesarPeriodo 
( 
) 
; 
} 	
public   
void   
obtenerPeriodo   "
(  " #
)  # $
{!! 	
try""	 
{## 
periodo$$ 
=$$ 
procesarPago$$ "
.$$" #
buscarPeriodoActivo$$# 6
($$6 7
true$$7 ;
)$$; <
;$$< =

textCodigo%% 
.%% 
Text%% 
=%% 
periodo%% %
.%%% &

.%%3 4
ToString%%4 <
(%%< =
)%%= >
;%%> ?
dateFechaInicio&& 
.&& 
Value&& !
=&&" #
periodo&&$ +
.&&+ ,
FechaInicio&&, 7
;&&7 8
dateFechaFin'' 
.'' 
Value'' 
=''  
periodo''! (
.''( )
FechaFin'') 1
;''1 2
}(( 
catch)) 
()) 
	Exception)) 
))) 
{** 

MessageBox++ 
.++ 
Show++ 
(++  
$str++  :
)++: ;
;++; <
btnProcesar,, 
.,, 
Enabled,, #
=,,$ %
false,,& +
;,,+ ,
}.. 
}// 	
public00 
void00 
procesarPeriodo00 #
(00# $
)00$ %
{11 	
List22 
<22 
BoletaDePago22 
>22 
boletas22 &
=22& '
new22( +
List22, 0
<220 1
BoletaDePago221 =
>22= >
(22> ?
)22? @
;22@ A
obtenerPeriodo33 
(33 
)33 
;33 
if44 
(44 
periodo44 
!=44 
null44 
)44  
{55 
boletas77 
=77 
procesarPago77 *
.77* +
generarBoletas77+ 9
(779 :
periodo77: A
)77A B
;77B C
FormBoletasPago88 #
formBoletas88$ /
=880 1
new882 5
FormBoletasPago886 E
(88E F
boletas88F M
)88M N
;88N O
formBoletas99 
.99 
Show99  
(99  !
)99! "
;99" #

MessageBox:: 
.:: 
Show:: 
(::  
$str::  ,
)::, -
;::- .
}== 
else>> 
{?? 

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$str@@  '
)@@' (
;@@( )
}AA 
}BB 	
privateDD 
voidDD !
FormProcesarPago_LoadDD *
(DD* +
objectDD+ 1
senderDD2 8
,DD8 9
	EventArgsDD: C
eDDD E
)DDE F
{EE 	
}GG 	
}HH 
}II Ƃ
mD:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\FormRegistrarContrato.cs
	namespace
CapaPresentacion
 
.
WindowsForms
{ 
public 

partial 
class !
FormRegistrarContrato .
:/ 0
Form1 5
{ 
Empleado 
emp 
= 
new 
Empleado #
(# $
)$ %
;% &$
ProcesarContratoServicio  
gestionarContrato! 2
=3 4
new5 8$
ProcesarContratoServicio9 Q
(Q R
)R S
;S T
Contrato 
contrato 
= 
new 
Contrato  (
(( )
)) *
;* +
Afp 
afp 
= 
new 
Afp 
( 
) 
; 
public !
FormRegistrarContrato $
($ %
)% &
{ 	
InitializeComponent 
(  
)  !
;! "
List 
< 
string 
> 
lista 
=  
new! $
List% )
<) *
string* 0
>0 1
(1 2
)2 3
;3 4
lista 
. 
Add 
( 
$str !
)! "
;" #
lista 
. 
Add 
( 
$str "
)" #
;# $
lista 
. 
Add 
( 
$str $
)$ %
;% &
comboBoxAfp 
. 

DataSource "
=# $
lista% *
;* +
} 	
private 
void 
groupBox2_Enter $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{   	
}"" 	
private$$ 
void$$ 

($$" #
object$$# )
sender$$* 0
,$$0 1
	EventArgs$$2 ;
e$$< =
)$$= >
{%% 	
Buscar&& 
(&& 
)&& 
;&& 
}'' 	
private)) 
void)) 

())" #
object))# )
sender))* 0
,))0 1
	EventArgs))2 ;
e))< =
)))= >
{** 	
	registrar++ 
(++ 
)++ 
;++ 
limpiar,, 
(,, 
),, 
;,, 
}-- 	
public.. 
void.. 
	registrar.. 
(.. 
).. 
{// 	
contrato00 
.00 
Estado00 
=00 
true00 "
;00" #
contrato11 
.11 
FechaInicio11  
=11! "
dateFechaInicio11# 2
.112 3
Value113 8
;118 9
contrato22 
.22 
FechaFin22 
=22 
dateFechaFin22  ,
.22, -
Value22- 2
;222 3
contrato33 
.33 
PagoPorHora33  
=33! "
Double33# )
.33) *
Parse33* /
(33/ 0

.33= >
Text33> B
)33B C
;33C D
contrato44 
.44 
HorasSemana44  
=44! "
int44# &
.44& '
Parse44' ,
(44, -
textHoraSemana44- ;
.44; <
Text44< @
)44@ A
;44A B
contrato55 
.55 
AsignacionFamiliar55 '
=55( )
checkAsignacion55* 9
.559 :
Checked55: A
;55A B
contrato66 
.66 
Cargo66 
=66 
	textCargo66 &
.66& '
Text66' +
;66+ ,
afp77 
=77 
gestionarContrato77 #
.77# $
	buscarAfp77$ -
(77- .
comboBoxAfp77. 9
.779 :
Text77: >
)77> ?
;77? @
if99 
(99 
gestionarContrato99  
.99  !
guardarContrato99! 0
(990 1
contrato991 9
,999 :
emp99; >
,99> ?
afp99@ C
)99C D
)99D E
{:: 

MessageBox;; 
.;; 
Show;; 
(;;  
$str;;  3
);;3 4
;;;4 5
}<< 
else== 
{>> 

MessageBox?? 
.?? 
Show?? 
(??  
$str??  ;
)??; <
;??< =
}@@ 
}CC 	
publicDD 
voidDD 
BuscarDD 
(DD 
)DD 
{EE 	
StringFF 
dniFF 
=FF 
textDniFF  
.FF  !
TextFF! %
;FF% &
ifGG 
(GG 
stringGG 
.GG 

(GG$ %
dniGG% (
)GG( )
)GG) *
{HH 

MessageBoxII 
.II 
ShowII 
(II  
$strII  A
)IIA B
;IIB C
}JJ 
elseKK 
{LL 
tryMM 
{NN 
empOO 
=OO 
gestionarContratoOO +
.OO+ ,
buscarEmpleadoOO, :
(OO: ;
dniOO; >
)OO> ?
;OO? @

textNombrePP 
.PP 
TextPP #
=PP$ %
empPP& )
.PP) *
NombrePP* 0
;PP0 1
textTelefonoQQ  
.QQ  !
TextQQ! %
=QQ& '
empQQ( +
.QQ+ ,
TelefonoQQ, 4
;QQ4 5

.RR! "
TextRR" &
=RR' (
empRR) ,
.RR, -
	DireccionRR- 6
;RR6 7
textEstadoCivilSS #
.SS# $
TextSS$ (
=SS) *
empSS+ .
.SS. /
EstadoCivilSS/ :
;SS: ;
dateFechaNacimientoTT '
.TT' (
ValueTT( -
=TT. /
empTT/ 2
.TT2 3
FechaNacimientoTT3 B
;TTB C
	textGradoUU 
.UU 
TextUU "
=UU# $
empUU% (
.UU( )
GradoAcademicoUU) 7
;UU7 8
BooleanVV 
opVV 
=VV  
gestionarContratoVV! 2
.VV2 3'
buscarUltimoContratoVigenteVV3 N
(VVN O
dniVVO R
)VVR S
;VVS T
ifWW 
(WW 
opWW 
)WW 
{XX 

MessageBoxYY "
.YY" #
ShowYY# '
(YY' (
$strYY( Q
)YYQ R
;YYR S
contratoZZ  
=ZZ! "
gestionarContratoZZ# 4
.ZZ4 5 
buscarUltimoContratoZZ5 I
(ZZI J
dniZZJ M
)ZZM N
;ZZN O
dateFechaInicio[[ '
.[[' (
Value[[( -
=[[. /
contrato[[0 8
.[[8 9
FechaInicio[[9 D
;[[D E
dateFechaFin\\ $
.\\$ %
Value\\% *
=\\+ ,
contrato\\- 5
.\\5 6
FechaFin\\6 >
;\\> ?
dateFechaFin]] $
.]]$ %
Value]]% *
=]]+ ,
contrato]]- 5
.]]5 6
FechaFin]]6 >
;]]> ?
comboBoxAfp^^ #
.^^# $
Text^^$ (
=^^) *
contrato^^+ 3
.^^3 4
Afp^^4 7
.^^7 8
	NombreAfp^^8 A
;^^A B

.__% &
Text__& *
=__+ ,
contrato__- 5
.__5 6
PagoPorHora__6 A
.__A B
ToString__B J
(__J K
)__K L
;__L M
textHoraSemana`` &
.``& '
Text``' +
=``, -
contrato``. 6
.``6 7
HorasSemana``7 B
.``B C
ToString``C K
(``K L
)``L M
;``M N
checkAsignacionaa '
.aa' (
Checkedaa( /
=aa0 1
contratoaa2 :
.aa: ;
AsignacionFamiliaraa; M
;aaM N
	textCargobb !
.bb! "
Textbb" &
=bb' (
contratobb) 1
.bb1 2
Cargobb2 7
;bb7 8
	btnEditarcc !
.cc! "
Enabledcc" )
=cc* +
truecc, 0
;cc0 1
	btnAnulardd !
.dd! "
Enableddd" )
=dd* +
truedd, 0
;dd0 1
btnRegistraree $
.ee$ %
Enabledee% ,
=ee- .
falseee/ 4
;ee4 5
}ff 
elsegg 
{hh 
groupBoxContratoii (
.ii( )
Enabledii) 0
=ii1 2
trueii3 7
;ii7 8
}jj 
}kk 
catchll 
(ll 
	Exceptionll  
)ll! "
{mm 

MessageBoxnn 
.nn 
Shownn #
(nn# $
$strnn$ <
)nn< =
;nn= >
}oo 
}pp 
}qq 	
publicrr 
Stringrr 
Dnirr 
(rr 
)rr 
{ss 	
returntt 
textDnitt 
.tt 
Texttt 
;tt  
}uu 	
publicvv 
voidvv 
editarvv 
(vv 
)vv 
{ww 	
groupBoxContratoyy 
.yy 
Enabledyy $
=yy% &
trueyy' +
;yy+ ,

btnGuardarzz 
.zz 
Visiblezz 
=zz  
truezz! %
;zz% &
}{{ 	
public|| 
void|| 
guardar|| 
(|| 
)|| 
{}} 	
Afp~~ 
	afpUpdate~~ 
=~~ 
new~~ 
Afp~~  #
(~~# $
)~~$ %
;~~% &
	afpUpdate 
= 
gestionarContrato )
.) *
	buscarAfp* 3
(3 4
comboBoxAfp4 ?
.? @
Text@ D
)D E
;E F
Contrato
�� 
contratoUpdate
�� #
=
��$ %
new
��& )
Contrato
��* 2
(
��2 3
	afpUpdate
��3 <
)
��< =
;
��= >
contratoUpdate
�� 
.
�� 
Codigo
�� !
=
��" #
contrato
��$ ,
.
��, -
Codigo
��- 3
;
��3 4
contratoUpdate
�� 
.
�� 
Cargo
��  
=
��! "
	textCargo
��# ,
.
��, -
Text
��- 1
;
��1 2
contratoUpdate
�� 
.
�� 
PagoPorHora
�� &
=
��& '
double
��( .
.
��. /
Parse
��/ 4
(
��4 5

��5 B
.
��B C
Text
��C G
)
��G H
;
��H I
contratoUpdate
�� 
.
�� 
HorasSemana
�� &
=
��' (
int
��) ,
.
��, -
Parse
��- 2
(
��2 3
textHoraSemana
��3 A
.
��A B
Text
��B F
)
��F G
;
��G H
contratoUpdate
�� 
.
�� 
FechaInicio
�� &
=
��' (
dateFechaInicio
��) 8
.
��8 9
Value
��9 >
;
��> ?
contratoUpdate
�� 
.
�� 
FechaFin
�� #
=
��# $
dateFechaFin
��% 1
.
��1 2
Value
��2 7
;
��7 8
contratoUpdate
�� 
.
��  
AsignacionFamiliar
�� -
=
��- .
checkAsignacion
��/ >
.
��> ?
Checked
��? F
;
��F G
try
�� 
{
�� 
gestionarContrato
�� !
.
��! "
editarContrato
��" 0
(
��0 1
contratoUpdate
��1 ?
)
��? @
;
��@ A

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  7
)
��7 8
;
��8 9
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  =
)
��= >
;
��> ?
}
�� 
}
�� 	
public
�� 
void
�� 
limpiar
�� 
(
�� 
)
�� 
{
�� 	

textNombre
�� 
.
�� 
Text
�� 
=
�� 
$str
��  
;
��  !
textDni
�� 
.
�� 
Text
�� 
=
�� 
$str
�� 
;
�� 
textTelefono
�� 
.
�� 
Text
�� 
=
�� 
$str
��  "
;
��" #

�� 
.
�� 
Text
�� 
=
��  
$str
��! #
;
��# $
textEstadoCivil
�� 
.
�� 
Text
��  
=
��! "
$str
��# %
;
��% &
	textGrado
�� 
.
�� 
Text
�� 
=
�� 
$str
�� 
;
��  !
dateFechaNacimiento
�� 
.
��  
Value
��  %
=
��& '
DateTime
��( 0
.
��0 1
Now
��1 4
;
��4 5
	textCargo
�� 
.
�� 
Text
�� 
=
�� 
$str
�� 
;
��  
comboBoxAfp
�� 
.
�� 
Text
�� 
=
�� 
$str
�� !
;
��! "
textHoraSemana
�� 
.
�� 
Text
�� 
=
��  !
$str
��" $
;
��$ %

�� 
.
�� 
Text
�� 
=
��  
$str
��! #
;
��# $
checkAsignacion
�� 
.
�� 
Checked
�� #
=
��$ %
false
��& +
;
��+ ,
groupBoxContrato
�� 
.
�� 
Enabled
�� $
=
��% &
false
��' ,
;
��, -
}
�� 	
private
�� 
void
�� '
textValorHora_TextChanged
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
	EventArgs
��> G
e
��H I
)
��I J
{
�� 	
}
�� 	
private
�� 
void
�� 

�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
	EventArgs
��2 ;
e
��< =
)
��= >
{
�� 	
guardar
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� (
FormRegistrarContrato_Load
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
	EventArgs
��? H
e
��I J
)
��J K
{
�� 	
}
�� 	
private
�� 
void
�� 
btnEditar_Click
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
	EventArgs
��4 =
e
��> ?
)
��? @
{
�� 	
editar
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
button1_Click_1
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
	EventArgs
��4 =
e
��> ?
)
��? @
{
�� 	
anularContrato
�� 
(
�� 
)
�� 
;
�� 
limpiar
�� 
(
�� 
)
�� 
;
�� 
	btnEditar
�� 
.
�� 
Enabled
�� 
=
�� 
false
��  %
;
��% &
	btnAnular
�� 
.
�� 
Enabled
�� 
=
�� 
false
��  %
;
��% &
}
�� 	
private
�� 
void
�� 
anularContrato
�� #
(
��# $
)
��$ %
{
�� 	
try
�� 
{
�� 
gestionarContrato
�� !
.
��! "
anularContrato
��" 0
(
��0 1
contrato
��1 9
)
��9 :
;
��: ;

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  '
)
��' (
;
��( )
}
�� 
}
�� 	
}
�� 
}�� �
lD:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\FormRegistroEmpleado.cs
	namespace 	
CapaPresentacion
 
. 
WindowsForms '
{ 
public

partial
class
FormRegistroEmpleado
:
Form
{ 
public  
FormRegistroEmpleado #
(# $
)$ %
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} �
_D:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\Program.cs
	namespace 	
CapaPresentacion
 
. 
WindowsForms '
{ 
static		 

class		 
Program		 
{

 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
Application 
. 
Run 
( 
new 
FormMenu  (
(( )
)) *
)* +
;+ ,
} 	
} 
} �
oD:\Documents\UPN\SolucionNominaSoft\SolucionNominaSoft\CapaPresentacion.WindowsForms\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 


( 
$str 8
)8 9
]9 :
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str :
): ;
]; <
[
assembly
:

AssemblyCopyright
(
$str
)
]
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *