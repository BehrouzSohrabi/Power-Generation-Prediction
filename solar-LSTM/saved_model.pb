??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02unknown8??
~
dense_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_162/kernel
w
$dense_162/kernel/Read/ReadVariableOpReadVariableOpdense_162/kernel* 
_output_shapes
:
??*
dtype0
u
dense_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_162/bias
n
"dense_162/bias/Read/ReadVariableOpReadVariableOpdense_162/bias*
_output_shapes	
:?*
dtype0
}
dense_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_163/kernel
v
$dense_163/kernel/Read/ReadVariableOpReadVariableOpdense_163/kernel*
_output_shapes
:	?@*
dtype0
t
dense_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_163/bias
m
"dense_163/bias/Read/ReadVariableOpReadVariableOpdense_163/bias*
_output_shapes
:@*
dtype0
|
dense_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *!
shared_namedense_164/kernel
u
$dense_164/kernel/Read/ReadVariableOpReadVariableOpdense_164/kernel*
_output_shapes

:@ *
dtype0
t
dense_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_164/bias
m
"dense_164/bias/Read/ReadVariableOpReadVariableOpdense_164/bias*
_output_shapes
: *
dtype0
|
dense_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_165/kernel
u
$dense_165/kernel/Read/ReadVariableOpReadVariableOpdense_165/kernel*
_output_shapes

: *
dtype0
t
dense_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_165/bias
m
"dense_165/bias/Read/ReadVariableOpReadVariableOpdense_165/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_56/lstm_cell_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*,
shared_namelstm_56/lstm_cell_65/kernel
?
/lstm_56/lstm_cell_65/kernel/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_65/kernel*
_output_shapes
:	
?*
dtype0
?
%lstm_56/lstm_cell_65/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%lstm_56/lstm_cell_65/recurrent_kernel
?
9lstm_56/lstm_cell_65/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_56/lstm_cell_65/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_56/lstm_cell_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_56/lstm_cell_65/bias
?
-lstm_56/lstm_cell_65/bias/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_65/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_162/kernel/m
?
+Adam/dense_162/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_162/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_162/bias/m
|
)Adam/dense_162/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_163/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_163/kernel/m
?
+Adam/dense_163/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_163/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_163/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_163/bias/m
{
)Adam/dense_163/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_163/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_164/kernel/m
?
+Adam/dense_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_164/bias/m
{
)Adam/dense_164/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_165/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_165/kernel/m
?
+Adam/dense_165/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_165/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_165/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_165/bias/m
{
)Adam/dense_165/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_165/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_56/lstm_cell_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*3
shared_name$"Adam/lstm_56/lstm_cell_65/kernel/m
?
6Adam/lstm_56/lstm_cell_65/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_65/kernel/m*
_output_shapes
:	
?*
dtype0
?
,Adam/lstm_56/lstm_cell_65/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_56/lstm_cell_65/recurrent_kernel/m
?
@Adam/lstm_56/lstm_cell_65/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_65/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_56/lstm_cell_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_56/lstm_cell_65/bias/m
?
4Adam/lstm_56/lstm_cell_65/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_65/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_162/kernel/v
?
+Adam/dense_162/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_162/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_162/bias/v
|
)Adam/dense_162/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_163/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_163/kernel/v
?
+Adam/dense_163/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_163/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_163/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_163/bias/v
{
)Adam/dense_163/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_163/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_164/kernel/v
?
+Adam/dense_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_164/bias/v
{
)Adam/dense_164/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_165/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_165/kernel/v
?
+Adam/dense_165/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_165/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_165/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_165/bias/v
{
)Adam/dense_165/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_165/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_56/lstm_cell_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*3
shared_name$"Adam/lstm_56/lstm_cell_65/kernel/v
?
6Adam/lstm_56/lstm_cell_65/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_65/kernel/v*
_output_shapes
:	
?*
dtype0
?
,Adam/lstm_56/lstm_cell_65/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_56/lstm_cell_65/recurrent_kernel/v
?
@Adam/lstm_56/lstm_cell_65/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_65/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_56/lstm_cell_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_56/lstm_cell_65/bias/v
?
4Adam/lstm_56/lstm_cell_65/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_65/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?>
value?>B?> B?>
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
?

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?

)kernel
*bias
#+_self_saveable_object_factories
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemlmmmnmo"mp#mq)mr*ms5mt6mu7mvvwvxvyvz"v{#v|)v}*v~5v6v?7v?
 
 
N
50
61
72
3
4
5
6
"7
#8
)9
*10
N
50
61
72
3
4
5
6
"7
#8
)9
*10
 
?
		variables
8layer_metrics
9non_trainable_variables
:layer_regularization_losses

trainable_variables

;layers
regularization_losses
<metrics
?
=
state_size

5kernel
6recurrent_kernel
7bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
 
 

50
61
72

50
61
72
 
?

Cstates
	variables
Dlayer_metrics
Enon_trainable_variables
Flayer_regularization_losses
trainable_variables

Glayers
regularization_losses
Hmetrics
\Z
VARIABLE_VALUEdense_162/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_162/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
	variables
Ilayer_metrics
Jnon_trainable_variables
Klayer_regularization_losses
trainable_variables

Llayers
regularization_losses
Mmetrics
\Z
VARIABLE_VALUEdense_163/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_163/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
	variables
Nlayer_metrics
Onon_trainable_variables
Player_regularization_losses
trainable_variables

Qlayers
 regularization_losses
Rmetrics
\Z
VARIABLE_VALUEdense_164/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_164/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
 
?
%	variables
Slayer_metrics
Tnon_trainable_variables
Ulayer_regularization_losses
&trainable_variables

Vlayers
'regularization_losses
Wmetrics
\Z
VARIABLE_VALUEdense_165/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_165/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
 
?
,	variables
Xlayer_metrics
Ynon_trainable_variables
Zlayer_regularization_losses
-trainable_variables

[layers
.regularization_losses
\metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_56/lstm_cell_65/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_56/lstm_cell_65/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_56/lstm_cell_65/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
#
0
1
2
3
4

]0
^1
 
 

50
61
72

50
61
72
 
