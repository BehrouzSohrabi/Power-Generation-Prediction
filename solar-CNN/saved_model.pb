ď
??
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
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
 ?"serve*2.5.02unknown8??
?
conv1d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*!
shared_nameconv1d_15/kernel
z
$conv1d_15/kernel/Read/ReadVariableOpReadVariableOpconv1d_15/kernel*#
_output_shapes
:
?*
dtype0
u
conv1d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_15/bias
n
"conv1d_15/bias/Read/ReadVariableOpReadVariableOpconv1d_15/bias*
_output_shapes	
:?*
dtype0
|
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_42/kernel
u
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel* 
_output_shapes
:
??*
dtype0
s
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_42/bias
l
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes	
:?*
dtype0
{
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_43/kernel
t
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes
:	?@*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:@*
dtype0
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:@ *
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
: *
dtype0
z
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

: *
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
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
Adam/conv1d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*(
shared_nameAdam/conv1d_15/kernel/m
?
+Adam/conv1d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_15/kernel/m*#
_output_shapes
:
?*
dtype0
?
Adam/conv1d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv1d_15/bias/m
|
)Adam/conv1d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_42/kernel/m
?
*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_42/bias/m
z
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_43/kernel/m
?
*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_44/kernel/m
?
*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_45/kernel/m
?
*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?*(
shared_nameAdam/conv1d_15/kernel/v
?
+Adam/conv1d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_15/kernel/v*#
_output_shapes
:
?*
dtype0
?
Adam/conv1d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv1d_15/bias/v
|
)Adam/conv1d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_15/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_42/kernel/v
?
*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_42/bias/v
z
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_43/kernel/v
?
*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_44/kernel/v
?
*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_45/kernel/v
?
*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?6B?6 B?5
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
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
h

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratemWmXmYmZm[m\m]m^$m_%m`vavbvcvdvevfvgvh$vi%vj
F
0
1
2
3
4
5
6
7
$8
%9
 
F
0
1
2
3
4
5
6
7
$8
%9
?
/metrics
	variables

0layers
1non_trainable_variables
2layer_regularization_losses
3layer_metrics
regularization_losses
	trainable_variables
 
\Z
VARIABLE_VALUEconv1d_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
4metrics
	variables

5layers
6non_trainable_variables
7layer_regularization_losses
8layer_metrics
regularization_losses
trainable_variables
[Y
VARIABLE_VALUEdense_42/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
9metrics
	variables

:layers
;non_trainable_variables
<layer_regularization_losses
=layer_metrics
regularization_losses
trainable_variables
[Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
>metrics
	variables

?layers
@non_trainable_variables
Alayer_regularization_losses
Blayer_metrics
regularization_losses
trainable_variables
[Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Cmetrics
 	variables

Dlayers
Enon_trainable_variables
Flayer_regularization_losses
Glayer_metrics
!regularization_losses
"trainable_variables
[Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
?
Hmetrics
&	variables

Ilayers
Jnon_trainable_variables
Klayer_regularization_losses
Llayer_metrics
'regularization_losses
(trainable_variables
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

M0
N1
#
0
1
2
3
4
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
 
 
 
 
 
 
 
4
	Ototal
	Pcount
Q	variables
R	keras_api
4
	Stotal
	Tcount
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

O0
P1

Q	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

U	variables
}
VARIABLE_VALUEAdam/conv1d_15/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_15/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_15/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_15/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_24Placeholder*+
_output_shapes
:?????????
*
dtype0* 
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_24conv1d_15/kernelconv1d_15/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_219659
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_15/kernel/Read/ReadVariableOp"conv1d_15/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv1d_15/kernel/m/Read/ReadVariableOp)Adam/conv1d_15/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp+Adam/conv1d_15/kernel/v/Read/ReadVariableOp)Adam/conv1d_15/bias/v/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_220279
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_15/kernelconv1d_15/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_15/kernel/mAdam/conv1d_15/bias/mAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/conv1d_15/kernel/vAdam/conv1d_15/bias/vAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/v*3
Tin,
*2(*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_220406??

? 
?
D__inference_dense_42_layer_call_and_return_conditional_losses_219274

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?

!__inference__wrapped_model_219214
input_24Z
Csequential_26_conv1d_15_conv1d_expanddims_1_readvariableop_resource:
?F
7sequential_26_conv1d_15_biasadd_readvariableop_resource:	?L
8sequential_26_dense_42_tensordot_readvariableop_resource:
??E
6sequential_26_dense_42_biasadd_readvariableop_resource:	?K
8sequential_26_dense_43_tensordot_readvariableop_resource:	?@D
6sequential_26_dense_43_biasadd_readvariableop_resource:@J
8sequential_26_dense_44_tensordot_readvariableop_resource:@ D
6sequential_26_dense_44_biasadd_readvariableop_resource: J
8sequential_26_dense_45_tensordot_readvariableop_resource: D
6sequential_26_dense_45_biasadd_readvariableop_resource:
identity??.sequential_26/conv1d_15/BiasAdd/ReadVariableOp?:sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?-sequential_26/dense_42/BiasAdd/ReadVariableOp?/sequential_26/dense_42/Tensordot/ReadVariableOp?-sequential_26/dense_43/BiasAdd/ReadVariableOp?/sequential_26/dense_43/Tensordot/ReadVariableOp?-sequential_26/dense_44/BiasAdd/ReadVariableOp?/sequential_26/dense_44/Tensordot/ReadVariableOp?-sequential_26/dense_45/BiasAdd/ReadVariableOp?/sequential_26/dense_45/Tensordot/ReadVariableOp?
-sequential_26/conv1d_15/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_26/conv1d_15/conv1d/ExpandDims/dim?
)sequential_26/conv1d_15/conv1d/ExpandDims
ExpandDimsinput_246sequential_26/conv1d_15/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????
2+
)sequential_26/conv1d_15/conv1d/ExpandDims?
:sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_26_conv1d_15_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:
?*
dtype02<
:sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?
/sequential_26/conv1d_15/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_26/conv1d_15/conv1d/ExpandDims_1/dim?
+sequential_26/conv1d_15/conv1d/ExpandDims_1
ExpandDimsBsequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp:value:08sequential_26/conv1d_15/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
?2-
+sequential_26/conv1d_15/conv1d/ExpandDims_1?
sequential_26/conv1d_15/conv1dConv2D2sequential_26/conv1d_15/conv1d/ExpandDims:output:04sequential_26/conv1d_15/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_26/conv1d_15/conv1d?
&sequential_26/conv1d_15/conv1d/SqueezeSqueeze'sequential_26/conv1d_15/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2(
&sequential_26/conv1d_15/conv1d/Squeeze?
.sequential_26/conv1d_15/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv1d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv1d_15/BiasAdd/ReadVariableOp?
sequential_26/conv1d_15/BiasAddBiasAdd/sequential_26/conv1d_15/conv1d/Squeeze:output:06sequential_26/conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2!
sequential_26/conv1d_15/BiasAdd?
sequential_26/conv1d_15/ReluRelu(sequential_26/conv1d_15/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
sequential_26/conv1d_15/Relu?
/sequential_26/dense_42/Tensordot/ReadVariableOpReadVariableOp8sequential_26_dense_42_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/sequential_26/dense_42/Tensordot/ReadVariableOp?
%sequential_26/dense_42/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_26/dense_42/Tensordot/axes?
%sequential_26/dense_42/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%sequential_26/dense_42/Tensordot/free?
&sequential_26/dense_42/Tensordot/ShapeShape*sequential_26/conv1d_15/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_26/dense_42/Tensordot/Shape?
.sequential_26/dense_42/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_42/Tensordot/GatherV2/axis?
)sequential_26/dense_42/Tensordot/GatherV2GatherV2/sequential_26/dense_42/Tensordot/Shape:output:0.sequential_26/dense_42/Tensordot/free:output:07sequential_26/dense_42/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_26/dense_42/Tensordot/GatherV2?
0sequential_26/dense_42/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_26/dense_42/Tensordot/GatherV2_1/axis?
+sequential_26/dense_42/Tensordot/GatherV2_1GatherV2/sequential_26/dense_42/Tensordot/Shape:output:0.sequential_26/dense_42/Tensordot/axes:output:09sequential_26/dense_42/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_26/dense_42/Tensordot/GatherV2_1?
&sequential_26/dense_42/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_26/dense_42/Tensordot/Const?
%sequential_26/dense_42/Tensordot/ProdProd2sequential_26/dense_42/Tensordot/GatherV2:output:0/sequential_26/dense_42/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_26/dense_42/Tensordot/Prod?
(sequential_26/dense_42/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_26/dense_42/Tensordot/Const_1?
'sequential_26/dense_42/Tensordot/Prod_1Prod4sequential_26/dense_42/Tensordot/GatherV2_1:output:01sequential_26/dense_42/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_26/dense_42/Tensordot/Prod_1?
,sequential_26/dense_42/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_26/dense_42/Tensordot/concat/axis?
'sequential_26/dense_42/Tensordot/concatConcatV2.sequential_26/dense_42/Tensordot/free:output:0.sequential_26/dense_42/Tensordot/axes:output:05sequential_26/dense_42/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_26/dense_42/Tensordot/concat?
&sequential_26/dense_42/Tensordot/stackPack.sequential_26/dense_42/Tensordot/Prod:output:00sequential_26/dense_42/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_26/dense_42/Tensordot/stack?
*sequential_26/dense_42/Tensordot/transpose	Transpose*sequential_26/conv1d_15/Relu:activations:00sequential_26/dense_42/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2,
*sequential_26/dense_42/Tensordot/transpose?
(sequential_26/dense_42/Tensordot/ReshapeReshape.sequential_26/dense_42/Tensordot/transpose:y:0/sequential_26/dense_42/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_26/dense_42/Tensordot/Reshape?
'sequential_26/dense_42/Tensordot/MatMulMatMul1sequential_26/dense_42/Tensordot/Reshape:output:07sequential_26/dense_42/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_26/dense_42/Tensordot/MatMul?
(sequential_26/dense_42/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2*
(sequential_26/dense_42/Tensordot/Const_2?
.sequential_26/dense_42/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_42/Tensordot/concat_1/axis?
)sequential_26/dense_42/Tensordot/concat_1ConcatV22sequential_26/dense_42/Tensordot/GatherV2:output:01sequential_26/dense_42/Tensordot/Const_2:output:07sequential_26/dense_42/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_26/dense_42/Tensordot/concat_1?
 sequential_26/dense_42/TensordotReshape1sequential_26/dense_42/Tensordot/MatMul:product:02sequential_26/dense_42/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2"
 sequential_26/dense_42/Tensordot?
-sequential_26/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_26/dense_42/BiasAdd/ReadVariableOp?
sequential_26/dense_42/BiasAddBiasAdd)sequential_26/dense_42/Tensordot:output:05sequential_26/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2 
sequential_26/dense_42/BiasAdd?
sequential_26/dense_42/ReluRelu'sequential_26/dense_42/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
sequential_26/dense_42/Relu?
/sequential_26/dense_43/Tensordot/ReadVariableOpReadVariableOp8sequential_26_dense_43_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype021
/sequential_26/dense_43/Tensordot/ReadVariableOp?
%sequential_26/dense_43/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_26/dense_43/Tensordot/axes?
%sequential_26/dense_43/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%sequential_26/dense_43/Tensordot/free?
&sequential_26/dense_43/Tensordot/ShapeShape)sequential_26/dense_42/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_26/dense_43/Tensordot/Shape?
.sequential_26/dense_43/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_43/Tensordot/GatherV2/axis?
)sequential_26/dense_43/Tensordot/GatherV2GatherV2/sequential_26/dense_43/Tensordot/Shape:output:0.sequential_26/dense_43/Tensordot/free:output:07sequential_26/dense_43/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_26/dense_43/Tensordot/GatherV2?
0sequential_26/dense_43/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_26/dense_43/Tensordot/GatherV2_1/axis?
+sequential_26/dense_43/Tensordot/GatherV2_1GatherV2/sequential_26/dense_43/Tensordot/Shape:output:0.sequential_26/dense_43/Tensordot/axes:output:09sequential_26/dense_43/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_26/dense_43/Tensordot/GatherV2_1?
&sequential_26/dense_43/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_26/dense_43/Tensordot/Const?
%sequential_26/dense_43/Tensordot/ProdProd2sequential_26/dense_43/Tensordot/GatherV2:output:0/sequential_26/dense_43/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_26/dense_43/Tensordot/Prod?
(sequential_26/dense_43/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_26/dense_43/Tensordot/Const_1?
'sequential_26/dense_43/Tensordot/Prod_1Prod4sequential_26/dense_43/Tensordot/GatherV2_1:output:01sequential_26/dense_43/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_26/dense_43/Tensordot/Prod_1?
,sequential_26/dense_43/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_26/dense_43/Tensordot/concat/axis?
'sequential_26/dense_43/Tensordot/concatConcatV2.sequential_26/dense_43/Tensordot/free:output:0.sequential_26/dense_43/Tensordot/axes:output:05sequential_26/dense_43/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_26/dense_43/Tensordot/concat?
&sequential_26/dense_43/Tensordot/stackPack.sequential_26/dense_43/Tensordot/Prod:output:00sequential_26/dense_43/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_26/dense_43/Tensordot/stack?
*sequential_26/dense_43/Tensordot/transpose	Transpose)sequential_26/dense_42/Relu:activations:00sequential_26/dense_43/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2,
*sequential_26/dense_43/Tensordot/transpose?
(sequential_26/dense_43/Tensordot/ReshapeReshape.sequential_26/dense_43/Tensordot/transpose:y:0/sequential_26/dense_43/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_26/dense_43/Tensordot/Reshape?
'sequential_26/dense_43/Tensordot/MatMulMatMul1sequential_26/dense_43/Tensordot/Reshape:output:07sequential_26/dense_43/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'sequential_26/dense_43/Tensordot/MatMul?
(sequential_26/dense_43/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2*
(sequential_26/dense_43/Tensordot/Const_2?
.sequential_26/dense_43/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_43/Tensordot/concat_1/axis?
)sequential_26/dense_43/Tensordot/concat_1ConcatV22sequential_26/dense_43/Tensordot/GatherV2:output:01sequential_26/dense_43/Tensordot/Const_2:output:07sequential_26/dense_43/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_26/dense_43/Tensordot/concat_1?
 sequential_26/dense_43/TensordotReshape1sequential_26/dense_43/Tensordot/MatMul:product:02sequential_26/dense_43/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2"
 sequential_26/dense_43/Tensordot?
-sequential_26/dense_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_26/dense_43/BiasAdd/ReadVariableOp?
sequential_26/dense_43/BiasAddBiasAdd)sequential_26/dense_43/Tensordot:output:05sequential_26/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2 
sequential_26/dense_43/BiasAdd?
sequential_26/dense_43/ReluRelu'sequential_26/dense_43/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
sequential_26/dense_43/Relu?
/sequential_26/dense_44/Tensordot/ReadVariableOpReadVariableOp8sequential_26_dense_44_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype021
/sequential_26/dense_44/Tensordot/ReadVariableOp?
%sequential_26/dense_44/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_26/dense_44/Tensordot/axes?
%sequential_26/dense_44/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%sequential_26/dense_44/Tensordot/free?
&sequential_26/dense_44/Tensordot/ShapeShape)sequential_26/dense_43/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_26/dense_44/Tensordot/Shape?
.sequential_26/dense_44/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_44/Tensordot/GatherV2/axis?
)sequential_26/dense_44/Tensordot/GatherV2GatherV2/sequential_26/dense_44/Tensordot/Shape:output:0.sequential_26/dense_44/Tensordot/free:output:07sequential_26/dense_44/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_26/dense_44/Tensordot/GatherV2?
0sequential_26/dense_44/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_26/dense_44/Tensordot/GatherV2_1/axis?
+sequential_26/dense_44/Tensordot/GatherV2_1GatherV2/sequential_26/dense_44/Tensordot/Shape:output:0.sequential_26/dense_44/Tensordot/axes:output:09sequential_26/dense_44/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_26/dense_44/Tensordot/GatherV2_1?
&sequential_26/dense_44/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_26/dense_44/Tensordot/Const?
%sequential_26/dense_44/Tensordot/ProdProd2sequential_26/dense_44/Tensordot/GatherV2:output:0/sequential_26/dense_44/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_26/dense_44/Tensordot/Prod?
(sequential_26/dense_44/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_26/dense_44/Tensordot/Const_1?
'sequential_26/dense_44/Tensordot/Prod_1Prod4sequential_26/dense_44/Tensordot/GatherV2_1:output:01sequential_26/dense_44/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_26/dense_44/Tensordot/Prod_1?
,sequential_26/dense_44/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_26/dense_44/Tensordot/concat/axis?
'sequential_26/dense_44/Tensordot/concatConcatV2.sequential_26/dense_44/Tensordot/free:output:0.sequential_26/dense_44/Tensordot/axes:output:05sequential_26/dense_44/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_26/dense_44/Tensordot/concat?
&sequential_26/dense_44/Tensordot/stackPack.sequential_26/dense_44/Tensordot/Prod:output:00sequential_26/dense_44/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_26/dense_44/Tensordot/stack?
*sequential_26/dense_44/Tensordot/transpose	Transpose)sequential_26/dense_43/Relu:activations:00sequential_26/dense_44/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2,
*sequential_26/dense_44/Tensordot/transpose?
(sequential_26/dense_44/Tensordot/ReshapeReshape.sequential_26/dense_44/Tensordot/transpose:y:0/sequential_26/dense_44/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_26/dense_44/Tensordot/Reshape?
'sequential_26/dense_44/Tensordot/MatMulMatMul1sequential_26/dense_44/Tensordot/Reshape:output:07sequential_26/dense_44/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2)
'sequential_26/dense_44/Tensordot/MatMul?
(sequential_26/dense_44/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_26/dense_44/Tensordot/Const_2?
.sequential_26/dense_44/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_44/Tensordot/concat_1/axis?
)sequential_26/dense_44/Tensordot/concat_1ConcatV22sequential_26/dense_44/Tensordot/GatherV2:output:01sequential_26/dense_44/Tensordot/Const_2:output:07sequential_26/dense_44/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_26/dense_44/Tensordot/concat_1?
 sequential_26/dense_44/TensordotReshape1sequential_26/dense_44/Tensordot/MatMul:product:02sequential_26/dense_44/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2"
 sequential_26/dense_44/Tensordot?
-sequential_26/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_26/dense_44/BiasAdd/ReadVariableOp?
sequential_26/dense_44/BiasAddBiasAdd)sequential_26/dense_44/Tensordot:output:05sequential_26/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2 
sequential_26/dense_44/BiasAdd?
sequential_26/dense_44/ReluRelu'sequential_26/dense_44/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_26/dense_44/Relu?
/sequential_26/dense_45/Tensordot/ReadVariableOpReadVariableOp8sequential_26_dense_45_tensordot_readvariableop_resource*
_output_shapes

: *
dtype021
/sequential_26/dense_45/Tensordot/ReadVariableOp?
%sequential_26/dense_45/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_26/dense_45/Tensordot/axes?
%sequential_26/dense_45/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%sequential_26/dense_45/Tensordot/free?
&sequential_26/dense_45/Tensordot/ShapeShape)sequential_26/dense_44/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_26/dense_45/Tensordot/Shape?
.sequential_26/dense_45/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_45/Tensordot/GatherV2/axis?
)sequential_26/dense_45/Tensordot/GatherV2GatherV2/sequential_26/dense_45/Tensordot/Shape:output:0.sequential_26/dense_45/Tensordot/free:output:07sequential_26/dense_45/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_26/dense_45/Tensordot/GatherV2?
0sequential_26/dense_45/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_26/dense_45/Tensordot/GatherV2_1/axis?
+sequential_26/dense_45/Tensordot/GatherV2_1GatherV2/sequential_26/dense_45/Tensordot/Shape:output:0.sequential_26/dense_45/Tensordot/axes:output:09sequential_26/dense_45/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_26/dense_45/Tensordot/GatherV2_1?
&sequential_26/dense_45/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_26/dense_45/Tensordot/Const?
%sequential_26/dense_45/Tensordot/ProdProd2sequential_26/dense_45/Tensordot/GatherV2:output:0/sequential_26/dense_45/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_26/dense_45/Tensordot/Prod?
(sequential_26/dense_45/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_26/dense_45/Tensordot/Const_1?
'sequential_26/dense_45/Tensordot/Prod_1Prod4sequential_26/dense_45/Tensordot/GatherV2_1:output:01sequential_26/dense_45/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_26/dense_45/Tensordot/Prod_1?
,sequential_26/dense_45/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_26/dense_45/Tensordot/concat/axis?
'sequential_26/dense_45/Tensordot/concatConcatV2.sequential_26/dense_45/Tensordot/free:output:0.sequential_26/dense_45/Tensordot/axes:output:05sequential_26/dense_45/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_26/dense_45/Tensordot/concat?
&sequential_26/dense_45/Tensordot/stackPack.sequential_26/dense_45/Tensordot/Prod:output:00sequential_26/dense_45/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_26/dense_45/Tensordot/stack?
*sequential_26/dense_45/Tensordot/transpose	Transpose)sequential_26/dense_44/Relu:activations:00sequential_26/dense_45/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2,
*sequential_26/dense_45/Tensordot/transpose?
(sequential_26/dense_45/Tensordot/ReshapeReshape.sequential_26/dense_45/Tensordot/transpose:y:0/sequential_26/dense_45/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_26/dense_45/Tensordot/Reshape?
'sequential_26/dense_45/Tensordot/MatMulMatMul1sequential_26/dense_45/Tensordot/Reshape:output:07sequential_26/dense_45/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'sequential_26/dense_45/Tensordot/MatMul?
(sequential_26/dense_45/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_26/dense_45/Tensordot/Const_2?
.sequential_26/dense_45/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_26/dense_45/Tensordot/concat_1/axis?
)sequential_26/dense_45/Tensordot/concat_1ConcatV22sequential_26/dense_45/Tensordot/GatherV2:output:01sequential_26/dense_45/Tensordot/Const_2:output:07sequential_26/dense_45/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_26/dense_45/Tensordot/concat_1?
 sequential_26/dense_45/TensordotReshape1sequential_26/dense_45/Tensordot/MatMul:product:02sequential_26/dense_45/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_26/dense_45/Tensordot?
-sequential_26/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_45/BiasAdd/ReadVariableOp?
sequential_26/dense_45/BiasAddBiasAdd)sequential_26/dense_45/Tensordot:output:05sequential_26/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2 
sequential_26/dense_45/BiasAdd?
IdentityIdentity'sequential_26/dense_45/BiasAdd:output:0/^sequential_26/conv1d_15/BiasAdd/ReadVariableOp;^sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp.^sequential_26/dense_42/BiasAdd/ReadVariableOp0^sequential_26/dense_42/Tensordot/ReadVariableOp.^sequential_26/dense_43/BiasAdd/ReadVariableOp0^sequential_26/dense_43/Tensordot/ReadVariableOp.^sequential_26/dense_44/BiasAdd/ReadVariableOp0^sequential_26/dense_44/Tensordot/ReadVariableOp.^sequential_26/dense_45/BiasAdd/ReadVariableOp0^sequential_26/dense_45/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2`
.sequential_26/conv1d_15/BiasAdd/ReadVariableOp.sequential_26/conv1d_15/BiasAdd/ReadVariableOp2x
:sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp:sequential_26/conv1d_15/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_26/dense_42/BiasAdd/ReadVariableOp-sequential_26/dense_42/BiasAdd/ReadVariableOp2b
/sequential_26/dense_42/Tensordot/ReadVariableOp/sequential_26/dense_42/Tensordot/ReadVariableOp2^
-sequential_26/dense_43/BiasAdd/ReadVariableOp-sequential_26/dense_43/BiasAdd/ReadVariableOp2b
/sequential_26/dense_43/Tensordot/ReadVariableOp/sequential_26/dense_43/Tensordot/ReadVariableOp2^
-sequential_26/dense_44/BiasAdd/ReadVariableOp-sequential_26/dense_44/BiasAdd/ReadVariableOp2b
/sequential_26/dense_44/Tensordot/ReadVariableOp/sequential_26/dense_44/Tensordot/ReadVariableOp2^
-sequential_26/dense_45/BiasAdd/ReadVariableOp-sequential_26/dense_45/BiasAdd/ReadVariableOp2b
/sequential_26/dense_45/Tensordot/ReadVariableOp/sequential_26/dense_45/Tensordot/ReadVariableOp:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
?

?
.__inference_sequential_26_layer_call_fn_219930

inputs
unknown:
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_2193912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
? 
?
D__inference_dense_44_layer_call_and_return_conditional_losses_220091

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?R
?
__inference__traced_save_220279
file_prefix/
+savev2_conv1d_15_kernel_read_readvariableop-
)savev2_conv1d_15_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv1d_15_kernel_m_read_readvariableop4
0savev2_adam_conv1d_15_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop6
2savev2_adam_conv1d_15_kernel_v_read_readvariableop4
0savev2_adam_conv1d_15_bias_v_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop
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
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_15_kernel_read_readvariableop)savev2_conv1d_15_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv1d_15_kernel_m_read_readvariableop0savev2_adam_conv1d_15_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop2savev2_adam_conv1d_15_kernel_v_read_readvariableop0savev2_adam_conv1d_15_bias_v_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
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
?: :
?:?:
??:?:	?@:@:@ : : :: : : : : : : : : :
?:?:
??:?:	?@:@:@ : : ::
?:?:
??:?:	?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
:
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::)%
#
_output_shapes
:
?:!