?
?	variables
_layer_metrics
`non_trainable_variables
alayer_regularization_losses
@trainable_variables

blayers
Aregularization_losses
cmetrics
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	dtotal
	ecount
f	variables
g	keras_api
4
	htotal
	icount
j	variables
k	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

d0
e1

f	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
}
VARIABLE_VALUEAdam/dense_162/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_163/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_163/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_164/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_165/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_165/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_56/lstm_cell_65/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_56/lstm_cell_65/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_56/lstm_cell_65/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_162/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_163/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_163/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_164/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_165/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_165/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_56/lstm_cell_65/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_56/lstm_cell_65/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_56/lstm_cell_65/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_52Placeholder*+
_output_shapes
:?????????
*
dtype0* 
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_52lstm_56/lstm_cell_65/kernel%lstm_56/lstm_cell_65/recurrent_kernellstm_56/lstm_cell_65/biasdense_162/kerneldense_162/biasdense_163/kerneldense_163/biasdense_164/kerneldense_164/biasdense_165/kerneldense_165/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2493088
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_162/kernel/Read/ReadVariableOp"dense_162/bias/Read/ReadVariableOp$dense_163/kernel/Read/ReadVariableOp"dense_163/bias/Read/ReadVariableOp$dense_164/kernel/Read/ReadVariableOp"dense_164/bias/Read/ReadVariableOp$dense_165/kernel/Read/ReadVariableOp"dense_165/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_56/lstm_cell_65/kernel/Read/ReadVariableOp9lstm_56/lstm_cell_65/recurrent_kernel/Read/ReadVariableOp-lstm_56/lstm_cell_65/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_162/kernel/m/Read/ReadVariableOp)Adam/dense_162/bias/m/Read/ReadVariableOp+Adam/dense_163/kernel/m/Read/ReadVariableOp)Adam/dense_163/bias/m/Read/ReadVariableOp+Adam/dense_164/kernel/m/Read/ReadVariableOp)Adam/dense_164/bias/m/Read/ReadVariableOp+Adam/dense_165/kernel/m/Read/ReadVariableOp)Adam/dense_165/bias/m/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_65/kernel/m/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_65/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_65/bias/m/Read/ReadVariableOp+Adam/dense_162/kernel/v/Read/ReadVariableOp)Adam/dense_162/bias/v/Read/ReadVariableOp+Adam/dense_163/kernel/v/Read/ReadVariableOp)Adam/dense_163/bias/v/Read/ReadVariableOp+Adam/dense_164/kernel/v/Read/ReadVariableOp)Adam/dense_164/bias/v/Read/ReadVariableOp+Adam/dense_165/kernel/v/Read/ReadVariableOp)Adam/dense_165/bias/v/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_65/kernel/v/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_65/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_65/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_2494472
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_162/kerneldense_162/biasdense_163/kerneldense_163/biasdense_164/kerneldense_164/biasdense_165/kerneldense_165/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_56/lstm_cell_65/kernel%lstm_56/lstm_cell_65/recurrent_kernellstm_56/lstm_cell_65/biastotalcounttotal_1count_1Adam/dense_162/kernel/mAdam/dense_162/bias/mAdam/dense_163/kernel/mAdam/dense_163/bias/mAdam/dense_164/kernel/mAdam/dense_164/bias/mAdam/dense_165/kernel/mAdam/dense_165/bias/m"Adam/lstm_56/lstm_cell_65/kernel/m,Adam/lstm_56/lstm_cell_65/recurrent_kernel/m Adam/lstm_56/lstm_cell_65/bias/mAdam/dense_162/kernel/vAdam/dense_162/bias/vAdam/dense_163/kernel/vAdam/dense_163/bias/vAdam/dense_164/kernel/vAdam/dense_164/bias/vAdam/dense_165/kernel/vAdam/dense_165/bias/v"Adam/lstm_56/lstm_cell_65/kernel/v,Adam/lstm_56/lstm_cell_65/recurrent_kernel/v Adam/lstm_56/lstm_cell_65/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2494608Ȣ
??
?
"__inference__wrapped_model_2491778
input_52T
Asequential_51_lstm_56_lstm_cell_66_matmul_readvariableop_resource:	
?W
Csequential_51_lstm_56_lstm_cell_66_matmul_1_readvariableop_resource:
??Q
Bsequential_51_lstm_56_lstm_cell_66_biasadd_readvariableop_resource:	?J
6sequential_51_dense_162_matmul_readvariableop_resource:
??F
7sequential_51_dense_162_biasadd_readvariableop_resource:	?I
6sequential_51_dense_163_matmul_readvariableop_resource:	?@E
7sequential_51_dense_163_biasadd_readvariableop_resource:@H
6sequential_51_dense_164_matmul_readvariableop_resource:@ E
7sequential_51_dense_164_biasadd_readvariableop_resource: H
6sequential_51_dense_165_matmul_readvariableop_resource: E
7sequential_51_dense_165_biasadd_readvariableop_resource:
identity??.sequential_51/dense_162/BiasAdd/ReadVariableOp?-sequential_51/dense_162/MatMul/ReadVariableOp?.sequential_51/dense_163/BiasAdd/ReadVariableOp?-sequential_51/dense_163/MatMul/ReadVariableOp?.sequential_51/dense_164/BiasAdd/ReadVariableOp?-sequential_51/dense_164/MatMul/ReadVariableOp?.sequential_51/dense_165/BiasAdd/ReadVariableOp?-sequential_51/dense_165/MatMul/ReadVariableOp?9sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?8sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp?:sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?sequential_51/lstm_56/whiler
sequential_51/lstm_56/ShapeShapeinput_52*
T0*
_output_shapes
:2
sequential_51/lstm_56/Shape?
)sequential_51/lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_51/lstm_56/strided_slice/stack?
+sequential_51/lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_51/lstm_56/strided_slice/stack_1?
+sequential_51/lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_51/lstm_56/strided_slice/stack_2?
#sequential_51/lstm_56/strided_sliceStridedSlice$sequential_51/lstm_56/Shape:output:02sequential_51/lstm_56/strided_slice/stack:output:04sequential_51/lstm_56/strided_slice/stack_1:output:04sequential_51/lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_51/lstm_56/strided_slice?
!sequential_51/lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_51/lstm_56/zeros/mul/y?
sequential_51/lstm_56/zeros/mulMul,sequential_51/lstm_56/strided_slice:output:0*sequential_51/lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_51/lstm_56/zeros/mul?
"sequential_51/lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_51/lstm_56/zeros/Less/y?
 sequential_51/lstm_56/zeros/LessLess#sequential_51/lstm_56/zeros/mul:z:0+sequential_51/lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_51/lstm_56/zeros/Less?
$sequential_51/lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_51/lstm_56/zeros/packed/1?
"sequential_51/lstm_56/zeros/packedPack,sequential_51/lstm_56/strided_slice:output:0-sequential_51/lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_51/lstm_56/zeros/packed?
!sequential_51/lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_51/lstm_56/zeros/Const?
sequential_51/lstm_56/zerosFill+sequential_51/lstm_56/zeros/packed:output:0*sequential_51/lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_51/lstm_56/zeros?
#sequential_51/lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_51/lstm_56/zeros_1/mul/y?
!sequential_51/lstm_56/zeros_1/mulMul,sequential_51/lstm_56/strided_slice:output:0,sequential_51/lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_51/lstm_56/zeros_1/mul?
$sequential_51/lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_51/lstm_56/zeros_1/Less/y?
"sequential_51/lstm_56/zeros_1/LessLess%sequential_51/lstm_56/zeros_1/mul:z:0-sequential_51/lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_51/lstm_56/zeros_1/Less?
&sequential_51/lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_51/lstm_56/zeros_1/packed/1?
$sequential_51/lstm_56/zeros_1/packedPack,sequential_51/lstm_56/strided_slice:output:0/sequential_51/lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_51/lstm_56/zeros_1/packed?
#sequential_51/lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_51/lstm_56/zeros_1/Const?
sequential_51/lstm_56/zeros_1Fill-sequential_51/lstm_56/zeros_1/packed:output:0,sequential_51/lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_51/lstm_56/zeros_1?
$sequential_51/lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_51/lstm_56/transpose/perm?
sequential_51/lstm_56/transpose	Transposeinput_52-sequential_51/lstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:?????????
2!
sequential_51/lstm_56/transpose?
sequential_51/lstm_56/Shape_1Shape#sequential_51/lstm_56/transpose:y:0*
T0*
_output_shapes
:2
sequential_51/lstm_56/Shape_1?
+sequential_51/lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_51/lstm_56/strided_slice_1/stack?
-sequential_51/lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_51/lstm_56/strided_slice_1/stack_1?
-sequential_51/lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_51/lstm_56/strided_slice_1/stack_2?
%sequential_51/lstm_56/strided_slice_1StridedSlice&sequential_51/lstm_56/Shape_1:output:04sequential_51/lstm_56/strided_slice_1/stack:output:06sequential_51/lstm_56/strided_slice_1/stack_1:output:06sequential_51/lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_51/lstm_56/strided_slice_1?
1sequential_51/lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_51/lstm_56/TensorArrayV2/element_shape?
#sequential_51/lstm_56/TensorArrayV2TensorListReserve:sequential_51/lstm_56/TensorArrayV2/element_shape:output:0.sequential_51/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_51/lstm_56/TensorArrayV2?
Ksequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2M
Ksequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_51/lstm_56/transpose:y:0Tsequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensor?
+sequential_51/lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_51/lstm_56/strided_slice_2/stack?
-sequential_51/lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_51/lstm_56/strided_slice_2/stack_1?
-sequential_51/lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_51/lstm_56/strided_slice_2/stack_2?
%sequential_51/lstm_56/strided_slice_2StridedSlice#sequential_51/lstm_56/transpose:y:04sequential_51/lstm_56/strided_slice_2/stack:output:06sequential_51/lstm_56/strided_slice_2/stack_1:output:06sequential_51/lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2'
%sequential_51/lstm_56/strided_slice_2?
8sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpAsequential_51_lstm_56_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02:
8sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp?
)sequential_51/lstm_56/lstm_cell_66/MatMulMatMul.sequential_51/lstm_56/strided_slice_2:output:0@sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_51/lstm_56/lstm_cell_66/MatMul?
:sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpCsequential_51_lstm_56_lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02<
:sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?
+sequential_51/lstm_56/lstm_cell_66/MatMul_1MatMul$sequential_51/lstm_56/zeros:output:0Bsequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_51/lstm_56/lstm_cell_66/MatMul_1?
&sequential_51/lstm_56/lstm_cell_66/addAddV23sequential_51/lstm_56/lstm_cell_66/MatMul:product:05sequential_51/lstm_56/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_51/lstm_56/lstm_cell_66/add?
9sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpBsequential_51_lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?
*sequential_51/lstm_56/lstm_cell_66/BiasAddBiasAdd*sequential_51/lstm_56/lstm_cell_66/add:z:0Asequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_51/lstm_56/lstm_cell_66/BiasAdd?
2sequential_51/lstm_56/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_51/lstm_56/lstm_cell_66/split/split_dim?
(sequential_51/lstm_56/lstm_cell_66/splitSplit;sequential_51/lstm_56/lstm_cell_66/split/split_dim:output:03sequential_51/lstm_56/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2*
(sequential_51/lstm_56/lstm_cell_66/split?
*sequential_51/lstm_56/lstm_cell_66/SigmoidSigmoid1sequential_51/lstm_56/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2,
*sequential_51/lstm_56/lstm_cell_66/Sigmoid?
,sequential_51/lstm_56/lstm_cell_66/Sigmoid_1Sigmoid1sequential_51/lstm_56/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2.
,sequential_51/lstm_56/lstm_cell_66/Sigmoid_1?
&sequential_51/lstm_56/lstm_cell_66/mulMul0sequential_51/lstm_56/lstm_cell_66/Sigmoid_1:y:0&sequential_51/lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_51/lstm_56/lstm_cell_66/mul?
'sequential_51/lstm_56/lstm_cell_66/ReluRelu1sequential_51/lstm_56/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2)
'sequential_51/lstm_56/lstm_cell_66/Relu?
(sequential_51/lstm_56/lstm_cell_66/mul_1Mul.sequential_51/lstm_56/lstm_cell_66/Sigmoid:y:05sequential_51/lstm_56/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2*
(sequential_51/lstm_56/lstm_cell_66/mul_1?
(sequential_51/lstm_56/lstm_cell_66/add_1AddV2*sequential_51/lstm_56/lstm_cell_66/mul:z:0,sequential_51/lstm_56/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_51/lstm_56/lstm_cell_66/add_1?
,sequential_51/lstm_56/lstm_cell_66/Sigmoid_2Sigmoid1sequential_51/lstm_56/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2.
,sequential_51/lstm_56/lstm_cell_66/Sigmoid_2?
)sequential_51/lstm_56/lstm_cell_66/Relu_1Relu,sequential_51/lstm_56/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2+
)sequential_51/lstm_56/lstm_cell_66/Relu_1?
(sequential_51/lstm_56/lstm_cell_66/mul_2Mul0sequential_51/lstm_56/lstm_cell_66/Sigmoid_2:y:07sequential_51/lstm_56/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2*
(sequential_51/lstm_56/lstm_cell_66/mul_2?
3sequential_51/lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   25
3sequential_51/lstm_56/TensorArrayV2_1/element_shape?
%sequential_51/lstm_56/TensorArrayV2_1TensorListReserve<sequential_51/lstm_56/TensorArrayV2_1/element_shape:output:0.sequential_51/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_51/lstm_56/TensorArrayV2_1z
sequential_51/lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_51/lstm_56/time?
.sequential_51/lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_51/lstm_56/while/maximum_iterations?
(sequential_51/lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_51/lstm_56/while/loop_counter?
sequential_51/lstm_56/whileWhile1sequential_51/lstm_56/while/loop_counter:output:07sequential_51/lstm_56/while/maximum_iterations:output:0#sequential_51/lstm_56/time:output:0.sequential_51/lstm_56/TensorArrayV2_1:handle:0$sequential_51/lstm_56/zeros:output:0&sequential_51/lstm_56/zeros_1:output:0.sequential_51/lstm_56/strided_slice_1:output:0Msequential_51/lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_51_lstm_56_lstm_cell_66_matmul_readvariableop_resourceCsequential_51_lstm_56_lstm_cell_66_matmul_1_readvariableop_resourceBsequential_51_lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*4
body,R*
(sequential_51_lstm_56_while_body_2491667*4
cond,R*
(sequential_51_lstm_56_while_cond_2491666*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_51/lstm_56/while?
Fsequential_51/lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2H
Fsequential_51/lstm_56/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_51/lstm_56/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_51/lstm_56/while:output:3Osequential_51/lstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02:
8sequential_51/lstm_56/TensorArrayV2Stack/TensorListStack?
+sequential_51/lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_51/lstm_56/strided_slice_3/stack?
-sequential_51/lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_51/lstm_56/strided_slice_3/stack_1?
-sequential_51/lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_51/lstm_56/strided_slice_3/stack_2?
%sequential_51/lstm_56/strided_slice_3StridedSliceAsequential_51/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:04sequential_51/lstm_56/strided_slice_3/stack:output:06sequential_51/lstm_56/strided_slice_3/stack_1:output:06sequential_51/lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2'
%sequential_51/lstm_56/strided_slice_3?
&sequential_51/lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_51/lstm_56/transpose_1/perm?
!sequential_51/lstm_56/transpose_1	TransposeAsequential_51/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_51/lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2#
!sequential_51/lstm_56/transpose_1?
sequential_51/lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_51/lstm_56/runtime?
-sequential_51/dense_162/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_162_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_51/dense_162/MatMul/ReadVariableOp?
sequential_51/dense_162/MatMulMatMul.sequential_51/lstm_56/strided_slice_3:output:05sequential_51/dense_162/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_51/dense_162/MatMul?
.sequential_51/dense_162/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_162_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_51/dense_162/BiasAdd/ReadVariableOp?
sequential_51/dense_162/BiasAddBiasAdd(sequential_51/dense_162/MatMul:product:06sequential_51/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_51/dense_162/BiasAdd?
sequential_51/dense_162/ReluRelu(sequential_51/dense_162/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_51/dense_162/Relu?
-sequential_51/dense_163/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_163_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02/
-sequential_51/dense_163/MatMul/ReadVariableOp?
sequential_51/dense_163/MatMulMatMul*sequential_51/dense_162/Relu:activations:05sequential_51/dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_51/dense_163/MatMul?
.sequential_51/dense_163/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_51/dense_163/BiasAdd/ReadVariableOp?
sequential_51/dense_163/BiasAddBiasAdd(sequential_51/dense_163/MatMul:product:06sequential_51/dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_51/dense_163/BiasAdd?
sequential_51/dense_163/ReluRelu(sequential_51/dense_163/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_51/dense_163/Relu?
-sequential_51/dense_164/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_164_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02/
-sequential_51/dense_164/MatMul/ReadVariableOp?
sequential_51/dense_164/MatMulMatMul*sequential_51/dense_163/Relu:activations:05sequential_51/dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_51/dense_164/MatMul?
.sequential_51/dense_164/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_51/dense_164/BiasAdd/ReadVariableOp?
sequential_51/dense_164/BiasAddBiasAdd(sequential_51/dense_164/MatMul:product:06sequential_51/dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2!
sequential_51/dense_164/BiasAdd?
sequential_51/dense_164/ReluRelu(sequential_51/dense_164/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_51/dense_164/Relu?
-sequential_51/dense_165/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_165_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_51/dense_165/MatMul/ReadVariableOp?
sequential_51/dense_165/MatMulMatMul*sequential_51/dense_164/Relu:activations:05sequential_51/dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_51/dense_165/MatMul?
.sequential_51/dense_165/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_51/dense_165/BiasAdd/ReadVariableOp?
sequential_51/dense_165/BiasAddBiasAdd(sequential_51/dense_165/MatMul:product:06sequential_51/dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_51/dense_165/BiasAdd?
IdentityIdentity(sequential_51/dense_165/BiasAdd:output:0/^sequential_51/dense_162/BiasAdd/ReadVariableOp.^sequential_51/dense_162/MatMul/ReadVariableOp/^sequential_51/dense_163/BiasAdd/ReadVariableOp.^sequential_51/dense_163/MatMul/ReadVariableOp/^sequential_51/dense_164/BiasAdd/ReadVariableOp.^sequential_51/dense_164/MatMul/ReadVariableOp/^sequential_51/dense_165/BiasAdd/ReadVariableOp.^sequential_51/dense_165/MatMul/ReadVariableOp:^sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp9^sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp;^sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp^sequential_51/lstm_56/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2`
.sequential_51/dense_162/BiasAdd/ReadVariableOp.sequential_51/dense_162/BiasAdd/ReadVariableOp2^
-sequential_51/dense_162/MatMul/ReadVariableOp-sequential_51/dense_162/MatMul/ReadVariableOp2`
.sequential_51/dense_163/BiasAdd/ReadVariableOp.sequential_51/dense_163/BiasAdd/ReadVariableOp2^
-sequential_51/dense_163/MatMul/ReadVariableOp-sequential_51/dense_163/MatMul/ReadVariableOp2`
.sequential_51/dense_164/BiasAdd/ReadVariableOp.sequential_51/dense_164/BiasAdd/ReadVariableOp2^
-sequential_51/dense_164/MatMul/ReadVariableOp-sequential_51/dense_164/MatMul/ReadVariableOp2`
.sequential_51/dense_165/BiasAdd/ReadVariableOp.sequential_51/dense_165/BiasAdd/ReadVariableOp2^
-sequential_51/dense_165/MatMul/ReadVariableOp-sequential_51/dense_165/MatMul/ReadVariableOp2v
9sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp9sequential_51/lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp2t
8sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp8sequential_51/lstm_56/lstm_cell_66/MatMul/ReadVariableOp2x
:sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp:sequential_51/lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp2:
sequential_51/lstm_56/whilesequential_51/lstm_56/while:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?

?
/__inference_sequential_51_layer_call_fn_2493498

inputs
unknown:	
?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_51_layer_call_and_return_conditional_losses_24929392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2491999

inputs

states
states_11
matmul_readvariableop_resource:	
?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2492565

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2492481*
condR
while_cond_2492480*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?C
?
while_body_2494018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_2492481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2492785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2492785___redundant_placeholder05
1while_while_cond_2492785___redundant_placeholder15
1while_while_cond_2492785___redundant_placeholder25
1while_while_cond_2492785___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?&
?
while_body_2492077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_66_2492101_0:	
?0
while_lstm_cell_66_2492103_0:
??+
while_lstm_cell_66_2492105_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_66_2492101:	
?.
while_lstm_cell_66_2492103:
??)
while_lstm_cell_66_2492105:	???*while/lstm_cell_66/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_2492101_0while_lstm_cell_66_2492103_0while_lstm_cell_66_2492105_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24919992,
*while/lstm_cell_66/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1+^while/lstm_cell_66/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2+^while/lstm_cell_66/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_66_2492101while_lstm_cell_66_2492101_0":
while_lstm_cell_66_2492103while_lstm_cell_66_2492103_0":
while_lstm_cell_66_2492105while_lstm_cell_66_2492105_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?&
?
while_body_2491867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_66_2491891_0:	
?0
while_lstm_cell_66_2491893_0:
??+
while_lstm_cell_66_2491895_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_66_2491891:	
?.
while_lstm_cell_66_2491893:
??)
while_lstm_cell_66_2491895:	???*while/lstm_cell_66/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_2491891_0while_lstm_cell_66_2491893_0while_lstm_cell_66_2491895_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24918532,
*while/lstm_cell_66/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1+^while/lstm_cell_66/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2+^while/lstm_cell_66/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_66_2491891while_lstm_cell_66_2491891_0":
while_lstm_cell_66_2491893while_lstm_cell_66_2491893_0":
while_lstm_cell_66_2491895while_lstm_cell_66_2491895_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_56_layer_call_fn_2494124
inputs_0
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24921462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????

"
_user_specified_name
inputs/0
?
?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493022
input_52"
lstm_56_2492994:	
?#
lstm_56_2492996:
??
lstm_56_2492998:	?%
dense_162_2493001:
?? 
dense_162_2493003:	?$
dense_163_2493006:	?@
dense_163_2493008:@#
dense_164_2493011:@ 
dense_164_2493013: #
dense_165_2493016: 
dense_165_2493018:
identity??!dense_162/StatefulPartitionedCall?!dense_163/StatefulPartitionedCall?!dense_164/StatefulPartitionedCall?!dense_165/StatefulPartitionedCall?lstm_56/StatefulPartitionedCall?
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinput_52lstm_56_2492994lstm_56_2492996lstm_56_2492998*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24925652!
lstm_56/StatefulPartitionedCall?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_162_2493001dense_162_2493003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_162_layer_call_and_return_conditional_losses_24925842#
!dense_162/StatefulPartitionedCall?
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_2493006dense_163_2493008*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_163_layer_call_and_return_conditional_losses_24926012#
!dense_163/StatefulPartitionedCall?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall*dense_163/StatefulPartitionedCall:output:0dense_164_2493011dense_164_2493013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_24926182#
!dense_164/StatefulPartitionedCall?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall*dense_164/StatefulPartitionedCall:output:0dense_165_2493016dense_165_2493018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_165_layer_call_and_return_conditional_losses_24926342#
!dense_165/StatefulPartitionedCall?
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall"^dense_164/StatefulPartitionedCall"^dense_165/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?
?
while_cond_2492480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2492480___redundant_placeholder05
1while_while_cond_2492480___redundant_placeholder15
1while_while_cond_2492480___redundant_placeholder25
1while_while_cond_2492480___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_2493867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
/__inference_sequential_51_layer_call_fn_2493471

inputs
unknown:	
?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_51_layer_call_and_return_conditional_losses_24926412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
/__inference_sequential_51_layer_call_fn_2492666
input_52
unknown:	
?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_52unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_51_layer_call_and_return_conditional_losses_24926412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?
?
(sequential_51_lstm_56_while_cond_2491666H
Dsequential_51_lstm_56_while_sequential_51_lstm_56_while_loop_counterN
Jsequential_51_lstm_56_while_sequential_51_lstm_56_while_maximum_iterations+
'sequential_51_lstm_56_while_placeholder-
)sequential_51_lstm_56_while_placeholder_1-
)sequential_51_lstm_56_while_placeholder_2-
)sequential_51_lstm_56_while_placeholder_3J
Fsequential_51_lstm_56_while_less_sequential_51_lstm_56_strided_slice_1a
]sequential_51_lstm_56_while_sequential_51_lstm_56_while_cond_2491666___redundant_placeholder0a
]sequential_51_lstm_56_while_sequential_51_lstm_56_while_cond_2491666___redundant_placeholder1a
]sequential_51_lstm_56_while_sequential_51_lstm_56_while_cond_2491666___redundant_placeholder2a
]sequential_51_lstm_56_while_sequential_51_lstm_56_while_cond_2491666___redundant_placeholder3(
$sequential_51_lstm_56_while_identity
?
 sequential_51/lstm_56/while/LessLess'sequential_51_lstm_56_while_placeholderFsequential_51_lstm_56_while_less_sequential_51_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_51/lstm_56/while/Less?
$sequential_51/lstm_56/while/IdentityIdentity$sequential_51/lstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_51/lstm_56/while/Identity"U
$sequential_51_lstm_56_while_identity-sequential_51/lstm_56/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
F__inference_dense_163_layer_call_and_return_conditional_losses_2492601

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2491853

inputs

states
states_11
matmul_readvariableop_resource:	
?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?O
?

lstm_56_while_body_2493333,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0:	
?Q
=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??K
<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
9lstm_56_while_lstm_cell_66_matmul_readvariableop_resource:	
?O
;lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource:
??I
:lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource:	???1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2A
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype023
1lstm_56/while/TensorArrayV2Read/TensorListGetItem?
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype022
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?
!lstm_56/while/lstm_cell_66/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_56/while/lstm_cell_66/MatMul?
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
#lstm_56/while/lstm_cell_66/MatMul_1MatMullstm_56_while_placeholder_2:lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_56/while/lstm_cell_66/MatMul_1?
lstm_56/while/lstm_cell_66/addAddV2+lstm_56/while/lstm_cell_66/MatMul:product:0-lstm_56/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_56/while/lstm_cell_66/add?
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?
"lstm_56/while/lstm_cell_66/BiasAddBiasAdd"lstm_56/while/lstm_cell_66/add:z:09lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_56/while/lstm_cell_66/BiasAdd?
*lstm_56/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_56/while/lstm_cell_66/split/split_dim?
 lstm_56/while/lstm_cell_66/splitSplit3lstm_56/while/lstm_cell_66/split/split_dim:output:0+lstm_56/while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_56/while/lstm_cell_66/split?
"lstm_56/while/lstm_cell_66/SigmoidSigmoid)lstm_56/while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_56/while/lstm_cell_66/Sigmoid?
$lstm_56/while/lstm_cell_66/Sigmoid_1Sigmoid)lstm_56/while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_56/while/lstm_cell_66/Sigmoid_1?
lstm_56/while/lstm_cell_66/mulMul(lstm_56/while/lstm_cell_66/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_56/while/lstm_cell_66/mul?
lstm_56/while/lstm_cell_66/ReluRelu)lstm_56/while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2!
lstm_56/while/lstm_cell_66/Relu?
 lstm_56/while/lstm_cell_66/mul_1Mul&lstm_56/while/lstm_cell_66/Sigmoid:y:0-lstm_56/while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/mul_1?
 lstm_56/while/lstm_cell_66/add_1AddV2"lstm_56/while/lstm_cell_66/mul:z:0$lstm_56/while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/add_1?
$lstm_56/while/lstm_cell_66/Sigmoid_2Sigmoid)lstm_56/while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_56/while/lstm_cell_66/Sigmoid_2?
!lstm_56/while/lstm_cell_66/Relu_1Relu$lstm_56/while/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_56/while/lstm_cell_66/Relu_1?
 lstm_56/while/lstm_cell_66/mul_2Mul(lstm_56/while/lstm_cell_66/Sigmoid_2:y:0/lstm_56/while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/mul_2?
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder$lstm_56/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_56/while/TensorArrayV2Write/TensorListSetIteml
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add/y?
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/addp
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add_1/y?
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/add_1?
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity?
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations2^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_1?
lstm_56/while/Identity_2Identitylstm_56/while/add:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_2?
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_3?
lstm_56/while/Identity_4Identity$lstm_56/while/lstm_cell_66/mul_2:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_56/while/Identity_4?
lstm_56/while/Identity_5Identity$lstm_56/while/lstm_cell_66/add_1:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_56/while/Identity_5"9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"z
:lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0"|
;lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0"x
9lstm_56_while_lstm_cell_66_matmul_readvariableop_resource;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0"?
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp2d
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp2h
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2491866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2491866___redundant_placeholder05
1while_while_cond_2491866___redundant_placeholder15
1while_while_cond_2491866___redundant_placeholder25
1while_while_cond_2491866___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
F__inference_dense_162_layer_call_and_return_conditional_losses_2492584

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_dense_165_layer_call_fn_2494225

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_165_layer_call_and_return_conditional_losses_24926342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_2492076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2492076___redundant_placeholder05
1while_while_cond_2492076___redundant_placeholder15
1while_while_cond_2492076___redundant_placeholder25
1while_while_cond_2492076___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
F__inference_dense_165_layer_call_and_return_conditional_losses_2492634

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2492870

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2492786*
condR
while_cond_2492785*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
/__inference_sequential_51_layer_call_fn_2492991
input_52
unknown:	
?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_52unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_51_layer_call_and_return_conditional_losses_24929392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?E
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2491936

inputs'
lstm_cell_66_2491854:	
?(
lstm_cell_66_2491856:
??#
lstm_cell_66_2491858:	?
identity??$lstm_cell_66/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_2491854lstm_cell_66_2491856lstm_cell_66_2491858*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24918532&
$lstm_cell_66/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_2491854lstm_cell_66_2491856lstm_cell_66_2491858*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2491867*
condR
while_cond_2491866*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_66/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????

 
_user_specified_nameinputs
?E
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2492146

inputs'
lstm_cell_66_2492064:	
?(
lstm_cell_66_2492066:
??#
lstm_cell_66_2492068:	?
identity??$lstm_cell_66/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_2492064lstm_cell_66_2492066lstm_cell_66_2492068*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24919992&
$lstm_cell_66/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_2492064lstm_cell_66_2492066lstm_cell_66_2492068*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2492077*
condR
while_cond_2492076*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_66/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????

 
_user_specified_nameinputs
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493800
inputs_0>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2493716*
condR
while_cond_2493715*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????

"
_user_specified_name
inputs/0
?C
?
while_body_2493565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
%__inference_signature_wrapper_2493088
input_52
unknown:	
?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_52unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_24917782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?

?
F__inference_dense_163_layer_call_and_return_conditional_losses_2494177

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_66_layer_call_fn_2494323

inputs
states_0
states_1
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24919992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493951

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2493867*
condR
while_cond_2493866*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2492939

inputs"
lstm_56_2492911:	
?#
lstm_56_2492913:
??
lstm_56_2492915:	?%
dense_162_2492918:
?? 
dense_162_2492920:	?$
dense_163_2492923:	?@
dense_163_2492925:@#
dense_164_2492928:@ 
dense_164_2492930: #
dense_165_2492933: 
dense_165_2492935:
identity??!dense_162/StatefulPartitionedCall?!dense_163/StatefulPartitionedCall?!dense_164/StatefulPartitionedCall?!dense_165/StatefulPartitionedCall?lstm_56/StatefulPartitionedCall?
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinputslstm_56_2492911lstm_56_2492913lstm_56_2492915*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24928702!
lstm_56/StatefulPartitionedCall?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_162_2492918dense_162_2492920*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_162_layer_call_and_return_conditional_losses_24925842#
!dense_162/StatefulPartitionedCall?
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_2492923dense_163_2492925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_163_layer_call_and_return_conditional_losses_24926012#
!dense_163/StatefulPartitionedCall?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall*dense_163/StatefulPartitionedCall:output:0dense_164_2492928dense_164_2492930*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_24926182#
!dense_164/StatefulPartitionedCall?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall*dense_164/StatefulPartitionedCall:output:0dense_165_2492933dense_165_2492935*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_165_layer_call_and_return_conditional_losses_24926342#
!dense_165/StatefulPartitionedCall?
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall"^dense_164/StatefulPartitionedCall"^dense_165/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
while_cond_2494017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2494017___redundant_placeholder05
1while_while_cond_2494017___redundant_placeholder15
1while_while_cond_2494017___redundant_placeholder25
1while_while_cond_2494017___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?O
?

lstm_56_while_body_2493155,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0:	
?Q
=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??K
<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
9lstm_56_while_lstm_cell_66_matmul_readvariableop_resource:	
?O
;lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource:
??I
:lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource:	???1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2A
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype023
1lstm_56/while/TensorArrayV2Read/TensorListGetItem?
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype022
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?
!lstm_56/while/lstm_cell_66/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_56/while/lstm_cell_66/MatMul?
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
#lstm_56/while/lstm_cell_66/MatMul_1MatMullstm_56_while_placeholder_2:lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_56/while/lstm_cell_66/MatMul_1?
lstm_56/while/lstm_cell_66/addAddV2+lstm_56/while/lstm_cell_66/MatMul:product:0-lstm_56/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_56/while/lstm_cell_66/add?
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?
"lstm_56/while/lstm_cell_66/BiasAddBiasAdd"lstm_56/while/lstm_cell_66/add:z:09lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_56/while/lstm_cell_66/BiasAdd?
*lstm_56/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_56/while/lstm_cell_66/split/split_dim?
 lstm_56/while/lstm_cell_66/splitSplit3lstm_56/while/lstm_cell_66/split/split_dim:output:0+lstm_56/while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_56/while/lstm_cell_66/split?
"lstm_56/while/lstm_cell_66/SigmoidSigmoid)lstm_56/while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_56/while/lstm_cell_66/Sigmoid?
$lstm_56/while/lstm_cell_66/Sigmoid_1Sigmoid)lstm_56/while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_56/while/lstm_cell_66/Sigmoid_1?
lstm_56/while/lstm_cell_66/mulMul(lstm_56/while/lstm_cell_66/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_56/while/lstm_cell_66/mul?
lstm_56/while/lstm_cell_66/ReluRelu)lstm_56/while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2!
lstm_56/while/lstm_cell_66/Relu?
 lstm_56/while/lstm_cell_66/mul_1Mul&lstm_56/while/lstm_cell_66/Sigmoid:y:0-lstm_56/while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/mul_1?
 lstm_56/while/lstm_cell_66/add_1AddV2"lstm_56/while/lstm_cell_66/mul:z:0$lstm_56/while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/add_1?
$lstm_56/while/lstm_cell_66/Sigmoid_2Sigmoid)lstm_56/while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_56/while/lstm_cell_66/Sigmoid_2?
!lstm_56/while/lstm_cell_66/Relu_1Relu$lstm_56/while/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_56/while/lstm_cell_66/Relu_1?
 lstm_56/while/lstm_cell_66/mul_2Mul(lstm_56/while/lstm_cell_66/Sigmoid_2:y:0/lstm_56/while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_56/while/lstm_cell_66/mul_2?
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder$lstm_56/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_56/while/TensorArrayV2Write/TensorListSetIteml
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add/y?
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/addp
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add_1/y?
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/add_1?
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity?
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations2^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_1?
lstm_56/while/Identity_2Identitylstm_56/while/add:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_2?
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_3?
lstm_56/while/Identity_4Identity$lstm_56/while/lstm_cell_66/mul_2:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_56/while/Identity_4?
lstm_56/while/Identity_5Identity$lstm_56/while/lstm_cell_66/add_1:z:02^lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_56/while/Identity_5"9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"z
:lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource<lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0"|
;lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource=lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0"x
9lstm_56_while_lstm_cell_66_matmul_readvariableop_resource;lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0"?
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp1lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp2d
0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp0lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp2h
2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp2lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_56_while_cond_2493154,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2493154___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2493154___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2493154___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2493154___redundant_placeholder3
lstm_56_while_identity
?
lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2
lstm_56/while/Lessu
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_56/while/Identity"9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2492641

inputs"
lstm_56_2492566:	
?#
lstm_56_2492568:
??
lstm_56_2492570:	?%
dense_162_2492585:
?? 
dense_162_2492587:	?$
dense_163_2492602:	?@
dense_163_2492604:@#
dense_164_2492619:@ 
dense_164_2492621: #
dense_165_2492635: 
dense_165_2492637:
identity??!dense_162/StatefulPartitionedCall?!dense_163/StatefulPartitionedCall?!dense_164/StatefulPartitionedCall?!dense_165/StatefulPartitionedCall?lstm_56/StatefulPartitionedCall?
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinputslstm_56_2492566lstm_56_2492568lstm_56_2492570*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24925652!
lstm_56/StatefulPartitionedCall?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_162_2492585dense_162_2492587*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_162_layer_call_and_return_conditional_losses_24925842#
!dense_162/StatefulPartitionedCall?
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_2492602dense_163_2492604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_163_layer_call_and_return_conditional_losses_24926012#
!dense_163/StatefulPartitionedCall?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall*dense_163/StatefulPartitionedCall:output:0dense_164_2492619dense_164_2492621*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_24926182#
!dense_164/StatefulPartitionedCall?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall*dense_164/StatefulPartitionedCall:output:0dense_165_2492635dense_165_2492637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_165_layer_call_and_return_conditional_losses_24926342#
!dense_165/StatefulPartitionedCall?
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall"^dense_164/StatefulPartitionedCall"^dense_165/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
while_cond_2493715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2493715___redundant_placeholder05
1while_while_cond_2493715___redundant_placeholder15
1while_while_cond_2493715___redundant_placeholder25
1while_while_cond_2493715___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494289

inputs
states_0
states_11
matmul_readvariableop_resource:	
?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?Y
?
 __inference__traced_save_2494472
file_prefix/
+savev2_dense_162_kernel_read_readvariableop-
)savev2_dense_162_bias_read_readvariableop/
+savev2_dense_163_kernel_read_readvariableop-
)savev2_dense_163_bias_read_readvariableop/
+savev2_dense_164_kernel_read_readvariableop-
)savev2_dense_164_bias_read_readvariableop/
+savev2_dense_165_kernel_read_readvariableop-
)savev2_dense_165_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_56_lstm_cell_65_kernel_read_readvariableopD
@savev2_lstm_56_lstm_cell_65_recurrent_kernel_read_readvariableop8
4savev2_lstm_56_lstm_cell_65_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_162_kernel_m_read_readvariableop4
0savev2_adam_dense_162_bias_m_read_readvariableop6
2savev2_adam_dense_163_kernel_m_read_readvariableop4
0savev2_adam_dense_163_bias_m_read_readvariableop6
2savev2_adam_dense_164_kernel_m_read_readvariableop4
0savev2_adam_dense_164_bias_m_read_readvariableop6
2savev2_adam_dense_165_kernel_m_read_readvariableop4
0savev2_adam_dense_165_bias_m_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_65_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_65_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_65_bias_m_read_readvariableop6
2savev2_adam_dense_162_kernel_v_read_readvariableop4
0savev2_adam_dense_162_bias_v_read_readvariableop6
2savev2_adam_dense_163_kernel_v_read_readvariableop4
0savev2_adam_dense_163_bias_v_read_readvariableop6
2savev2_adam_dense_164_kernel_v_read_readvariableop4
0savev2_adam_dense_164_bias_v_read_readvariableop6
2savev2_adam_dense_165_kernel_v_read_readvariableop4
0savev2_adam_dense_165_bias_v_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_65_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_65_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_65_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_162_kernel_read_readvariableop)savev2_dense_162_bias_read_readvariableop+savev2_dense_163_kernel_read_readvariableop)savev2_dense_163_bias_read_readvariableop+savev2_dense_164_kernel_read_readvariableop)savev2_dense_164_bias_read_readvariableop+savev2_dense_165_kernel_read_readvariableop)savev2_dense_165_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_56_lstm_cell_65_kernel_read_readvariableop@savev2_lstm_56_lstm_cell_65_recurrent_kernel_read_readvariableop4savev2_lstm_56_lstm_cell_65_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_162_kernel_m_read_readvariableop0savev2_adam_dense_162_bias_m_read_readvariableop2savev2_adam_dense_163_kernel_m_read_readvariableop0savev2_adam_dense_163_bias_m_read_readvariableop2savev2_adam_dense_164_kernel_m_read_readvariableop0savev2_adam_dense_164_bias_m_read_readvariableop2savev2_adam_dense_165_kernel_m_read_readvariableop0savev2_adam_dense_165_bias_m_read_readvariableop=savev2_adam_lstm_56_lstm_cell_65_kernel_m_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_65_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_56_lstm_cell_65_bias_m_read_readvariableop2savev2_adam_dense_162_kernel_v_read_readvariableop0savev2_adam_dense_162_bias_v_read_readvariableop2savev2_adam_dense_163_kernel_v_read_readvariableop0savev2_adam_dense_163_bias_v_read_readvariableop2savev2_adam_dense_164_kernel_v_read_readvariableop0savev2_adam_dense_164_bias_v_read_readvariableop2savev2_adam_dense_165_kernel_v_read_readvariableop0savev2_adam_dense_165_bias_v_read_readvariableop=savev2_adam_lstm_56_lstm_cell_65_kernel_v_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_65_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_56_lstm_cell_65_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?@:@:@ : : :: : : : : :	
?:
??:?: : : : :
??:?:	?@:@:@ : : ::	
?:
??:?:
??:?:	?@:@:@ : : ::	
?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	
?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:%"!

_output_shapes
:	?@: #

_output_shapes
:@:$$ 

_output_shapes

:@ : %

_output_shapes
: :$& 

_output_shapes

: : '

_output_shapes
::%(!

_output_shapes
:	
?:&)"
 
_output_shapes
:
??:!*

_output_shapes	
:?:+

_output_shapes
: 
?c
?
(sequential_51_lstm_56_while_body_2491667H
Dsequential_51_lstm_56_while_sequential_51_lstm_56_while_loop_counterN
Jsequential_51_lstm_56_while_sequential_51_lstm_56_while_maximum_iterations+
'sequential_51_lstm_56_while_placeholder-
)sequential_51_lstm_56_while_placeholder_1-
)sequential_51_lstm_56_while_placeholder_2-
)sequential_51_lstm_56_while_placeholder_3G
Csequential_51_lstm_56_while_sequential_51_lstm_56_strided_slice_1_0?
sequential_51_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_56_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_51_lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0:	
?_
Ksequential_51_lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??Y
Jsequential_51_lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0:	?(
$sequential_51_lstm_56_while_identity*
&sequential_51_lstm_56_while_identity_1*
&sequential_51_lstm_56_while_identity_2*
&sequential_51_lstm_56_while_identity_3*
&sequential_51_lstm_56_while_identity_4*
&sequential_51_lstm_56_while_identity_5E
Asequential_51_lstm_56_while_sequential_51_lstm_56_strided_slice_1?
}sequential_51_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_56_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_51_lstm_56_while_lstm_cell_66_matmul_readvariableop_resource:	
?]
Isequential_51_lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource:
??W
Hsequential_51_lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource:	????sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?>sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?@sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
Msequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2O
Msequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_51_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_56_tensorarrayunstack_tensorlistfromtensor_0'sequential_51_lstm_56_while_placeholderVsequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02A
?sequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItem?
>sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpIsequential_51_lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02@
>sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp?
/sequential_51/lstm_56/while/lstm_cell_66/MatMulMatMulFsequential_51/lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_51/lstm_56/while/lstm_cell_66/MatMul?
@sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpKsequential_51_lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02B
@sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp?
1sequential_51/lstm_56/while/lstm_cell_66/MatMul_1MatMul)sequential_51_lstm_56_while_placeholder_2Hsequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_51/lstm_56/while/lstm_cell_66/MatMul_1?
,sequential_51/lstm_56/while/lstm_cell_66/addAddV29sequential_51/lstm_56/while/lstm_cell_66/MatMul:product:0;sequential_51/lstm_56/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_51/lstm_56/while/lstm_cell_66/add?
?sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpJsequential_51_lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?
0sequential_51/lstm_56/while/lstm_cell_66/BiasAddBiasAdd0sequential_51/lstm_56/while/lstm_cell_66/add:z:0Gsequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_51/lstm_56/while/lstm_cell_66/BiasAdd?
8sequential_51/lstm_56/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_51/lstm_56/while/lstm_cell_66/split/split_dim?
.sequential_51/lstm_56/while/lstm_cell_66/splitSplitAsequential_51/lstm_56/while/lstm_cell_66/split/split_dim:output:09sequential_51/lstm_56/while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split20
.sequential_51/lstm_56/while/lstm_cell_66/split?
0sequential_51/lstm_56/while/lstm_cell_66/SigmoidSigmoid7sequential_51/lstm_56/while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????22
0sequential_51/lstm_56/while/lstm_cell_66/Sigmoid?
2sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_1Sigmoid7sequential_51/lstm_56/while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????24
2sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_1?
,sequential_51/lstm_56/while/lstm_cell_66/mulMul6sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_1:y:0)sequential_51_lstm_56_while_placeholder_3*
T0*(
_output_shapes
:??????????2.
,sequential_51/lstm_56/while/lstm_cell_66/mul?
-sequential_51/lstm_56/while/lstm_cell_66/ReluRelu7sequential_51/lstm_56/while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2/
-sequential_51/lstm_56/while/lstm_cell_66/Relu?
.sequential_51/lstm_56/while/lstm_cell_66/mul_1Mul4sequential_51/lstm_56/while/lstm_cell_66/Sigmoid:y:0;sequential_51/lstm_56/while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????20
.sequential_51/lstm_56/while/lstm_cell_66/mul_1?
.sequential_51/lstm_56/while/lstm_cell_66/add_1AddV20sequential_51/lstm_56/while/lstm_cell_66/mul:z:02sequential_51/lstm_56/while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????20
.sequential_51/lstm_56/while/lstm_cell_66/add_1?
2sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_2Sigmoid7sequential_51/lstm_56/while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????24
2sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_2?
/sequential_51/lstm_56/while/lstm_cell_66/Relu_1Relu2sequential_51/lstm_56/while/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential_51/lstm_56/while/lstm_cell_66/Relu_1?
.sequential_51/lstm_56/while/lstm_cell_66/mul_2Mul6sequential_51/lstm_56/while/lstm_cell_66/Sigmoid_2:y:0=sequential_51/lstm_56/while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????20
.sequential_51/lstm_56/while/lstm_cell_66/mul_2?
@sequential_51/lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_51_lstm_56_while_placeholder_1'sequential_51_lstm_56_while_placeholder2sequential_51/lstm_56/while/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_51/lstm_56/while/TensorArrayV2Write/TensorListSetItem?
!sequential_51/lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_51/lstm_56/while/add/y?
sequential_51/lstm_56/while/addAddV2'sequential_51_lstm_56_while_placeholder*sequential_51/lstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_51/lstm_56/while/add?
#sequential_51/lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_51/lstm_56/while/add_1/y?
!sequential_51/lstm_56/while/add_1AddV2Dsequential_51_lstm_56_while_sequential_51_lstm_56_while_loop_counter,sequential_51/lstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_51/lstm_56/while/add_1?
$sequential_51/lstm_56/while/IdentityIdentity%sequential_51/lstm_56/while/add_1:z:0@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_51/lstm_56/while/Identity?
&sequential_51/lstm_56/while/Identity_1IdentityJsequential_51_lstm_56_while_sequential_51_lstm_56_while_maximum_iterations@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_51/lstm_56/while/Identity_1?
&sequential_51/lstm_56/while/Identity_2Identity#sequential_51/lstm_56/while/add:z:0@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_51/lstm_56/while/Identity_2?
&sequential_51/lstm_56/while/Identity_3IdentityPsequential_51/lstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_51/lstm_56/while/Identity_3?
&sequential_51/lstm_56/while/Identity_4Identity2sequential_51/lstm_56/while/lstm_cell_66/mul_2:z:0@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2(
&sequential_51/lstm_56/while/Identity_4?
&sequential_51/lstm_56/while/Identity_5Identity2sequential_51/lstm_56/while/lstm_cell_66/add_1:z:0@^sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?^sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOpA^sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2(
&sequential_51/lstm_56/while/Identity_5"U
$sequential_51_lstm_56_while_identity-sequential_51/lstm_56/while/Identity:output:0"Y
&sequential_51_lstm_56_while_identity_1/sequential_51/lstm_56/while/Identity_1:output:0"Y
&sequential_51_lstm_56_while_identity_2/sequential_51/lstm_56/while/Identity_2:output:0"Y
&sequential_51_lstm_56_while_identity_3/sequential_51/lstm_56/while/Identity_3:output:0"Y
&sequential_51_lstm_56_while_identity_4/sequential_51/lstm_56/while/Identity_4:output:0"Y
&sequential_51_lstm_56_while_identity_5/sequential_51/lstm_56/while/Identity_5:output:0"?
Hsequential_51_lstm_56_while_lstm_cell_66_biasadd_readvariableop_resourceJsequential_51_lstm_56_while_lstm_cell_66_biasadd_readvariableop_resource_0"?
Isequential_51_lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resourceKsequential_51_lstm_56_while_lstm_cell_66_matmul_1_readvariableop_resource_0"?
Gsequential_51_lstm_56_while_lstm_cell_66_matmul_readvariableop_resourceIsequential_51_lstm_56_while_lstm_cell_66_matmul_readvariableop_resource_0"?
Asequential_51_lstm_56_while_sequential_51_lstm_56_strided_slice_1Csequential_51_lstm_56_while_sequential_51_lstm_56_strided_slice_1_0"?
}sequential_51_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_56_tensorarrayunstack_tensorlistfromtensorsequential_51_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_51_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2?
?sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp?sequential_51/lstm_56/while/lstm_cell_66/BiasAdd/ReadVariableOp2?
>sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp>sequential_51/lstm_56/while/lstm_cell_66/MatMul/ReadVariableOp2?
@sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp@sequential_51/lstm_56/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
F__inference_dense_164_layer_call_and_return_conditional_losses_2494197

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
F__inference_dense_164_layer_call_and_return_conditional_losses_2492618

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_lstm_56_layer_call_fn_2494135

inputs
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24925652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?	
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493266

inputsF
3lstm_56_lstm_cell_66_matmul_readvariableop_resource:	
?I
5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource:
??C
4lstm_56_lstm_cell_66_biasadd_readvariableop_resource:	?<
(dense_162_matmul_readvariableop_resource:
??8
)dense_162_biasadd_readvariableop_resource:	?;
(dense_163_matmul_readvariableop_resource:	?@7
)dense_163_biasadd_readvariableop_resource:@:
(dense_164_matmul_readvariableop_resource:@ 7
)dense_164_biasadd_readvariableop_resource: :
(dense_165_matmul_readvariableop_resource: 7
)dense_165_biasadd_readvariableop_resource:
identity?? dense_162/BiasAdd/ReadVariableOp?dense_162/MatMul/ReadVariableOp? dense_163/BiasAdd/ReadVariableOp?dense_163/MatMul/ReadVariableOp? dense_164/BiasAdd/ReadVariableOp?dense_164/MatMul/ReadVariableOp? dense_165/BiasAdd/ReadVariableOp?dense_165/MatMul/ReadVariableOp?+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?*lstm_56/lstm_cell_66/MatMul/ReadVariableOp?,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?lstm_56/whileT
lstm_56/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_56/Shape?
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice/stack?
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_1?
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_2?
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slicem
lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/mul/y?
lstm_56/zeros/mulMullstm_56/strided_slice:output:0lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/mulo
lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/Less/y?
lstm_56/zeros/LessLesslstm_56/zeros/mul:z:0lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/Lesss
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/packed/1?
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros/packedo
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros/Const?
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/zerosq
lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/mul/y?
lstm_56/zeros_1/mulMullstm_56/strided_slice:output:0lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/muls
lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/Less/y?
lstm_56/zeros_1/LessLesslstm_56/zeros_1/mul:z:0lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/Lessw
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/packed/1?
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros_1/packeds
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros_1/Const?
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/zeros_1?
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose/perm?
lstm_56/transpose	Transposeinputslstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:?????????
2
lstm_56/transposeg
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:2
lstm_56/Shape_1?
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_1/stack?
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_1?
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_2?
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slice_1?
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_56/TensorArrayV2/element_shape?
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_56/TensorArrayUnstack/TensorListFromTensor?
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_2/stack?
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_1?
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_2?
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
lstm_56/strided_slice_2?
*lstm_56/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3lstm_56_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02,
*lstm_56/lstm_cell_66/MatMul/ReadVariableOp?
lstm_56/lstm_cell_66/MatMulMatMul lstm_56/strided_slice_2:output:02lstm_56/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/MatMul?
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_56/lstm_cell_66/MatMul_1MatMullstm_56/zeros:output:04lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/MatMul_1?
lstm_56/lstm_cell_66/addAddV2%lstm_56/lstm_cell_66/MatMul:product:0'lstm_56/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/add?
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_56/lstm_cell_66/BiasAddBiasAddlstm_56/lstm_cell_66/add:z:03lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/BiasAdd?
$lstm_56/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_56/lstm_cell_66/split/split_dim?
lstm_56/lstm_cell_66/splitSplit-lstm_56/lstm_cell_66/split/split_dim:output:0%lstm_56/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_56/lstm_cell_66/split?
lstm_56/lstm_cell_66/SigmoidSigmoid#lstm_56/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Sigmoid?
lstm_56/lstm_cell_66/Sigmoid_1Sigmoid#lstm_56/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_56/lstm_cell_66/Sigmoid_1?
lstm_56/lstm_cell_66/mulMul"lstm_56/lstm_cell_66/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul?
lstm_56/lstm_cell_66/ReluRelu#lstm_56/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Relu?
lstm_56/lstm_cell_66/mul_1Mul lstm_56/lstm_cell_66/Sigmoid:y:0'lstm_56/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul_1?
lstm_56/lstm_cell_66/add_1AddV2lstm_56/lstm_cell_66/mul:z:0lstm_56/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/add_1?
lstm_56/lstm_cell_66/Sigmoid_2Sigmoid#lstm_56/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_56/lstm_cell_66/Sigmoid_2?
lstm_56/lstm_cell_66/Relu_1Relulstm_56/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Relu_1?
lstm_56/lstm_cell_66/mul_2Mul"lstm_56/lstm_cell_66/Sigmoid_2:y:0)lstm_56/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul_2?
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_56/TensorArrayV2_1/element_shape?
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2_1^
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/time?
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_56/while/maximum_iterationsz
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/while/loop_counter?
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_56_lstm_cell_66_matmul_readvariableop_resource5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource4lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_56_while_body_2493155*&
condR
lstm_56_while_cond_2493154*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_56/while?
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_56/TensorArrayV2Stack/TensorListStack?
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_56/strided_slice_3/stack?
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_56/strided_slice_3/stack_1?
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_3/stack_2?
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_56/strided_slice_3?
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose_1/perm?
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_56/transpose_1v
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/runtime?
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_162/MatMul/ReadVariableOp?
dense_162/MatMulMatMul lstm_56/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_162/MatMul?
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_162/BiasAdd/ReadVariableOp?
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_162/BiasAddw
dense_162/ReluReludense_162/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_162/Relu?
dense_163/MatMul/ReadVariableOpReadVariableOp(dense_163_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_163/MatMul/ReadVariableOp?
dense_163/MatMulMatMuldense_162/Relu:activations:0'dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_163/MatMul?
 dense_163/BiasAdd/ReadVariableOpReadVariableOp)dense_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_163/BiasAdd/ReadVariableOp?
dense_163/BiasAddBiasAdddense_163/MatMul:product:0(dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_163/BiasAddv
dense_163/ReluReludense_163/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_163/Relu?
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02!
dense_164/MatMul/ReadVariableOp?
dense_164/MatMulMatMuldense_163/Relu:activations:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_164/MatMul?
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_164/BiasAdd/ReadVariableOp?
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_164/BiasAddv
dense_164/ReluReludense_164/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_164/Relu?
dense_165/MatMul/ReadVariableOpReadVariableOp(dense_165_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_165/MatMul/ReadVariableOp?
dense_165/MatMulMatMuldense_164/Relu:activations:0'dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_165/MatMul?
 dense_165/BiasAdd/ReadVariableOpReadVariableOp)dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_165/BiasAdd/ReadVariableOp?
dense_165/BiasAddBiasAdddense_165/MatMul:product:0(dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_165/BiasAdd?
IdentityIdentitydense_165/BiasAdd:output:0!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp!^dense_163/BiasAdd/ReadVariableOp ^dense_163/MatMul/ReadVariableOp!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp!^dense_165/BiasAdd/ReadVariableOp ^dense_165/MatMul/ReadVariableOp,^lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp+^lstm_56/lstm_cell_66/MatMul/ReadVariableOp-^lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_56/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2D
 dense_163/BiasAdd/ReadVariableOp dense_163/BiasAdd/ReadVariableOp2B
dense_163/MatMul/ReadVariableOpdense_163/MatMul/ReadVariableOp2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2D
 dense_165/BiasAdd/ReadVariableOp dense_165/BiasAdd/ReadVariableOp2B
dense_165/MatMul/ReadVariableOpdense_165/MatMul/ReadVariableOp2Z
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp2X
*lstm_56/lstm_cell_66/MatMul/ReadVariableOp*lstm_56/lstm_cell_66/MatMul/ReadVariableOp2\
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2494102

inputs>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2494018*
condR
while_cond_2494017*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
+__inference_dense_164_layer_call_fn_2494206

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_24926182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
F__inference_dense_165_layer_call_and_return_conditional_losses_2494216

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_dense_162_layer_call_and_return_conditional_losses_2494157

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493649
inputs_0>
+lstm_cell_66_matmul_readvariableop_resource:	
?A
-lstm_cell_66_matmul_1_readvariableop_resource:
??;
,lstm_cell_66_biasadd_readvariableop_resource:	?
identity??#lstm_cell_66/BiasAdd/ReadVariableOp?"lstm_cell_66/MatMul/ReadVariableOp?$lstm_cell_66/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp?
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul?
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/MatMul_1?
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add?
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim?
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_66/split?
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid?
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_1?
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul~
lstm_cell_66/ReluRelulstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu?
lstm_cell_66/mul_1Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_1?
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/add_1?
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Sigmoid_2}
lstm_cell_66/Relu_1Relulstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/Relu_1?
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_66/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_2493565*
condR
while_cond_2493564*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????

"
_user_specified_name
inputs/0
?
?
)__inference_lstm_56_layer_call_fn_2494113
inputs_0
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24919362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????

"
_user_specified_name
inputs/0
?
?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493053
input_52"
lstm_56_2493025:	
?#
lstm_56_2493027:
??
lstm_56_2493029:	?%
dense_162_2493032:
?? 
dense_162_2493034:	?$
dense_163_2493037:	?@
dense_163_2493039:@#
dense_164_2493042:@ 
dense_164_2493044: #
dense_165_2493047: 
dense_165_2493049:
identity??!dense_162/StatefulPartitionedCall?!dense_163/StatefulPartitionedCall?!dense_164/StatefulPartitionedCall?!dense_165/StatefulPartitionedCall?lstm_56/StatefulPartitionedCall?
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinput_52lstm_56_2493025lstm_56_2493027lstm_56_2493029*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24928702!
lstm_56/StatefulPartitionedCall?
!dense_162/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_162_2493032dense_162_2493034*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_162_layer_call_and_return_conditional_losses_24925842#
!dense_162/StatefulPartitionedCall?
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_2493037dense_163_2493039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_163_layer_call_and_return_conditional_losses_24926012#
!dense_163/StatefulPartitionedCall?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall*dense_163/StatefulPartitionedCall:output:0dense_164_2493042dense_164_2493044*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_24926182#
!dense_164/StatefulPartitionedCall?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall*dense_164/StatefulPartitionedCall:output:0dense_165_2493047dense_165_2493049*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_165_layer_call_and_return_conditional_losses_24926342#
!dense_165/StatefulPartitionedCall?
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall"^dense_164/StatefulPartitionedCall"^dense_165/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_52
?
?
.__inference_lstm_cell_66_layer_call_fn_2494306

inputs
states_0
states_1
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_24918532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?C
?
while_body_2493716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2493866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2493866___redundant_placeholder05
1while_while_cond_2493866___redundant_placeholder15
1while_while_cond_2493866___redundant_placeholder25
1while_while_cond_2493866___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494257

inputs
states_0
states_11
matmul_readvariableop_resource:	
?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????
:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
)__inference_lstm_56_layer_call_fn_2494146

inputs
unknown:	
?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_56_layer_call_and_return_conditional_losses_24928702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
while_cond_2493564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2493564___redundant_placeholder05
1while_while_cond_2493564___redundant_placeholder15
1while_while_cond_2493564___redundant_placeholder25
1while_while_cond_2493564___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_2492786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_66_matmul_readvariableop_resource_0:	
?I
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_66_matmul_readvariableop_resource:	
?G
3while_lstm_cell_66_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_66_biasadd_readvariableop_resource:	???)while/lstm_cell_66/BiasAdd/ReadVariableOp?(while/lstm_cell_66/MatMul/ReadVariableOp?*while/lstm_cell_66/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????
*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0*
_output_shapes
:	
?*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp?
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul?
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOp?
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/MatMul_1?
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add?
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp?
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/BiasAdd?
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dim?
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_66/split?
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid?
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_1?
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul?
while/lstm_cell_66/ReluRelu!while/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu?
while/lstm_cell_66/mul_1Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_1?
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/add_1?
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Sigmoid_2?
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/Relu_1?
while/lstm_cell_66/mul_2Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_66/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_66/mul_2:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_dense_162_layer_call_fn_2494166

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_162_layer_call_and_return_conditional_losses_24925842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493444

inputsF
3lstm_56_lstm_cell_66_matmul_readvariableop_resource:	
?I
5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource:
??C
4lstm_56_lstm_cell_66_biasadd_readvariableop_resource:	?<
(dense_162_matmul_readvariableop_resource:
??8
)dense_162_biasadd_readvariableop_resource:	?;
(dense_163_matmul_readvariableop_resource:	?@7
)dense_163_biasadd_readvariableop_resource:@:
(dense_164_matmul_readvariableop_resource:@ 7
)dense_164_biasadd_readvariableop_resource: :
(dense_165_matmul_readvariableop_resource: 7
)dense_165_biasadd_readvariableop_resource:
identity?? dense_162/BiasAdd/ReadVariableOp?dense_162/MatMul/ReadVariableOp? dense_163/BiasAdd/ReadVariableOp?dense_163/MatMul/ReadVariableOp? dense_164/BiasAdd/ReadVariableOp?dense_164/MatMul/ReadVariableOp? dense_165/BiasAdd/ReadVariableOp?dense_165/MatMul/ReadVariableOp?+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?*lstm_56/lstm_cell_66/MatMul/ReadVariableOp?,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?lstm_56/whileT
lstm_56/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_56/Shape?
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice/stack?
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_1?
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_2?
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slicem
lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/mul/y?
lstm_56/zeros/mulMullstm_56/strided_slice:output:0lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/mulo
lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/Less/y?
lstm_56/zeros/LessLesslstm_56/zeros/mul:z:0lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/Lesss
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros/packed/1?
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros/packedo
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros/Const?
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/zerosq
lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/mul/y?
lstm_56/zeros_1/mulMullstm_56/strided_slice:output:0lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/muls
lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/Less/y?
lstm_56/zeros_1/LessLesslstm_56/zeros_1/mul:z:0lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/Lessw
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_56/zeros_1/packed/1?
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros_1/packeds
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros_1/Const?
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/zeros_1?
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose/perm?
lstm_56/transpose	Transposeinputslstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:?????????
2
lstm_56/transposeg
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:2
lstm_56/Shape_1?
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_1/stack?
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_1?
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_2?
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slice_1?
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_56/TensorArrayV2/element_shape?
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_56/TensorArrayUnstack/TensorListFromTensor?
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_2/stack?
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_1?
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_2?
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
lstm_56/strided_slice_2?
*lstm_56/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3lstm_56_lstm_cell_66_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02,
*lstm_56/lstm_cell_66/MatMul/ReadVariableOp?
lstm_56/lstm_cell_66/MatMulMatMul lstm_56/strided_slice_2:output:02lstm_56/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/MatMul?
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp?
lstm_56/lstm_cell_66/MatMul_1MatMullstm_56/zeros:output:04lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/MatMul_1?
lstm_56/lstm_cell_66/addAddV2%lstm_56/lstm_cell_66/MatMul:product:0'lstm_56/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/add?
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp?
lstm_56/lstm_cell_66/BiasAddBiasAddlstm_56/lstm_cell_66/add:z:03lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/BiasAdd?
$lstm_56/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_56/lstm_cell_66/split/split_dim?
lstm_56/lstm_cell_66/splitSplit-lstm_56/lstm_cell_66/split/split_dim:output:0%lstm_56/lstm_cell_66/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_56/lstm_cell_66/split?
lstm_56/lstm_cell_66/SigmoidSigmoid#lstm_56/lstm_cell_66/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Sigmoid?
lstm_56/lstm_cell_66/Sigmoid_1Sigmoid#lstm_56/lstm_cell_66/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_56/lstm_cell_66/Sigmoid_1?
lstm_56/lstm_cell_66/mulMul"lstm_56/lstm_cell_66/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul?
lstm_56/lstm_cell_66/ReluRelu#lstm_56/lstm_cell_66/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Relu?
lstm_56/lstm_cell_66/mul_1Mul lstm_56/lstm_cell_66/Sigmoid:y:0'lstm_56/lstm_cell_66/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul_1?
lstm_56/lstm_cell_66/add_1AddV2lstm_56/lstm_cell_66/mul:z:0lstm_56/lstm_cell_66/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/add_1?
lstm_56/lstm_cell_66/Sigmoid_2Sigmoid#lstm_56/lstm_cell_66/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_56/lstm_cell_66/Sigmoid_2?
lstm_56/lstm_cell_66/Relu_1Relulstm_56/lstm_cell_66/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/Relu_1?
lstm_56/lstm_cell_66/mul_2Mul"lstm_56/lstm_cell_66/Sigmoid_2:y:0)lstm_56/lstm_cell_66/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_56/lstm_cell_66/mul_2?
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_56/TensorArrayV2_1/element_shape?
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2_1^
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/time?
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_56/while/maximum_iterationsz
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/while/loop_counter?
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_56_lstm_cell_66_matmul_readvariableop_resource5lstm_56_lstm_cell_66_matmul_1_readvariableop_resource4lstm_56_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_56_while_body_2493333*&
condR
lstm_56_while_cond_2493332*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_56/while?
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_56/TensorArrayV2Stack/TensorListStack?
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_56/strided_slice_3/stack?
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_56/strided_slice_3/stack_1?
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_3/stack_2?
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_56/strided_slice_3?
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose_1/perm?
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_56/transpose_1v
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/runtime?
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_162/MatMul/ReadVariableOp?
dense_162/MatMulMatMul lstm_56/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_162/MatMul?
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_162/BiasAdd/ReadVariableOp?
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_162/BiasAddw
dense_162/ReluReludense_162/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_162/Relu?
dense_163/MatMul/ReadVariableOpReadVariableOp(dense_163_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_163/MatMul/ReadVariableOp?
dense_163/MatMulMatMuldense_162/Relu:activations:0'dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_163/MatMul?
 dense_163/BiasAdd/ReadVariableOpReadVariableOp)dense_163_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_163/BiasAdd/ReadVariableOp?
dense_163/BiasAddBiasAdddense_163/MatMul:product:0(dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_163/BiasAddv
dense_163/ReluReludense_163/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_163/Relu?
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02!
dense_164/MatMul/ReadVariableOp?
dense_164/MatMulMatMuldense_163/Relu:activations:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_164/MatMul?
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_164/BiasAdd/ReadVariableOp?
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_164/BiasAddv
dense_164/ReluReludense_164/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_164/Relu?
dense_165/MatMul/ReadVariableOpReadVariableOp(dense_165_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_165/MatMul/ReadVariableOp?
dense_165/MatMulMatMuldense_164/Relu:activations:0'dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_165/MatMul?
 dense_165/BiasAdd/ReadVariableOpReadVariableOp)dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_165/BiasAdd/ReadVariableOp?
dense_165/BiasAddBiasAdddense_165/MatMul:product:0(dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_165/BiasAdd?
IdentityIdentitydense_165/BiasAdd:output:0!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp!^dense_163/BiasAdd/ReadVariableOp ^dense_163/MatMul/ReadVariableOp!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp!^dense_165/BiasAdd/ReadVariableOp ^dense_165/MatMul/ReadVariableOp,^lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp+^lstm_56/lstm_cell_66/MatMul/ReadVariableOp-^lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_56/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????
: : : : : : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2D
 dense_163/BiasAdd/ReadVariableOp dense_163/BiasAdd/ReadVariableOp2B
dense_163/MatMul/ReadVariableOpdense_163/MatMul/ReadVariableOp2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2D
 dense_165/BiasAdd/ReadVariableOp dense_165/BiasAdd/ReadVariableOp2B
dense_165/MatMul/ReadVariableOpdense_165/MatMul/ReadVariableOp2Z
+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp+lstm_56/lstm_cell_66/BiasAdd/ReadVariableOp2X
*lstm_56/lstm_cell_66/MatMul/ReadVariableOp*lstm_56/lstm_cell_66/MatMul/ReadVariableOp2\
,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp,lstm_56/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
+__inference_dense_163_layer_call_fn_2494186

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_163_layer_call_and_return_conditional_losses_24926012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
lstm_56_while_cond_2493332,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2493332___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2493332___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2493332___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2493332___redundant_placeholder3
lstm_56_while_identity
?
lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2
lstm_56/while/Lessu
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_56/while/Identity"9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
ĵ
?
#__inference__traced_restore_2494608
file_prefix5
!assignvariableop_dense_162_kernel:
??0
!assignvariableop_1_dense_162_bias:	?6
#assignvariableop_2_dense_163_kernel:	?@/
!assignvariableop_3_dense_163_bias:@5
#assignvariableop_4_dense_164_kernel:@ /
!assignvariableop_5_dense_164_bias: 5
#assignvariableop_6_dense_165_kernel: /
!assignvariableop_7_dense_165_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: B
/assignvariableop_13_lstm_56_lstm_cell_65_kernel:	
?M
9assignvariableop_14_lstm_56_lstm_cell_65_recurrent_kernel:
??<
-assignvariableop_15_lstm_56_lstm_cell_65_bias:	?#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: ?
+assignvariableop_20_adam_dense_162_kernel_m:
??8
)assignvariableop_21_adam_dense_162_bias_m:	?>
+assignvariableop_22_adam_dense_163_kernel_m:	?@7
)assignvariableop_23_adam_dense_163_bias_m:@=
+assignvariableop_24_adam_dense_164_kernel_m:@ 7
)assignvariableop_25_adam_dense_164_bias_m: =
+assignvariableop_26_adam_dense_165_kernel_m: 7
)assignvariableop_27_adam_dense_165_bias_m:I
6assignvariableop_28_adam_lstm_56_lstm_cell_65_kernel_m:	
?T
@assignvariableop_29_adam_lstm_56_lstm_cell_65_recurrent_kernel_m:
??C
4assignvariableop_30_adam_lstm_56_lstm_cell_65_bias_m:	??
+assignvariableop_31_adam_dense_162_kernel_v:
??8
)assignvariableop_32_adam_dense_162_bias_v:	?>
+assignvariableop_33_adam_dense_163_kernel_v:	?@7
)assignvariableop_34_adam_dense_163_bias_v:@=
+assignvariableop_35_adam_dense_164_kernel_v:@ 7
)assignvariableop_36_adam_dense_164_bias_v: =
+assignvariableop_37_adam_dense_165_kernel_v: 7
)assignvariableop_38_adam_dense_165_bias_v:I
6assignvariableop_39_adam_lstm_56_lstm_cell_65_kernel_v:	
?T
@assignvariableop_40_adam_lstm_56_lstm_cell_65_recurrent_kernel_v:
??C
4assignvariableop_41_adam_lstm_56_lstm_cell_65_bias_v:	?
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_162_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_162_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_163_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_163_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_164_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_164_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_165_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_165_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_56_lstm_cell_65_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_56_lstm_cell_65_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_56_lstm_cell_65_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_162_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_162_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_163_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_163_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_164_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_164_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_165_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_165_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_56_lstm_cell_65_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_lstm_56_lstm_cell_65_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_56_lstm_cell_65_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_162_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_162_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_163_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_163_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_164_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_164_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_165_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_165_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_56_lstm_cell_65_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp@assignvariableop_40_adam_lstm_56_lstm_cell_65_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_lstm_56_lstm_cell_65_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42?
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input_525
serving_default_input_52:0?????????
=
	dense_1650
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?=
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?9
_tf_keras_sequential?9{"name": "sequential_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_51", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_52"}}, {"class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_165", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 10]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 10]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 10]}, "float32", "input_52"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_51", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_52"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_165", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 20}, "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 21}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_rnn_layer?
{"name": "lstm_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 10]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 10]}}
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_162", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_163", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_164", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

)kernel
*bias
#+_self_saveable_object_factories
,	variables
-trainable_variables
.regularization_losses
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_165", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_165", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemlmmmnmo"mp#mq)mr*ms5mt6mu7mvvwvxvyvz"v{#v|)v}*v~5v6v?7v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
n
50
61
72
3
4
5
6
"7
#8
)9
*10"
trackable_list_wrapper
n
50
61
72
3
4
5
6
"7
#8
)9
*10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
		variables
8layer_metrics
9non_trainable_variables
:layer_regularization_losses

trainable_variables

;layers
regularization_losses
<metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
=
state_size

5kernel
6recurrent_kernel
7bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "lstm_cell_66", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_66", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
50
61
72"
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Cstates
	variables
Dlayer_metrics
Enon_trainable_variables
Flayer_regularization_losses
trainable_variables

Glayers
regularization_losses
Hmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_162/kernel
:?2dense_162/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
Ilayer_metrics
Jnon_trainable_variables
Klayer_regularization_losses
trainable_variables

Llayers
regularization_losses
Mmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?@2dense_163/kernel
:@2dense_163/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
Nlayer_metrics
Onon_trainable_variables
Player_regularization_losses
trainable_variables

Qlayers
 regularization_losses
Rmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": @ 2dense_164/kernel
: 2dense_164/bias
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
%	variables
Slayer_metrics
Tnon_trainable_variables
Ulayer_regularization_losses
&trainable_variables

Vlayers
'regularization_losses
Wmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
":  2dense_165/kernel
:2dense_165/bias
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,	variables
Xlayer_metrics
Ynon_trainable_variables
Zlayer_regularization_losses
-trainable_variables

[layers
.regularization_losses
\metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	
?2lstm_56/lstm_cell_65/kernel
9:7
??2%lstm_56/lstm_cell_65/recurrent_kernel
(:&?2lstm_56/lstm_cell_65/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
50
61
72"
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
_layer_metrics
`non_trainable_variables
alayer_regularization_losses
@trainable_variables

blayers
Aregularization_losses
cmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	dtotal
	ecount
f	variables
g	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 26}
?
	htotal
	icount
j	variables
k	keras_api"?
_tf_keras_metric?{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 21}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
d0
e1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
):'
??2Adam/dense_162/kernel/m
": ?2Adam/dense_162/bias/m
(:&	?@2Adam/dense_163/kernel/m
!:@2Adam/dense_163/bias/m
':%@ 2Adam/dense_164/kernel/m
!: 2Adam/dense_164/bias/m
':% 2Adam/dense_165/kernel/m
!:2Adam/dense_165/bias/m
3:1	
?2"Adam/lstm_56/lstm_cell_65/kernel/m
>:<
??2,Adam/lstm_56/lstm_cell_65/recurrent_kernel/m
-:+?2 Adam/lstm_56/lstm_cell_65/bias/m
):'
??2Adam/dense_162/kernel/v
": ?2Adam/dense_162/bias/v
(:&	?@2Adam/dense_163/kernel/v
!:@2Adam/dense_163/bias/v
':%@ 2Adam/dense_164/kernel/v
!: 2Adam/dense_164/bias/v
':% 2Adam/dense_165/kernel/v
!:2Adam/dense_165/bias/v
3:1	
?2"Adam/lstm_56/lstm_cell_65/kernel/v
>:<
??2,Adam/lstm_56/lstm_cell_65/recurrent_kernel/v
-:+?2 Adam/lstm_56/lstm_cell_65/bias/v
?2?
"__inference__wrapped_model_2491778?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *+?(
&?#
input_52?????????

?2?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493266
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493444
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493022
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493053?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_sequential_51_layer_call_fn_2492666
/__inference_sequential_51_layer_call_fn_2493471
/__inference_sequential_51_layer_call_fn_2493498
/__inference_sequential_51_layer_call_fn_2492991?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493649
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493800
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493951
D__inference_lstm_56_layer_call_and_return_conditional_losses_2494102?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lstm_56_layer_call_fn_2494113
)__inference_lstm_56_layer_call_fn_2494124
)__inference_lstm_56_layer_call_fn_2494135
)__inference_lstm_56_layer_call_fn_2494146?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dense_162_layer_call_and_return_conditional_losses_2494157?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_162_layer_call_fn_2494166?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_163_layer_call_and_return_conditional_losses_2494177?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_163_layer_call_fn_2494186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_164_layer_call_and_return_conditional_losses_2494197?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_164_layer_call_fn_2494206?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_165_layer_call_and_return_conditional_losses_2494216?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_165_layer_call_fn_2494225?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2493088input_52"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494257
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494289?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_lstm_cell_66_layer_call_fn_2494306
.__inference_lstm_cell_66_layer_call_fn_2494323?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_2491778{567"#)*5?2
+?(
&?#
input_52?????????

? "5?2
0
	dense_165#? 
	dense_165??????????
F__inference_dense_162_layer_call_and_return_conditional_losses_2494157^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_162_layer_call_fn_2494166Q0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_163_layer_call_and_return_conditional_losses_2494177]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_163_layer_call_fn_2494186P0?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_164_layer_call_and_return_conditional_losses_2494197\"#/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? ~
+__inference_dense_164_layer_call_fn_2494206O"#/?,
%?"
 ?
inputs?????????@
? "?????????? ?
F__inference_dense_165_layer_call_and_return_conditional_losses_2494216\)*/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_dense_165_layer_call_fn_2494225O)*/?,
%?"
 ?