_output_shapes	
:?:& "
 
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
::(

_output_shapes
: 
??
?
"__inference__traced_restore_220406
file_prefix8
!assignvariableop_conv1d_15_kernel:
?0
!assignvariableop_1_conv1d_15_bias:	?6
"assignvariableop_2_dense_42_kernel:
??/
 assignvariableop_3_dense_42_bias:	?5
"assignvariableop_4_dense_43_kernel:	?@.
 assignvariableop_5_dense_43_bias:@4
"assignvariableop_6_dense_44_kernel:@ .
 assignvariableop_7_dense_44_bias: 4
"assignvariableop_8_dense_45_kernel: .
 assignvariableop_9_dense_45_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: B
+assignvariableop_19_adam_conv1d_15_kernel_m:
?8
)assignvariableop_20_adam_conv1d_15_bias_m:	?>
*assignvariableop_21_adam_dense_42_kernel_m:
??7
(assignvariableop_22_adam_dense_42_bias_m:	?=
*assignvariableop_23_adam_dense_43_kernel_m:	?@6
(assignvariableop_24_adam_dense_43_bias_m:@<
*assignvariableop_25_adam_dense_44_kernel_m:@ 6
(assignvariableop_26_adam_dense_44_bias_m: <
*assignvariableop_27_adam_dense_45_kernel_m: 6
(assignvariableop_28_adam_dense_45_bias_m:B
+assignvariableop_29_adam_conv1d_15_kernel_v:
?8
)assignvariableop_30_adam_conv1d_15_bias_v:	?>
*assignvariableop_31_adam_dense_42_kernel_v:
??7
(assignvariableop_32_adam_dense_42_bias_v:	?=
*assignvariableop_33_adam_dense_43_kernel_v:	?@6
(assignvariableop_34_adam_dense_43_bias_v:@<
*assignvariableop_35_adam_dense_44_kernel_v:@ 6
(assignvariableop_36_adam_dense_44_bias_v: <
*assignvariableop_37_adam_dense_45_kernel_v: 6
(assignvariableop_38_adam_dense_45_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_42_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_42_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_43_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_43_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_44_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_44_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_45_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_45_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv1d_15_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv1d_15_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_42_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_42_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_43_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_43_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_44_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_44_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_45_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_45_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv1d_15_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv1d_15_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_42_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_42_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_43_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_43_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_44_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_44_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_45_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_45_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39?
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
.__inference_sequential_26_layer_call_fn_219568
input_24
unknown:
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_24unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_2195202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219626
input_24'
conv1d_15_219600:
?
conv1d_15_219602:	?#
dense_42_219605:
??
dense_42_219607:	?"
dense_43_219610:	?@
dense_43_219612:@!
dense_44_219615:@ 
dense_44_219617: !
dense_45_219620: 
dense_45_219622:
identity??!conv1d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCallinput_24conv1d_15_219600conv1d_15_219602*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_15_layer_call_and_return_conditional_losses_2192372#
!conv1d_15/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0dense_42_219605dense_42_219607*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_2192742"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_219610dense_43_219612*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_2193112"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_219615dense_44_219617*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_2193482"
 dense_44/StatefulPartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_219620dense_45_219622*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_2193842"
 dense_45/StatefulPartitionedCall?
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0"^conv1d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
?
?
)__inference_dense_44_layer_call_fn_220100

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
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_2193482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
? 
?
D__inference_dense_44_layer_call_and_return_conditional_losses_219348

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
? 
?
D__inference_dense_43_layer_call_and_return_conditional_losses_219311

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_42_layer_call_fn_220020

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
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_2192742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
ӥ
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219782

inputsL
5conv1d_15_conv1d_expanddims_1_readvariableop_resource:
?8
)conv1d_15_biasadd_readvariableop_resource:	?>
*dense_42_tensordot_readvariableop_resource:
??7
(dense_42_biasadd_readvariableop_resource:	?=
*dense_43_tensordot_readvariableop_resource:	?@6
(dense_43_biasadd_readvariableop_resource:@<
*dense_44_tensordot_readvariableop_resource:@ 6
(dense_44_biasadd_readvariableop_resource: <
*dense_45_tensordot_readvariableop_resource: 6
(dense_45_biasadd_readvariableop_resource:
identity?? conv1d_15/BiasAdd/ReadVariableOp?,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?!dense_42/Tensordot/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?!dense_43/Tensordot/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?!dense_44/Tensordot/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?!dense_45/Tensordot/ReadVariableOp?
conv1d_15/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_15/conv1d/ExpandDims/dim?
conv1d_15/conv1d/ExpandDims
ExpandDimsinputs(conv1d_15/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????
2
conv1d_15/conv1d/ExpandDims?
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_15_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:
?*
dtype02.
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_15/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_15/conv1d/ExpandDims_1/dim?
conv1d_15/conv1d/ExpandDims_1
ExpandDims4conv1d_15/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_15/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
?2
conv1d_15/conv1d/ExpandDims_1?
conv1d_15/conv1dConv2D$conv1d_15/conv1d/ExpandDims:output:0&conv1d_15/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d_15/conv1d?
conv1d_15/conv1d/SqueezeSqueezeconv1d_15/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d_15/conv1d/Squeeze?
 conv1d_15/BiasAdd/ReadVariableOpReadVariableOp)conv1d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv1d_15/BiasAdd/ReadVariableOp?
conv1d_15/BiasAddBiasAdd!conv1d_15/conv1d/Squeeze:output:0(conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
conv1d_15/BiasAdd{
conv1d_15/ReluReluconv1d_15/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
conv1d_15/Relu?
!dense_42/Tensordot/ReadVariableOpReadVariableOp*dense_42_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!dense_42/Tensordot/ReadVariableOp|
dense_42/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_42/Tensordot/axes?
dense_42/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_42/Tensordot/free?
dense_42/Tensordot/ShapeShapeconv1d_15/Relu:activations:0*
T0*
_output_shapes
:2
dense_42/Tensordot/Shape?
 dense_42/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_42/Tensordot/GatherV2/axis?
dense_42/Tensordot/GatherV2GatherV2!dense_42/Tensordot/Shape:output:0 dense_42/Tensordot/free:output:0)dense_42/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_42/Tensordot/GatherV2?
"dense_42/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_42/Tensordot/GatherV2_1/axis?
dense_42/Tensordot/GatherV2_1GatherV2!dense_42/Tensordot/Shape:output:0 dense_42/Tensordot/axes:output:0+dense_42/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_42/Tensordot/GatherV2_1~
dense_42/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_42/Tensordot/Const?
dense_42/Tensordot/ProdProd$dense_42/Tensordot/GatherV2:output:0!dense_42/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_42/Tensordot/Prod?
dense_42/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_42/Tensordot/Const_1?
dense_42/Tensordot/Prod_1Prod&dense_42/Tensordot/GatherV2_1:output:0#dense_42/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_42/Tensordot/Prod_1?
dense_42/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_42/Tensordot/concat/axis?
dense_42/Tensordot/concatConcatV2 dense_42/Tensordot/free:output:0 dense_42/Tensordot/axes:output:0'dense_42/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/concat?
dense_42/Tensordot/stackPack dense_42/Tensordot/Prod:output:0"dense_42/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/stack?
dense_42/Tensordot/transpose	Transposeconv1d_15/Relu:activations:0"dense_42/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Tensordot/transpose?
dense_42/Tensordot/ReshapeReshape dense_42/Tensordot/transpose:y:0!dense_42/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_42/Tensordot/Reshape?
dense_42/Tensordot/MatMulMatMul#dense_42/Tensordot/Reshape:output:0)dense_42/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_42/Tensordot/MatMul?
dense_42/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_42/Tensordot/Const_2?
 dense_42/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_42/Tensordot/concat_1/axis?
dense_42/Tensordot/concat_1ConcatV2$dense_42/Tensordot/GatherV2:output:0#dense_42/Tensordot/Const_2:output:0)dense_42/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/concat_1?
dense_42/TensordotReshape#dense_42/Tensordot/MatMul:product:0$dense_42/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Tensordot?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_42/BiasAdd/ReadVariableOp?
dense_42/BiasAddBiasAdddense_42/Tensordot:output:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_42/BiasAddx
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Relu?
!dense_43/Tensordot/ReadVariableOpReadVariableOp*dense_43_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_43/Tensordot/ReadVariableOp|
dense_43/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_43/Tensordot/axes?
dense_43/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_43/Tensordot/free
dense_43/Tensordot/ShapeShapedense_42/Relu:activations:0*
T0*
_output_shapes
:2
dense_43/Tensordot/Shape?
 dense_43/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_43/Tensordot/GatherV2/axis?
dense_43/Tensordot/GatherV2GatherV2!dense_43/Tensordot/Shape:output:0 dense_43/Tensordot/free:output:0)dense_43/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_43/Tensordot/GatherV2?
"dense_43/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_43/Tensordot/GatherV2_1/axis?
dense_43/Tensordot/GatherV2_1GatherV2!dense_43/Tensordot/Shape:output:0 dense_43/Tensordot/axes:output:0+dense_43/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_43/Tensordot/GatherV2_1~
dense_43/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_43/Tensordot/Const?
dense_43/Tensordot/ProdProd$dense_43/Tensordot/GatherV2:output:0!dense_43/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_43/Tensordot/Prod?
dense_43/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_43/Tensordot/Const_1?
dense_43/Tensordot/Prod_1Prod&dense_43/Tensordot/GatherV2_1:output:0#dense_43/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_43/Tensordot/Prod_1?
dense_43/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_43/Tensordot/concat/axis?
dense_43/Tensordot/concatConcatV2 dense_43/Tensordot/free:output:0 dense_43/Tensordot/axes:output:0'dense_43/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/concat?
dense_43/Tensordot/stackPack dense_43/Tensordot/Prod:output:0"dense_43/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/stack?
dense_43/Tensordot/transpose	Transposedense_42/Relu:activations:0"dense_43/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_43/Tensordot/transpose?
dense_43/Tensordot/ReshapeReshape dense_43/Tensordot/transpose:y:0!dense_43/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_43/Tensordot/Reshape?
dense_43/Tensordot/MatMulMatMul#dense_43/Tensordot/Reshape:output:0)dense_43/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_43/Tensordot/MatMul?
dense_43/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_43/Tensordot/Const_2?
 dense_43/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_43/Tensordot/concat_1/axis?
dense_43/Tensordot/concat_1ConcatV2$dense_43/Tensordot/GatherV2:output:0#dense_43/Tensordot/Const_2:output:0)dense_43/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/concat_1?
dense_43/TensordotReshape#dense_43/Tensordot/MatMul:product:0$dense_43/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
dense_43/Tensordot?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_43/BiasAdd/ReadVariableOp?
dense_43/BiasAddBiasAdddense_43/Tensordot:output:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
dense_43/BiasAddw
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
dense_43/Relu?
!dense_44/Tensordot/ReadVariableOpReadVariableOp*dense_44_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_44/Tensordot/ReadVariableOp|
dense_44/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_44/Tensordot/axes?
dense_44/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_44/Tensordot/free
dense_44/Tensordot/ShapeShapedense_43/Relu:activations:0*
T0*
_output_shapes
:2
dense_44/Tensordot/Shape?
 dense_44/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_44/Tensordot/GatherV2/axis?
dense_44/Tensordot/GatherV2GatherV2!dense_44/Tensordot/Shape:output:0 dense_44/Tensordot/free:output:0)dense_44/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_44/Tensordot/GatherV2?
"dense_44/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_44/Tensordot/GatherV2_1/axis?
dense_44/Tensordot/GatherV2_1GatherV2!dense_44/Tensordot/Shape:output:0 dense_44/Tensordot/axes:output:0+dense_44/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_44/Tensordot/GatherV2_1~
dense_44/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const?
dense_44/Tensordot/ProdProd$dense_44/Tensordot/GatherV2:output:0!dense_44/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_44/Tensordot/Prod?
dense_44/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const_1?
dense_44/Tensordot/Prod_1Prod&dense_44/Tensordot/GatherV2_1:output:0#dense_44/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_44/Tensordot/Prod_1?
dense_44/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_44/Tensordot/concat/axis?
dense_44/Tensordot/concatConcatV2 dense_44/Tensordot/free:output:0 dense_44/Tensordot/axes:output:0'dense_44/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/concat?
dense_44/Tensordot/stackPack dense_44/Tensordot/Prod:output:0"dense_44/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/stack?
dense_44/Tensordot/transpose	Transposedense_43/Relu:activations:0"dense_44/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense_44/Tensordot/transpose?
dense_44/Tensordot/ReshapeReshape dense_44/Tensordot/transpose:y:0!dense_44/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_44/Tensordot/Reshape?
dense_44/Tensordot/MatMulMatMul#dense_44/Tensordot/Reshape:output:0)dense_44/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_44/Tensordot/MatMul?
dense_44/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const_2?
 dense_44/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_44/Tensordot/concat_1/axis?
dense_44/Tensordot/concat_1ConcatV2$dense_44/Tensordot/GatherV2:output:0#dense_44/Tensordot/Const_2:output:0)dense_44/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/concat_1?
dense_44/TensordotReshape#dense_44/Tensordot/MatMul:product:0$dense_44/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
dense_44/Tensordot?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/Tensordot:output:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
dense_44/BiasAddw
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
dense_44/Relu?
!dense_45/Tensordot/ReadVariableOpReadVariableOp*dense_45_tensordot_readvariableop_resource*
_output_shapes

: *
dtype02#
!dense_45/Tensordot/ReadVariableOp|
dense_45/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_45/Tensordot/axes?
dense_45/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_45/Tensordot/free
dense_45/Tensordot/ShapeShapedense_44/Relu:activations:0*
T0*
_output_shapes
:2
dense_45/Tensordot/Shape?
 dense_45/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_45/Tensordot/GatherV2/axis?
dense_45/Tensordot/GatherV2GatherV2!dense_45/Tensordot/Shape:output:0 dense_45/Tensordot/free:output:0)dense_45/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_45/Tensordot/GatherV2?
"dense_45/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_45/Tensordot/GatherV2_1/axis?
dense_45/Tensordot/GatherV2_1GatherV2!dense_45/Tensordot/Shape:output:0 dense_45/Tensordot/axes:output:0+dense_45/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_45/Tensordot/GatherV2_1~
dense_45/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_45/Tensordot/Const?
dense_45/Tensordot/ProdProd$dense_45/Tensordot/GatherV2:output:0!dense_45/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_45/Tensordot/Prod?
dense_45/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_45/Tensordot/Const_1?
dense_45/Tensordot/Prod_1Prod&dense_45/Tensordot/GatherV2_1:output:0#dense_45/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_45/Tensordot/Prod_1?
dense_45/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_45/Tensordot/concat/axis?
dense_45/Tensordot/concatConcatV2 dense_45/Tensordot/free:output:0 dense_45/Tensordot/axes:output:0'dense_45/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/concat?
dense_45/Tensordot/stackPack dense_45/Tensordot/Prod:output:0"dense_45/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/stack?
dense_45/Tensordot/transpose	Transposedense_44/Relu:activations:0"dense_45/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
dense_45/Tensordot/transpose?
dense_45/Tensordot/ReshapeReshape dense_45/Tensordot/transpose:y:0!dense_45/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_45/Tensordot/Reshape?
dense_45/Tensordot/MatMulMatMul#dense_45/Tensordot/Reshape:output:0)dense_45/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_45/Tensordot/MatMul?
dense_45/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_45/Tensordot/Const_2?
 dense_45/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_45/Tensordot/concat_1/axis?
dense_45/Tensordot/concat_1ConcatV2$dense_45/Tensordot/GatherV2:output:0#dense_45/Tensordot/Const_2:output:0)dense_45/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/concat_1?
dense_45/TensordotReshape#dense_45/Tensordot/MatMul:product:0$dense_45/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_45/Tensordot?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/Tensordot:output:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_45/BiasAdd?
IdentityIdentitydense_45/BiasAdd:output:0!^conv1d_15/BiasAdd/ReadVariableOp-^conv1d_15/conv1d/ExpandDims_1/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp"^dense_42/Tensordot/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp"^dense_43/Tensordot/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp"^dense_44/Tensordot/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp"^dense_45/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2D
 conv1d_15/BiasAdd/ReadVariableOp conv1d_15/BiasAdd/ReadVariableOp2\
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2F
!dense_42/Tensordot/ReadVariableOp!dense_42/Tensordot/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2F
!dense_43/Tensordot/ReadVariableOp!dense_43/Tensordot/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2F
!dense_44/Tensordot/ReadVariableOp!dense_44/Tensordot/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2F
!dense_45/Tensordot/ReadVariableOp!dense_45/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219597
input_24'
conv1d_15_219571:
?
conv1d_15_219573:	?#
dense_42_219576:
??
dense_42_219578:	?"
dense_43_219581:	?@
dense_43_219583:@!
dense_44_219586:@ 
dense_44_219588: !
dense_45_219591: 
dense_45_219593:
identity??!conv1d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCallinput_24conv1d_15_219571conv1d_15_219573*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_15_layer_call_and_return_conditional_losses_2192372#
!conv1d_15/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0dense_42_219576dense_42_219578*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_2192742"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_219581dense_43_219583*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_2193112"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_219586dense_44_219588*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_2193482"
 dense_44/StatefulPartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_219591dense_45_219593*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_2193842"
 dense_45/StatefulPartitionedCall?
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0"^conv1d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219520

inputs'
conv1d_15_219494:
?
conv1d_15_219496:	?#
dense_42_219499:
??
dense_42_219501:	?"
dense_43_219504:	?@
dense_43_219506:@!
dense_44_219509:@ 
dense_44_219511: !
dense_45_219514: 
dense_45_219516:
identity??!conv1d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_15_219494conv1d_15_219496*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_15_layer_call_and_return_conditional_losses_2192372#
!conv1d_15/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0dense_42_219499dense_42_219501*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_2192742"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_219504dense_43_219506*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_2193112"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_219509dense_44_219511*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_2193482"
 dense_44/StatefulPartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_219514dense_45_219516*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_2193842"
 dense_45/StatefulPartitionedCall?
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0"^conv1d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
*__inference_conv1d_15_layer_call_fn_219980

inputs
unknown:
?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_15_layer_call_and_return_conditional_losses_2192372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219391

inputs'
conv1d_15_219238:
?
conv1d_15_219240:	?#
dense_42_219275:
??
dense_42_219277:	?"
dense_43_219312:	?@
dense_43_219314:@!
dense_44_219349:@ 
dense_44_219351: !
dense_45_219385: 
dense_45_219387:
identity??!conv1d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
!conv1d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_15_219238conv1d_15_219240*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_15_layer_call_and_return_conditional_losses_2192372#
!conv1d_15/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall*conv1d_15/StatefulPartitionedCall:output:0dense_42_219275dense_42_219277*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_2192742"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_219312dense_43_219314*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_2193112"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_219349dense_44_219351*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_2193482"
 dense_44/StatefulPartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_219385dense_45_219387*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_2193842"
 dense_45/StatefulPartitionedCall?
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0"^conv1d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2F
!conv1d_15/StatefulPartitionedCall!conv1d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
? 
?
D__inference_dense_43_layer_call_and_return_conditional_losses_220051

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_219659
input_24
unknown:
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_24unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2192142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
?
?
E__inference_conv1d_15_layer_call_and_return_conditional_losses_219971

inputsB
+conv1d_expanddims_1_readvariableop_resource:
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????
2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:
?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
.__inference_sequential_26_layer_call_fn_219955

inputs
unknown:
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_2195202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
)__inference_dense_43_layer_call_fn_220060

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
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_2193112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_45_layer_call_fn_220139

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
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_2193842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
? 
?
D__inference_dense_45_layer_call_and_return_conditional_losses_220130

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_conv1d_15_layer_call_and_return_conditional_losses_219237

inputsB
+conv1d_expanddims_1_readvariableop_resource:
?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????
2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:
?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
.__inference_sequential_26_layer_call_fn_219414
input_24
unknown:
?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_24unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_2193912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????

"
_user_specified_name
input_24
? 
?
D__inference_dense_45_layer_call_and_return_conditional_losses_219384

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
? 
?
D__inference_dense_42_layer_call_and_return_conditional_losses_220011

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
ӥ
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219905

inputsL
5conv1d_15_conv1d_expanddims_1_readvariableop_resource:
?8
)conv1d_15_biasadd_readvariableop_resource:	?>
*dense_42_tensordot_readvariableop_resource:
??7
(dense_42_biasadd_readvariableop_resource:	?=
*dense_43_tensordot_readvariableop_resource:	?@6
(dense_43_biasadd_readvariableop_resource:@<
*dense_44_tensordot_readvariableop_resource:@ 6
(dense_44_biasadd_readvariableop_resource: <
*dense_45_tensordot_readvariableop_resource: 6
(dense_45_biasadd_readvariableop_resource:
identity?? conv1d_15/BiasAdd/ReadVariableOp?,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?!dense_42/Tensordot/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?!dense_43/Tensordot/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?!dense_44/Tensordot/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?!dense_45/Tensordot/ReadVariableOp?
conv1d_15/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_15/conv1d/ExpandDims/dim?
conv1d_15/conv1d/ExpandDims
ExpandDimsinputs(conv1d_15/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????
2
conv1d_15/conv1d/ExpandDims?
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_15_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:
?*
dtype02.
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_15/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_15/conv1d/ExpandDims_1/dim?
conv1d_15/conv1d/ExpandDims_1
ExpandDims4conv1d_15/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_15/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:
?2
conv1d_15/conv1d/ExpandDims_1?
conv1d_15/conv1dConv2D$conv1d_15/conv1d/ExpandDims:output:0&conv1d_15/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv1d_15/conv1d?
conv1d_15/conv1d/SqueezeSqueezeconv1d_15/conv1d:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????2
conv1d_15/conv1d/Squeeze?
 conv1d_15/BiasAdd/ReadVariableOpReadVariableOp)conv1d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv1d_15/BiasAdd/ReadVariableOp?
conv1d_15/BiasAddBiasAdd!conv1d_15/conv1d/Squeeze:output:0(conv1d_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
conv1d_15/BiasAdd{
conv1d_15/ReluReluconv1d_15/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
conv1d_15/Relu?
!dense_42/Tensordot/ReadVariableOpReadVariableOp*dense_42_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!dense_42/Tensordot/ReadVariableOp|
dense_42/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_42/Tensordot/axes?
dense_42/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_42/Tensordot/free?
dense_42/Tensordot/ShapeShapeconv1d_15/Relu:activations:0*
T0*
_output_shapes
:2
dense_42/Tensordot/Shape?
 dense_42/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_42/Tensordot/GatherV2/axis?
dense_42/Tensordot/GatherV2GatherV2!dense_42/Tensordot/Shape:output:0 dense_42/Tensordot/free:output:0)dense_42/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_42/Tensordot/GatherV2?
"dense_42/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_42/Tensordot/GatherV2_1/axis?
dense_42/Tensordot/GatherV2_1GatherV2!dense_42/Tensordot/Shape:output:0 dense_42/Tensordot/axes:output:0+dense_42/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_42/Tensordot/GatherV2_1~
dense_42/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_42/Tensordot/Const?
dense_42/Tensordot/ProdProd$dense_42/Tensordot/GatherV2:output:0!dense_42/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_42/Tensordot/Prod?
dense_42/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_42/Tensordot/Const_1?
dense_42/Tensordot/Prod_1Prod&dense_42/Tensordot/GatherV2_1:output:0#dense_42/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_42/Tensordot/Prod_1?
dense_42/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_42/Tensordot/concat/axis?
dense_42/Tensordot/concatConcatV2 dense_42/Tensordot/free:output:0 dense_42/Tensordot/axes:output:0'dense_42/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/concat?
dense_42/Tensordot/stackPack dense_42/Tensordot/Prod:output:0"dense_42/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/stack?
dense_42/Tensordot/transpose	Transposeconv1d_15/Relu:activations:0"dense_42/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Tensordot/transpose?
dense_42/Tensordot/ReshapeReshape dense_42/Tensordot/transpose:y:0!dense_42/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_42/Tensordot/Reshape?
dense_42/Tensordot/MatMulMatMul#dense_42/Tensordot/Reshape:output:0)dense_42/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_42/Tensordot/MatMul?
dense_42/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_42/Tensordot/Const_2?
 dense_42/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_42/Tensordot/concat_1/axis?
dense_42/Tensordot/concat_1ConcatV2$dense_42/Tensordot/GatherV2:output:0#dense_42/Tensordot/Const_2:output:0)dense_42/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_42/Tensordot/concat_1?
dense_42/TensordotReshape#dense_42/Tensordot/MatMul:product:0$dense_42/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Tensordot?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_42/BiasAdd/ReadVariableOp?
dense_42/BiasAddBiasAdddense_42/Tensordot:output:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_42/BiasAddx
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_42/Relu?
!dense_43/Tensordot/ReadVariableOpReadVariableOp*dense_43_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_43/Tensordot/ReadVariableOp|
dense_43/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_43/Tensordot/axes?
dense_43/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_43/Tensordot/free
dense_43/Tensordot/ShapeShapedense_42/Relu:activations:0*
T0*
_output_shapes
:2
dense_43/Tensordot/Shape?
 dense_43/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_43/Tensordot/GatherV2/axis?
dense_43/Tensordot/GatherV2GatherV2!dense_43/Tensordot/Shape:output:0 dense_43/Tensordot/free:output:0)dense_43/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_43/Tensordot/GatherV2?
"dense_43/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_43/Tensordot/GatherV2_1/axis?
dense_43/Tensordot/GatherV2_1GatherV2!dense_43/Tensordot/Shape:output:0 dense_43/Tensordot/axes:output:0+dense_43/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_43/Tensordot/GatherV2_1~
dense_43/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_43/Tensordot/Const?
dense_43/Tensordot/ProdProd$dense_43/Tensordot/GatherV2:output:0!dense_43/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_43/Tensordot/Prod?
dense_43/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_43/Tensordot/Const_1?
dense_43/Tensordot/Prod_1Prod&dense_43/Tensordot/GatherV2_1:output:0#dense_43/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_43/Tensordot/Prod_1?
dense_43/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_43/Tensordot/concat/axis?
dense_43/Tensordot/concatConcatV2 dense_43/Tensordot/free:output:0 dense_43/Tensordot/axes:output:0'dense_43/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/concat?
dense_43/Tensordot/stackPack dense_43/Tensordot/Prod:output:0"dense_43/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/stack?
dense_43/Tensordot/transpose	Transposedense_42/Relu:activations:0"dense_43/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_43/Tensordot/transpose?
dense_43/Tensordot/ReshapeReshape dense_43/Tensordot/transpose:y:0!dense_43/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_43/Tensordot/Reshape?
dense_43/Tensordot/MatMulMatMul#dense_43/Tensordot/Reshape:output:0)dense_43/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_43/Tensordot/MatMul?
dense_43/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_43/Tensordot/Const_2?
 dense_43/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_43/Tensordot/concat_1/axis?
dense_43/Tensordot/concat_1ConcatV2$dense_43/Tensordot/GatherV2:output:0#dense_43/Tensordot/Const_2:output:0)dense_43/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_43/Tensordot/concat_1?
dense_43/TensordotReshape#dense_43/Tensordot/MatMul:product:0$dense_43/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
dense_43/Tensordot?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_43/BiasAdd/ReadVariableOp?
dense_43/BiasAddBiasAdddense_43/Tensordot:output:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
dense_43/BiasAddw
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
dense_43/Relu?
!dense_44/Tensordot/ReadVariableOpReadVariableOp*dense_44_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_44/Tensordot/ReadVariableOp|
dense_44/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_44/Tensordot/axes?
dense_44/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_44/Tensordot/free
dense_44/Tensordot/ShapeShapedense_43/Relu:activations:0*
T0*
_output_shapes
:2
dense_44/Tensordot/Shape?
 dense_44/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_44/Tensordot/GatherV2/axis?
dense_44/Tensordot/GatherV2GatherV2!dense_44/Tensordot/Shape:output:0 dense_44/Tensordot/free:output:0)dense_44/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_44/Tensordot/GatherV2?
"dense_44/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_44/Tensordot/GatherV2_1/axis?
dense_44/Tensordot/GatherV2_1GatherV2!dense_44/Tensordot/Shape:output:0 dense_44/Tensordot/axes:output:0+dense_44/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_44/Tensordot/GatherV2_1~
dense_44/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const?
dense_44/Tensordot/ProdProd$dense_44/Tensordot/GatherV2:output:0!dense_44/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_44/Tensordot/Prod?
dense_44/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const_1?
dense_44/Tensordot/Prod_1Prod&dense_44/Tensordot/GatherV2_1:output:0#dense_44/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_44/Tensordot/Prod_1?
dense_44/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_44/Tensordot/concat/axis?
dense_44/Tensordot/concatConcatV2 dense_44/Tensordot/free:output:0 dense_44/Tensordot/axes:output:0'dense_44/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/concat?
dense_44/Tensordot/stackPack dense_44/Tensordot/Prod:output:0"dense_44/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/stack?
dense_44/Tensordot/transpose	Transposedense_43/Relu:activations:0"dense_44/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense_44/Tensordot/transpose?
dense_44/Tensordot/ReshapeReshape dense_44/Tensordot/transpose:y:0!dense_44/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_44/Tensordot/Reshape?
dense_44/Tensordot/MatMulMatMul#dense_44/Tensordot/Reshape:output:0)dense_44/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_44/Tensordot/MatMul?
dense_44/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_44/Tensordot/Const_2?
 dense_44/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_44/Tensordot/concat_1/axis?
dense_44/Tensordot/concat_1ConcatV2$dense_44/Tensordot/GatherV2:output:0#dense_44/Tensordot/Const_2:output:0)dense_44/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_44/Tensordot/concat_1?
dense_44/TensordotReshape#dense_44/Tensordot/MatMul:product:0$dense_44/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
dense_44/Tensordot?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/Tensordot:output:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
dense_44/BiasAddw
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
dense_44/Relu?
!dense_45/Tensordot/ReadVariableOpReadVariableOp*dense_45_tensordot_readvariableop_resource*
_output_shapes

: *
dtype02#
!dense_45/Tensordot/ReadVariableOp|
dense_45/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_45/Tensordot/axes?
dense_45/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_45/Tensordot/free
dense_45/Tensordot/ShapeShapedense_44/Relu:activations:0*
T0*
_output_shapes
:2
dense_45/Tensordot/Shape?
 dense_45/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_45/Tensordot/GatherV2/axis?
dense_45/Tensordot/GatherV2GatherV2!dense_45/Tensordot/Shape:output:0 dense_45/Tensordot/free:output:0)dense_45/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_45/Tensordot/GatherV2?
"dense_45/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_45/Tensordot/GatherV2_1/axis?
dense_45/Tensordot/GatherV2_1GatherV2!dense_45/Tensordot/Shape:output:0 dense_45/Tensordot/axes:output:0+dense_45/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_45/Tensordot/GatherV2_1~
dense_45/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_45/Tensordot/Const?
dense_45/Tensordot/ProdProd$dense_45/Tensordot/GatherV2:output:0!dense_45/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_45/Tensordot/Prod?
dense_45/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_45/Tensordot/Const_1?
dense_45/Tensordot/Prod_1Prod&dense_45/Tensordot/GatherV2_1:output:0#dense_45/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_45/Tensordot/Prod_1?
dense_45/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_45/Tensordot/concat/axis?
dense_45/Tensordot/concatConcatV2 dense_45/Tensordot/free:output:0 dense_45/Tensordot/axes:output:0'dense_45/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/concat?
dense_45/Tensordot/stackPack dense_45/Tensordot/Prod:output:0"dense_45/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/stack?
dense_45/Tensordot/transpose	Transposedense_44/Relu:activations:0"dense_45/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
dense_45/Tensordot/transpose?
dense_45/Tensordot/ReshapeReshape dense_45/Tensordot/transpose:y:0!dense_45/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_45/Tensordot/Reshape?
dense_45/Tensordot/MatMulMatMul#dense_45/Tensordot/Reshape:output:0)dense_45/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_45/Tensordot/MatMul?
dense_45/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_45/Tensordot/Const_2?
 dense_45/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_45/Tensordot/concat_1/axis?
dense_45/Tensordot/concat_1ConcatV2$dense_45/Tensordot/GatherV2:output:0#dense_45/Tensordot/Const_2:output:0)dense_45/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_45/Tensordot/concat_1?
dense_45/TensordotReshape#dense_45/Tensordot/MatMul:product:0$dense_45/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_45/Tensordot?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/Tensordot:output:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_45/BiasAdd?
IdentityIdentitydense_45/BiasAdd:output:0!^conv1d_15/BiasAdd/ReadVariableOp-^conv1d_15/conv1d/ExpandDims_1/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp"^dense_42/Tensordot/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp"^dense_43/Tensordot/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp"^dense_44/Tensordot/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp"^dense_45/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????
: : : : : : : : : : 2D
 conv1d_15/BiasAdd/ReadVariableOp conv1d_15/BiasAdd/ReadVariableOp2\
,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp,conv1d_15/conv1d/ExpandDims_1/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2F
!dense_42/Tensordot/ReadVariableOp!dense_42/Tensordot/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2F
!dense_43/Tensordot/ReadVariableOp!dense_43/Tensordot/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2F
!dense_44/Tensordot/ReadVariableOp!dense_44/Tensordot/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2F
!dense_45/Tensordot/ReadVariableOp!dense_45/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input_245
serving_default_input_24:0?????????
@
dense_454
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?9
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
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
*k&call_and_return_all_conditional_losses
l_default_save_signature
m__call__"?6
_tf_keras_sequential?5{"name": "sequential_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_24"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 10}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 10]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 10]}, "float32", "input_24"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_24"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 18}, "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 19}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*n&call_and_return_all_conditional_losses
o__call__"?	
_tf_keras_layer?	{"name": "conv1d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 10}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 10]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*p&call_and_return_all_conditional_losses
q__call__"?
_tf_keras_layer?{"name": "dense_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 256]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*r&call_and_return_all_conditional_losses
s__call__"?
_tf_keras_layer?{"name": "dense_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 128]}}
?

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
*t&call_and_return_all_conditional_losses
u__call__"?
_tf_keras_layer?{"name": "dense_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 64]}}
?

$kernel
%bias
&	variables
'regularization_losses
(trainable_variables
)	keras_api
*v&call_and_return_all_conditional_losses
w__call__"?
_tf_keras_layer?{"name": "dense_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 32]}}
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratemWmXmYmZm[m\m]m^$m_%m`vavbvcvdvevfvgvh$vi%vj"
	optimizer
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
?
/metrics
	variables

0layers
1non_trainable_variables
2layer_regularization_losses
3layer_metrics
regularization_losses
	trainable_variables
m__call__
l_default_save_signature
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
,
xserving_default"
signature_map
':%
?2conv1d_15/kernel
:?2conv1d_15/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
4metrics
	variables

5layers
6non_trainable_variables
7layer_regularization_losses
8layer_metrics
regularization_losses
trainable_variables
o__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_42/kernel
:?2dense_42/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
9metrics
	variables

:layers
;non_trainable_variables
<layer_regularization_losses
=layer_metrics
regularization_losses
trainable_variables
q__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
": 	?@2dense_43/kernel
:@2dense_43/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
>metrics
	variables

?layers
@non_trainable_variables
Alayer_regularization_losses
Blayer_metrics
regularization_losses
trainable_variables
s__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_44/kernel
: 2dense_44/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Cmetrics
 	variables

Dlayers
Enon_trainable_variables
Flayer_regularization_losses
Glayer_metrics
!regularization_losses
"trainable_variables
u__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_45/kernel
:2dense_45/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
Hmetrics
&	variables

Ilayers
Jnon_trainable_variables
Klayer_regularization_losses
Llayer_metrics
'regularization_losses
(trainable_variables
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
M0
N1"
trackable_list_wrapper
C
0
1
2
3
4"
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
?
	Ototal
	Pcount
Q	variables
R	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 24}
?
	Stotal
	Tcount
U	variables
V	keras_api"?
_tf_keras_metric?{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 19}
:  (2total
:  (2count
.
O0
P1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
,:*
?2Adam/conv1d_15/kernel/m
": ?2Adam/conv1d_15/bias/m
(:&
??2Adam/dense_42/kernel/m
!:?2Adam/dense_42/bias/m
':%	?@2Adam/dense_43/kernel/m
 :@2Adam/dense_43/bias/m
&:$@ 2Adam/dense_44/kernel/m
 : 2Adam/dense_44/bias/m
&:$ 2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
,:*
?2Adam/conv1d_15/kernel/v
": ?2Adam/conv1d_15/bias/v
(:&
??2Adam/dense_42/kernel/v
!:?2Adam/dense_42/bias/v
':%	?@2Adam/dense_43/kernel/v
 :@2Adam/dense_43/bias/v
&:$@ 2Adam/dense_44/kernel/v
 : 2Adam/dense_44/bias/v
&:$ 2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
?2?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219782
I__inference_sequential_26_layer_call_and_return_conditional_losses_219905
I__inference_sequential_26_layer_call_and_return_conditional_losses_219597
I__inference_sequential_26_layer_call_and_return_conditional_losses_219626?
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
?2?
!__inference__wrapped_model_219214?
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
input_24?????????

?2?
.__inference_sequential_26_layer_call_fn_219414
.__inference_sequential_26_layer_call_fn_219930
.__inference_sequential_26_layer_call_fn_219955
.__inference_sequential_26_layer_call_fn_219568?
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
?2?
E__inference_conv1d_15_layer_call_and_return_conditional_losses_219971?
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
*__inference_conv1d_15_layer_call_fn_219980?
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
D__inference_dense_42_layer_call_and_return_conditional_losses_220011?
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
)__inference_dense_42_layer_call_fn_220020?
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
D__inference_dense_43_layer_call_and_return_conditional_losses_220051?
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
)__inference_dense_43_layer_call_fn_220060?
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
D__inference_dense_44_layer_call_and_return_conditional_losses_220091?
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
)__inference_dense_44_layer_call_fn_220100?
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
D__inference_dense_45_layer_call_and_return_conditional_losses_220130?
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
)__inference_dense_45_layer_call_fn_220139?
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
$__inference_signature_wrapper_219659input_24"?
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
 ?
!__inference__wrapped_model_219214|
$%5?2
+?(
&?#
input_24?????????

? "7?4
2
dense_45&?#
dense_45??????????
E__inference_conv1d_15_layer_call_and_return_conditional_losses_219971e3?0
)?&
$?!
inputs?????????

? "*?'
 ?
0??????????
? ?
*__inference_conv1d_15_layer_call_fn_219980X3?0
)?&
$?!
inputs?????????

? "????????????
D__inference_dense_42_layer_call_and_return_conditional_losses_220011f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
)__inference_dense_42_layer_call_fn_220020Y4?1
*?'
%?"
inputs??????????
? "????????????
D__inference_dense_43_layer_call_and_return_conditional_losses_220051e4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????@
? ?
)__inference_dense_43_layer_call_fn_220060X4?1
*?'
%?"
inputs??????????
? "??????????@?
D__inference_dense_44_layer_call_and_return_conditional_losses_220091d3?0
)?&
$?!
inputs?????????@
? ")?&
?
0????????? 
? ?
)__inference_dense_44_layer_call_fn_220100W3?0
)?&
$?!
inputs?????????@
? "?????????? ?
D__inference_dense_45_layer_call_and_return_conditional_losses_220130d$%3?0
)?&
$?!
inputs????????? 
? ")?&
?
0?????????
? ?
)__inference_dense_45_layer_call_fn_220139W$%3?0
)?&
$?!
inputs????????? 
? "???????????
I__inference_sequential_26_layer_call_and_return_conditional_losses_219597v
$%=?:
3?0
&?#
input_24?????????

p 

 
? ")?&
?
0?????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219626v
$%=?:
3?0
&?#
input_24?????????

p

 
? ")?&
?
0?????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219782t
$%;?8
1?.
$?!
inputs?????????

p 

 
? ")?&
?
0?????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_219905t
$%;?8
1?.
$?!
inputs?????????

p

 
? ")?&
?
0?????????
? ?
.__inference_sequential_26_layer_call_fn_219414i
$%=?:
3?0
&?#
input_24?????????

p 

 
? "???????????
.__inference_sequential_26_layer_call_fn_219568i
$%=?:
3?0
&?#
input_24?????????

p

 
? "???????????
.__inference_sequential_26_layer_call_fn_219930g
$%;?8
1?.
$?!
inputs?????????

p 

 
? "???????????
.__inference_sequential_26_layer_call_fn_219955g
$%;?8
1?.
$?!
inputs?????????

p

 
? "???????????
$__inference_signature_wrapper_219659?
$%A?>
? 
7?4
2
input_24&?#
input_24?????????
"7?4
2
dense_45&?#
dense_45?????????