inputs????????? 
? "???????????
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493649~567O?L
E?B
4?1
/?,
inputs/0??????????????????


 
p 

 
? "&?#
?
0??????????
? ?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493800~567O?L
E?B
4?1
/?,
inputs/0??????????????????


 
p

 
? "&?#
?
0??????????
? ?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2493951n567??<
5?2
$?!
inputs?????????


 
p 

 
? "&?#
?
0??????????
? ?
D__inference_lstm_56_layer_call_and_return_conditional_losses_2494102n567??<
5?2
$?!
inputs?????????


 
p

 
? "&?#
?
0??????????
? ?
)__inference_lstm_56_layer_call_fn_2494113q567O?L
E?B
4?1
/?,
inputs/0??????????????????


 
p 

 
? "????????????
)__inference_lstm_56_layer_call_fn_2494124q567O?L
E?B
4?1
/?,
inputs/0??????????????????


 
p

 
? "????????????
)__inference_lstm_56_layer_call_fn_2494135a567??<
5?2
$?!
inputs?????????


 
p 

 
? "????????????
)__inference_lstm_56_layer_call_fn_2494146a567??<
5?2
$?!
inputs?????????


 
p

 
? "????????????
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494257?567??
x?u
 ?
inputs?????????

M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2494289?567??
x?u
 ?
inputs?????????

M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
.__inference_lstm_cell_66_layer_call_fn_2494306?567??
x?u
 ?
inputs?????????

M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
.__inference_lstm_cell_66_layer_call_fn_2494323?567??
x?u
 ?
inputs?????????

M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493022s567"#)*=?:
3?0
&?#
input_52?????????

p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493053s567"#)*=?:
3?0
&?#
input_52?????????

p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493266q567"#)*;?8
1?.
$?!
inputs?????????

p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_51_layer_call_and_return_conditional_losses_2493444q567"#)*;?8
1?.
$?!
inputs?????????

p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_51_layer_call_fn_2492666f567"#)*=?:
3?0
&?#
input_52?????????

p 

 
? "???????????
/__inference_sequential_51_layer_call_fn_2492991f567"#)*=?:
3?0
&?#
input_52?????????

p

 
? "???????????
/__inference_sequential_51_layer_call_fn_2493471d567"#)*;?8
1?.
$?!
inputs?????????

p 

 
? "???????????
/__inference_sequential_51_layer_call_fn_2493498d567"#)*;?8
1?.
$?!
inputs?????????

p

 
? "???????????
%__inference_signature_wrapper_2493088?567"#)*A?>
? 
7?4
2
input_52&?#
input_52?????????
"5?2
0
	dense_165#? 
	dense_165?????????