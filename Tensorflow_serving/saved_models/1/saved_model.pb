½’

¾
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
;
Elu
features"T
activations"T"
Ttype:
2
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
„
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-0-gc256c071bb28é	

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:É¬*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*!
_output_shapes
:É¬*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ * 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:¬ *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ * 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:¬ *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ * 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:¬ *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:`*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
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

embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:É¬*)
shared_nameembedding_1/embeddings/m

,embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_1/embeddings/m*!
_output_shapes
:É¬*
dtype0

conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_1/kernel/m

%conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_1/kernel/m*'
_output_shapes
:¬ *
dtype0
v
conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/bias/m
o
#conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpconv2d_1/bias/m*
_output_shapes
: *
dtype0

conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_2/kernel/m

%conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_2/kernel/m*'
_output_shapes
:¬ *
dtype0
v
conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_2/bias/m
o
#conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpconv2d_2/bias/m*
_output_shapes
: *
dtype0

conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_3/kernel/m

%conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpconv2d_3/kernel/m*'
_output_shapes
:¬ *
dtype0
v
conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_3/bias/m
o
#conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpconv2d_3/bias/m*
_output_shapes
: *
dtype0
|
dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*!
shared_namedense_1/kernel/m
u
$dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdense_1/kernel/m*
_output_shapes

:`*
dtype0
t
dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias/m
m
"dense_1/bias/m/Read/ReadVariableOpReadVariableOpdense_1/bias/m*
_output_shapes
:*
dtype0

embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:É¬*)
shared_nameembedding_1/embeddings/v

,embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_1/embeddings/v*!
_output_shapes
:É¬*
dtype0

conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_1/kernel/v

%conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_1/kernel/v*'
_output_shapes
:¬ *
dtype0
v
conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/bias/v
o
#conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpconv2d_1/bias/v*
_output_shapes
: *
dtype0

conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_2/kernel/v

%conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_2/kernel/v*'
_output_shapes
:¬ *
dtype0
v
conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_2/bias/v
o
#conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpconv2d_2/bias/v*
_output_shapes
: *
dtype0

conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬ *"
shared_nameconv2d_3/kernel/v

%conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpconv2d_3/kernel/v*'
_output_shapes
:¬ *
dtype0
v
conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_3/bias/v
o
#conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpconv2d_3/bias/v*
_output_shapes
: *
dtype0
|
dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*!
shared_namedense_1/kernel/v
u
$dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdense_1/kernel/v*
_output_shapes

:`*
dtype0
t
dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias/v
m
"dense_1/bias/v/Read/ReadVariableOpReadVariableOpdense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ńC
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¬C
value¢CBC BC

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
R
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
R
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
h

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
ō
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemmm #m”$m¢)m£*m¤Gm„Hm¦v§vØv©#vŖ$v«)v¬*v­Gv®HvÆ
?
0
1
2
#3
$4
)5
*6
G7
H8
?
0
1
2
#3
$4
)5
*6
G7
H8
 
­
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
/	variables
0trainable_variables
1regularization_losses
 
 
 
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
3	variables
4trainable_variables
5regularization_losses
 
 
 
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 
 
±
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
 
 
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1

G0
H1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12

0
1
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
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUEembedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEembedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEconv2d_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEconv2d_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:’’’’’’’’’d*
dtype0*
shape:’’’’’’’’’d
Ū
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1embedding_1/embeddingsconv2d_3/kernelconv2d_3/biasconv2d_2/kernelconv2d_2/biasconv2d_1/kernelconv2d_1/biasdense_1/kerneldense_1/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_1744
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ā
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiter/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,embedding_1/embeddings/m/Read/ReadVariableOp%conv2d_1/kernel/m/Read/ReadVariableOp#conv2d_1/bias/m/Read/ReadVariableOp%conv2d_2/kernel/m/Read/ReadVariableOp#conv2d_2/bias/m/Read/ReadVariableOp%conv2d_3/kernel/m/Read/ReadVariableOp#conv2d_3/bias/m/Read/ReadVariableOp$dense_1/kernel/m/Read/ReadVariableOp"dense_1/bias/m/Read/ReadVariableOp,embedding_1/embeddings/v/Read/ReadVariableOp%conv2d_1/kernel/v/Read/ReadVariableOp#conv2d_1/bias/v/Read/ReadVariableOp%conv2d_2/kernel/v/Read/ReadVariableOp#conv2d_2/bias/v/Read/ReadVariableOp%conv2d_3/kernel/v/Read/ReadVariableOp#conv2d_3/bias/v/Read/ReadVariableOp$dense_1/kernel/v/Read/ReadVariableOp"dense_1/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
GPU2*0J 8 *&
f!R
__inference__traced_save_2266
ķ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense_1/kerneldense_1/biasiterbeta_1beta_2decaylearning_ratetotalcounttotal_1count_1embedding_1/embeddings/mconv2d_1/kernel/mconv2d_1/bias/mconv2d_2/kernel/mconv2d_2/bias/mconv2d_3/kernel/mconv2d_3/bias/mdense_1/kernel/mdense_1/bias/membedding_1/embeddings/vconv2d_1/kernel/vconv2d_1/bias/vconv2d_2/kernel/vconv2d_2/bias/vconv2d_3/kernel/vconv2d_3/bias/vdense_1/kernel/vdense_1/bias/v*0
Tin)
'2%*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_restore_2384ō
1
ī
A__inference_model_1_layer_call_and_return_conditional_losses_1713
input_1%
embedding_1_1682:É¬(
conv2d_3_1686:¬ 
conv2d_3_1688: (
conv2d_2_1691:¬ 
conv2d_2_1693: (
conv2d_1_1696:¬ 
conv2d_1_1698: 
dense_1_1707:`
dense_1_1709:
identity¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallė
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_1682*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’d¬*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283ź
reshape_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’d¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_3_1686conv2d_3_1688*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’` *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_2_1691conv2d_2_1693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_1_1696conv2d_1_1698*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’c *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348ņ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358ņ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364ņ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370Ć
concatenate_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380Ū
flatten_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388ē
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1466
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_1707dense_1_1709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1408w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1
Ź
J
.__inference_max_pooling2d_3_layer_call_fn_2052

inputs
identityæ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’` :W S
/
_output_shapes
:’’’’’’’’’` 
 
_user_specified_nameinputs
„
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2042

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
b*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’b :W S
/
_output_shapes
:’’’’’’’’’b 
 
_user_specified_nameinputs
õ

G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380

inputs
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*/
_output_shapes
:’’’’’’’’’ _
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ :W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1264

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
`*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ē
£
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283

inputs*
embedding_lookup_1277:É¬
identity¢embedding_lookup¶
embedding_lookupResourceGatherembedding_lookup_1277inputs*
Tindices0*(
_class
loc:@embedding_lookup/1277*,
_output_shapes
:’’’’’’’’’d¬*
dtype0”
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1277*,
_output_shapes
:’’’’’’’’’d¬
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:’’’’’’’’’d¬x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’d¬Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
®
D
(__inference_flatten_1_layer_call_fn_2082

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’ :W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
±@
¦
A__inference_model_1_layer_call_and_return_conditional_losses_1845

inputs6
!embedding_1_embedding_lookup_1793:É¬B
'conv2d_3_conv2d_readvariableop_resource:¬ 6
(conv2d_3_biasadd_readvariableop_resource: B
'conv2d_2_conv2d_readvariableop_resource:¬ 6
(conv2d_2_biasadd_readvariableop_resource: B
'conv2d_1_conv2d_readvariableop_resource:¬ 6
(conv2d_1_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource:`5
'dense_1_biasadd_readvariableop_resource:
identity¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢embedding_1/embedding_lookupŚ
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_1793inputs*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/1793*,
_output_shapes
:’’’’’’’’’d¬*
dtype0Å
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/1793*,
_output_shapes
:’’’’’’’’’d¬
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:’’’’’’’’’d¬o
reshape_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d\
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ū
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:«
reshape_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0 reshape_1/Reshape/shape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_3/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` h
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’` 
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_2/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b h
conv2d_2/EluEluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’b 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_1/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c *
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c h
conv2d_1/EluEluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’c «
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
c*
paddingVALID*
strides
«
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
b*
paddingVALID*
strides
«
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
`*
paddingVALID*
strides
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ķ
concatenate_1/concatConcatV2 max_pooling2d_1/MaxPool:output:0 max_pooling2d_2/MaxPool:output:0 max_pooling2d_3/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*/
_output_shapes
:’’’’’’’’’ `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’`   
flatten_1/ReshapeReshapeconcatenate_1/concat:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`l
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ļ
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
š
a
(__inference_dropout_1_layer_call_fn_2098

inputs
identity¢StatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
„
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2022

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
c*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’c :W S
/
_output_shapes
:’’’’’’’’’c 
 
_user_specified_nameinputs
·
J
.__inference_max_pooling2d_1_layer_call_fn_2007

inputs
identityŚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1240
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs

ü
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’` h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’` w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2017

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
c*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


ņ
A__inference_dense_1_layer_call_and_return_conditional_losses_1408

inputs0
matmul_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
·
J
.__inference_max_pooling2d_3_layer_call_fn_2047

inputs
identityŚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1264
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ź
f
,__inference_concatenate_1_layer_call_fn_2069
inputs_0
inputs_1
inputs_2
identityÕ
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ :Y U
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/2
„
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
b*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’b :W S
/
_output_shapes
:’’’’’’’’’b 
 
_user_specified_nameinputs
Ö
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_1395

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:’’’’’’’’’`[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
1
ķ
A__inference_model_1_layer_call_and_return_conditional_losses_1601

inputs%
embedding_1_1570:É¬(
conv2d_3_1574:¬ 
conv2d_3_1576: (
conv2d_2_1579:¬ 
conv2d_2_1581: (
conv2d_1_1584:¬ 
conv2d_1_1586: 
dense_1_1595:`
dense_1_1597:
identity¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallź
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_1570*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’d¬*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283ź
reshape_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’d¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_3_1574conv2d_3_1576*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’` *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_2_1579conv2d_2_1581*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_1_1584conv2d_1_1586*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’c *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348ņ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358ņ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364ņ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370Ć
concatenate_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380Ū
flatten_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388ē
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1466
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_1595dense_1_1597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1408w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs

ü
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2002

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’` h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’` w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs

³
 __inference__traced_restore_2384
file_prefix<
'assignvariableop_embedding_1_embeddings:É¬=
"assignvariableop_1_conv2d_1_kernel:¬ .
 assignvariableop_2_conv2d_1_bias: =
"assignvariableop_3_conv2d_2_kernel:¬ .
 assignvariableop_4_conv2d_2_bias: =
"assignvariableop_5_conv2d_3_kernel:¬ .
 assignvariableop_6_conv2d_3_bias: 3
!assignvariableop_7_dense_1_kernel:`-
assignvariableop_8_dense_1_bias:!
assignvariableop_9_iter:	 $
assignvariableop_10_beta_1: $
assignvariableop_11_beta_2: #
assignvariableop_12_decay: +
!assignvariableop_13_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: A
,assignvariableop_18_embedding_1_embeddings_m:É¬@
%assignvariableop_19_conv2d_1_kernel_m:¬ 1
#assignvariableop_20_conv2d_1_bias_m: @
%assignvariableop_21_conv2d_2_kernel_m:¬ 1
#assignvariableop_22_conv2d_2_bias_m: @
%assignvariableop_23_conv2d_3_kernel_m:¬ 1
#assignvariableop_24_conv2d_3_bias_m: 6
$assignvariableop_25_dense_1_kernel_m:`0
"assignvariableop_26_dense_1_bias_m:A
,assignvariableop_27_embedding_1_embeddings_v:É¬@
%assignvariableop_28_conv2d_1_kernel_v:¬ 1
#assignvariableop_29_conv2d_1_bias_v: @
%assignvariableop_30_conv2d_2_kernel_v:¬ 1
#assignvariableop_31_conv2d_2_bias_v: @
%assignvariableop_32_conv2d_3_kernel_v:¬ 1
#assignvariableop_33_conv2d_3_bias_v: 6
$assignvariableop_34_dense_1_kernel_v:`0
"assignvariableop_35_dense_1_bias_v:
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ä
valueŗB·%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŗ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ś
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ŗ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_1_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_1_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_2_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv2d_2_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_3_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_3_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp,assignvariableop_18_embedding_1_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp%assignvariableop_19_conv2d_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp%assignvariableop_21_conv2d_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp%assignvariableop_23_conv2d_3_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_3_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp$assignvariableop_25_dense_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_embedding_1_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv2d_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv2d_1_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_2_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_2_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv2d_3_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp#assignvariableop_33_conv2d_3_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp$assignvariableop_34_dense_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp"assignvariableop_35_dense_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ē
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ō
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352(
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
ģ

'__inference_conv2d_3_layer_call_fn_1991

inputs"
unknown:¬ 
	unknown_0: 
identity¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’` *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’` `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs


š
&__inference_model_1_layer_call_fn_1790

inputs
unknown:É¬$
	unknown_0:¬ 
	unknown_1: $
	unknown_2:¬ 
	unknown_3: $
	unknown_4:¬ 
	unknown_5: 
	unknown_6:`
	unknown_7:
identity¢StatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1252

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
b*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1240

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
c*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ē
£
E__inference_embedding_1_layer_call_and_return_conditional_losses_1923

inputs*
embedding_lookup_1917:É¬
identity¢embedding_lookup¶
embedding_lookupResourceGatherembedding_lookup_1917inputs*
Tindices0*(
_class
loc:@embedding_lookup/1917*,
_output_shapes
:’’’’’’’’’d¬*
dtype0”
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1917*,
_output_shapes
:’’’’’’’’’d¬
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:’’’’’’’’’d¬x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’d¬Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
×
_
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’d¬:T P
,
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
Ć
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_2088

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’`   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:’’’’’’’’’`X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’ :W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
„
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
c*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’c :W S
/
_output_shapes
:’’’’’’’’’c 
 
_user_specified_nameinputs
·
J
.__inference_max_pooling2d_2_layer_call_fn_2027

inputs
identityŚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1252
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ń	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1466

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’`o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’`i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’`Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs


ń
&__inference_model_1_layer_call_fn_1436
input_1
unknown:É¬$
	unknown_0:¬ 
	unknown_1: $
	unknown_2:¬ 
	unknown_3: $
	unknown_4:¬ 
	unknown_5: 
	unknown_6:`
	unknown_7:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1
„
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
`*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’` :W S
/
_output_shapes
:’’’’’’’’’` 
 
_user_specified_nameinputs

D
(__inference_dropout_1_layer_call_fn_2093

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1395`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
ģ

'__inference_conv2d_2_layer_call_fn_1971

inputs"
unknown:¬ 
	unknown_0: 
identity¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’b `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs

ü
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1962

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’c h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’c w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
Ź
J
.__inference_max_pooling2d_1_layer_call_fn_2012

inputs
identityæ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’c :W S
/
_output_shapes
:’’’’’’’’’c 
 
_user_specified_nameinputs
ŗ
D
(__inference_reshape_1_layer_call_fn_1928

inputs
identityŗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’d¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’d¬:T P
,
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
Ö
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_2103

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:’’’’’’’’’`[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs


ņ
A__inference_dense_1_layer_call_and_return_conditional_losses_2135

inputs0
matmul_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
ōG
¦
A__inference_model_1_layer_call_and_return_conditional_losses_1907

inputs6
!embedding_1_embedding_lookup_1848:É¬B
'conv2d_3_conv2d_readvariableop_resource:¬ 6
(conv2d_3_biasadd_readvariableop_resource: B
'conv2d_2_conv2d_readvariableop_resource:¬ 6
(conv2d_2_biasadd_readvariableop_resource: B
'conv2d_1_conv2d_readvariableop_resource:¬ 6
(conv2d_1_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource:`5
'dense_1_biasadd_readvariableop_resource:
identity¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢embedding_1/embedding_lookupŚ
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_1848inputs*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/1848*,
_output_shapes
:’’’’’’’’’d¬*
dtype0Å
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/1848*,
_output_shapes
:’’’’’’’’’d¬
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:’’’’’’’’’d¬o
reshape_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d\
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬[
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ū
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:«
reshape_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0 reshape_1/Reshape/shape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_3/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` h
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’` 
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_2/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b h
conv2d_2/EluEluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’b 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ą
conv2d_1/Conv2DConv2Dreshape_1/Reshape:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c *
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c h
conv2d_1/EluEluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’c «
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
c*
paddingVALID*
strides
«
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
b*
paddingVALID*
strides
«
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
`*
paddingVALID*
strides
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ķ
concatenate_1/concatConcatV2 max_pooling2d_1/MaxPool:output:0 max_pooling2d_2/MaxPool:output:0 max_pooling2d_3/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*/
_output_shapes
:’’’’’’’’’ `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’`   
flatten_1/ReshapeReshapeconcatenate_1/concat:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`a
dropout_1/dropout/ShapeShapeflatten_1/Reshape:output:0*
T0*
_output_shapes
: 
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ä
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’`
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’`
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ļ
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2037

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
b*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs

ü
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1982

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’b h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’b w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
×
_
C__inference_reshape_1_layer_call_and_return_conditional_losses_1942

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’d¬:T P
,
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs

ü
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’c h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’c w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs

ü
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331

inputs9
conv2d_readvariableop_resource:¬ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’b h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’b w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
Ź
J
.__inference_max_pooling2d_2_layer_call_fn_2032

inputs
identityæ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’b :W S
/
_output_shapes
:’’’’’’’’’b 
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2057

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
`*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


š
&__inference_model_1_layer_call_fn_1767

inputs
unknown:É¬$
	unknown_0:¬ 
	unknown_1: $
	unknown_2:¬ 
	unknown_3: $
	unknown_4:¬ 
	unknown_5: 
	unknown_6:`
	unknown_7:
identity¢StatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
ā	
ķ
"__inference_signature_wrapper_1744
input_1
unknown:É¬$
	unknown_0:¬ 
	unknown_1: $
	unknown_2:¬ 
	unknown_3: $
	unknown_4:¬ 
	unknown_5: 
	unknown_6:`
	unknown_7:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_1231o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1
æ

&__inference_dense_1_layer_call_fn_2124

inputs
unknown:`
	unknown_0:
identity¢StatefulPartitionedCallŁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1408o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs


ń
&__inference_model_1_layer_call_fn_1645
input_1
unknown:É¬$
	unknown_0:¬ 
	unknown_1: $
	unknown_2:¬ 
	unknown_3: $
	unknown_4:¬ 
	unknown_5: 
	unknown_6:`
	unknown_7:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1
„
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2062

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:’’’’’’’’’ *
ksize
`*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’` :W S
/
_output_shapes
:’’’’’’’’’` 
 
_user_specified_nameinputs
ń	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_2115

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’`o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’`i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’`Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’`:O K
'
_output_shapes
:’’’’’’’’’`
 
_user_specified_nameinputs
Ć
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’`   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:’’’’’’’’’`X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:’’’’’’’’’ :W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs


G__inference_concatenate_1_layer_call_and_return_conditional_losses_2077
inputs_0
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*/
_output_shapes
:’’’’’’’’’ _
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:’’’’’’’’’ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ :Y U
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
inputs/2
¬

*__inference_embedding_1_layer_call_fn_1914

inputs
unknown:É¬
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’d¬*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:’’’’’’’’’d¬`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
”K
ų
__inference__traced_save_2266
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop#
savev2_iter_read_readvariableop	%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_embedding_1_embeddings_m_read_readvariableop0
,savev2_conv2d_1_kernel_m_read_readvariableop.
*savev2_conv2d_1_bias_m_read_readvariableop0
,savev2_conv2d_2_kernel_m_read_readvariableop.
*savev2_conv2d_2_bias_m_read_readvariableop0
,savev2_conv2d_3_kernel_m_read_readvariableop.
*savev2_conv2d_3_bias_m_read_readvariableop/
+savev2_dense_1_kernel_m_read_readvariableop-
)savev2_dense_1_bias_m_read_readvariableop7
3savev2_embedding_1_embeddings_v_read_readvariableop0
,savev2_conv2d_1_kernel_v_read_readvariableop.
*savev2_conv2d_1_bias_v_read_readvariableop0
,savev2_conv2d_2_kernel_v_read_readvariableop.
*savev2_conv2d_2_bias_v_read_readvariableop0
,savev2_conv2d_3_kernel_v_read_readvariableop.
*savev2_conv2d_3_bias_v_read_readvariableop/
+savev2_dense_1_kernel_v_read_readvariableop-
)savev2_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ä
valueŗB·%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ņ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopsavev2_iter_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_embedding_1_embeddings_m_read_readvariableop,savev2_conv2d_1_kernel_m_read_readvariableop*savev2_conv2d_1_bias_m_read_readvariableop,savev2_conv2d_2_kernel_m_read_readvariableop*savev2_conv2d_2_bias_m_read_readvariableop,savev2_conv2d_3_kernel_m_read_readvariableop*savev2_conv2d_3_bias_m_read_readvariableop+savev2_dense_1_kernel_m_read_readvariableop)savev2_dense_1_bias_m_read_readvariableop3savev2_embedding_1_embeddings_v_read_readvariableop,savev2_conv2d_1_kernel_v_read_readvariableop*savev2_conv2d_1_bias_v_read_readvariableop,savev2_conv2d_2_kernel_v_read_readvariableop*savev2_conv2d_2_bias_v_read_readvariableop,savev2_conv2d_3_kernel_v_read_readvariableop*savev2_conv2d_3_bias_v_read_readvariableop+savev2_dense_1_kernel_v_read_readvariableop)savev2_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ć
_input_shapesŃ
Ī: :É¬:¬ : :¬ : :¬ : :`:: : : : : : : : : :É¬:¬ : :¬ : :¬ : :`::É¬:¬ : :¬ : :¬ : :`:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:É¬:-)
'
_output_shapes
:¬ : 

_output_shapes
: :-)
'
_output_shapes
:¬ : 

_output_shapes
: :-)
'
_output_shapes
:¬ : 

_output_shapes
: :$ 

_output_shapes

:`: 	

_output_shapes
::
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
: :'#
!
_output_shapes
:É¬:-)
'
_output_shapes
:¬ : 

_output_shapes
: :-)
'
_output_shapes
:¬ : 

_output_shapes
: :-)
'
_output_shapes
:¬ : 

_output_shapes
: :$ 

_output_shapes

:`: 

_output_shapes
::'#
!
_output_shapes
:É¬:-)
'
_output_shapes
:¬ : 

_output_shapes
: :-)
'
_output_shapes
:¬ :  

_output_shapes
: :-!)
'
_output_shapes
:¬ : "

_output_shapes
: :$# 

_output_shapes

:`: $

_output_shapes
::%

_output_shapes
: 
śH

__inference__wrapped_model_1231
input_1>
)model_1_embedding_1_embedding_lookup_1179:É¬J
/model_1_conv2d_3_conv2d_readvariableop_resource:¬ >
0model_1_conv2d_3_biasadd_readvariableop_resource: J
/model_1_conv2d_2_conv2d_readvariableop_resource:¬ >
0model_1_conv2d_2_biasadd_readvariableop_resource: J
/model_1_conv2d_1_conv2d_readvariableop_resource:¬ >
0model_1_conv2d_1_biasadd_readvariableop_resource: @
.model_1_dense_1_matmul_readvariableop_resource:`=
/model_1_dense_1_biasadd_readvariableop_resource:
identity¢'model_1/conv2d_1/BiasAdd/ReadVariableOp¢&model_1/conv2d_1/Conv2D/ReadVariableOp¢'model_1/conv2d_2/BiasAdd/ReadVariableOp¢&model_1/conv2d_2/Conv2D/ReadVariableOp¢'model_1/conv2d_3/BiasAdd/ReadVariableOp¢&model_1/conv2d_3/Conv2D/ReadVariableOp¢&model_1/dense_1/BiasAdd/ReadVariableOp¢%model_1/dense_1/MatMul/ReadVariableOp¢$model_1/embedding_1/embedding_lookupó
$model_1/embedding_1/embedding_lookupResourceGather)model_1_embedding_1_embedding_lookup_1179input_1*
Tindices0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/1179*,
_output_shapes
:’’’’’’’’’d¬*
dtype0Ż
-model_1/embedding_1/embedding_lookup/IdentityIdentity-model_1/embedding_1/embedding_lookup:output:0*
T0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/1179*,
_output_shapes
:’’’’’’’’’d¬Ŗ
/model_1/embedding_1/embedding_lookup/Identity_1Identity6model_1/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:’’’’’’’’’d¬
model_1/reshape_1/ShapeShape8model_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:o
%model_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
model_1/reshape_1/strided_sliceStridedSlice model_1/reshape_1/Shape:output:0.model_1/reshape_1/strided_slice/stack:output:00model_1/reshape_1/strided_slice/stack_1:output:00model_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dd
!model_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬c
!model_1/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
model_1/reshape_1/Reshape/shapePack(model_1/reshape_1/strided_slice:output:0*model_1/reshape_1/Reshape/shape/1:output:0*model_1/reshape_1/Reshape/shape/2:output:0*model_1/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ć
model_1/reshape_1/ReshapeReshape8model_1/embedding_1/embedding_lookup/Identity_1:output:0(model_1/reshape_1/Reshape/shape:output:0*
T0*0
_output_shapes
:’’’’’’’’’d¬
&model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ų
model_1/conv2d_3/Conv2DConv2D"model_1/reshape_1/Reshape:output:0.model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` *
paddingVALID*
strides

'model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
model_1/conv2d_3/BiasAddBiasAdd model_1/conv2d_3/Conv2D:output:0/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’` x
model_1/conv2d_3/EluElu!model_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’` 
&model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ų
model_1/conv2d_2/Conv2DConv2D"model_1/reshape_1/Reshape:output:0.model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b *
paddingVALID*
strides

'model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
model_1/conv2d_2/BiasAddBiasAdd model_1/conv2d_2/Conv2D:output:0/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’b x
model_1/conv2d_2/EluElu!model_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’b 
&model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:¬ *
dtype0Ų
model_1/conv2d_1/Conv2DConv2D"model_1/reshape_1/Reshape:output:0.model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c *
paddingVALID*
strides

'model_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
model_1/conv2d_1/BiasAddBiasAdd model_1/conv2d_1/Conv2D:output:0/model_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’c x
model_1/conv2d_1/EluElu!model_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’c »
model_1/max_pooling2d_1/MaxPoolMaxPool"model_1/conv2d_1/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
c*
paddingVALID*
strides
»
model_1/max_pooling2d_2/MaxPoolMaxPool"model_1/conv2d_2/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
b*
paddingVALID*
strides
»
model_1/max_pooling2d_3/MaxPoolMaxPool"model_1/conv2d_3/Elu:activations:0*/
_output_shapes
:’’’’’’’’’ *
ksize
`*
paddingVALID*
strides
c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
model_1/concatenate_1/concatConcatV2(model_1/max_pooling2d_1/MaxPool:output:0(model_1/max_pooling2d_2/MaxPool:output:0(model_1/max_pooling2d_3/MaxPool:output:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*/
_output_shapes
:’’’’’’’’’ h
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’`   
model_1/flatten_1/ReshapeReshape%model_1/concatenate_1/concat:output:0 model_1/flatten_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’`|
model_1/dropout_1/IdentityIdentity"model_1/flatten_1/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0¦
model_1/dense_1/MatMulMatMul#model_1/dropout_1/Identity:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’v
model_1/dense_1/SoftmaxSoftmax model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’p
IdentityIdentity!model_1/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’·
NoOpNoOp(^model_1/conv2d_1/BiasAdd/ReadVariableOp'^model_1/conv2d_1/Conv2D/ReadVariableOp(^model_1/conv2d_2/BiasAdd/ReadVariableOp'^model_1/conv2d_2/Conv2D/ReadVariableOp(^model_1/conv2d_3/BiasAdd/ReadVariableOp'^model_1/conv2d_3/Conv2D/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp%^model_1/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2R
'model_1/conv2d_1/BiasAdd/ReadVariableOp'model_1/conv2d_1/BiasAdd/ReadVariableOp2P
&model_1/conv2d_1/Conv2D/ReadVariableOp&model_1/conv2d_1/Conv2D/ReadVariableOp2R
'model_1/conv2d_2/BiasAdd/ReadVariableOp'model_1/conv2d_2/BiasAdd/ReadVariableOp2P
&model_1/conv2d_2/Conv2D/ReadVariableOp&model_1/conv2d_2/Conv2D/ReadVariableOp2R
'model_1/conv2d_3/BiasAdd/ReadVariableOp'model_1/conv2d_3/BiasAdd/ReadVariableOp2P
&model_1/conv2d_3/Conv2D/ReadVariableOp&model_1/conv2d_3/Conv2D/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2L
$model_1/embedding_1/embedding_lookup$model_1/embedding_1/embedding_lookup:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1
š/
É
A__inference_model_1_layer_call_and_return_conditional_losses_1415

inputs%
embedding_1_1284:É¬(
conv2d_3_1315:¬ 
conv2d_3_1317: (
conv2d_2_1332:¬ 
conv2d_2_1334: (
conv2d_1_1349:¬ 
conv2d_1_1351: 
dense_1_1409:`
dense_1_1411:
identity¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallź
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_1284*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’d¬*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283ź
reshape_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’d¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_3_1315conv2d_3_1317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’` *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_2_1332conv2d_2_1334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_1_1349conv2d_1_1351*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’c *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348ņ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358ņ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364ņ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370Ć
concatenate_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380Ū
flatten_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388×
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1395
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_1409dense_1_1411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1408w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’÷
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
ģ

'__inference_conv2d_1_layer_call_fn_1951

inputs"
unknown:¬ 
	unknown_0: 
identity¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’c *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’c `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’d¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’d¬
 
_user_specified_nameinputs
ó/
Ź
A__inference_model_1_layer_call_and_return_conditional_losses_1679
input_1%
embedding_1_1648:É¬(
conv2d_3_1652:¬ 
conv2d_3_1654: (
conv2d_2_1657:¬ 
conv2d_2_1659: (
conv2d_1_1662:¬ 
conv2d_1_1664: 
dense_1_1673:`
dense_1_1675:
identity¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallė
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_1648*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’d¬*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1283ź
reshape_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’d¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_1301
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_3_1652conv2d_3_1654*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’` *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_1314
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_2_1657conv2d_2_1659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1331
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_1_1662conv2d_1_1664*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’c *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1348ņ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1358ņ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1364ņ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1370Ć
concatenate_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0(max_pooling2d_2/PartitionedCall:output:0(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_1380Ū
flatten_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1388×
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1395
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_1673dense_1_1675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1408w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’÷
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’d: : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’d
!
_user_specified_name	input_1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ŗ
serving_default
;
input_10
serving_default_input_1:0’’’’’’’’’d;
dense_10
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:ÆŅ

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
°__call__
+±&call_and_return_all_conditional_losses
²_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
·

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
³__call__
+“&call_and_return_all_conditional_losses"
_tf_keras_layer
§
	variables
trainable_variables
regularization_losses
	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
·__call__
+ø&call_and_return_all_conditional_losses"
_tf_keras_layer
½

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
¹__call__
+ŗ&call_and_return_all_conditional_losses"
_tf_keras_layer
½

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layer
§
/	variables
0trainable_variables
1regularization_losses
2	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"
_tf_keras_layer
§
3	variables
4trainable_variables
5regularization_losses
6	keras_api
æ__call__
+Ą&call_and_return_all_conditional_losses"
_tf_keras_layer
§
7	variables
8trainable_variables
9regularization_losses
:	keras_api
Į__call__
+Ā&call_and_return_all_conditional_losses"
_tf_keras_layer
§
;	variables
<trainable_variables
=regularization_losses
>	keras_api
Ć__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
§
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
Å__call__
+Ę&call_and_return_all_conditional_losses"
_tf_keras_layer
§
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
Ē__call__
+Č&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
É__call__
+Ź&call_and_return_all_conditional_losses"
_tf_keras_layer

Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemmm #m”$m¢)m£*m¤Gm„Hm¦v§vØv©#vŖ$v«)v¬*v­Gv®HvÆ"
	optimizer
_
0
1
2
#3
$4
)5
*6
G7
H8"
trackable_list_wrapper
_
0
1
2
#3
$4
)5
*6
G7
H8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ī
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
°__call__
²_default_save_signature
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
-
Ėserving_default"
signature_map
+:)É¬2embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
³__call__
+“&call_and_return_all_conditional_losses
'“"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
*:(¬ 2conv2d_1/kernel
: 2conv2d_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
·__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
*:(¬ 2conv2d_2/kernel
: 2conv2d_2/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
¹__call__
+ŗ&call_and_return_all_conditional_losses
'ŗ"call_and_return_conditional_losses"
_generic_user_object
*:(¬ 2conv2d_3/kernel
: 2conv2d_3/bias
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
°
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
+	variables
,trainable_variables
-regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
/	variables
0trainable_variables
1regularization_losses
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
3	variables
4trainable_variables
5regularization_losses
æ__call__
+Ą&call_and_return_all_conditional_losses
'Ą"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
7	variables
8trainable_variables
9regularization_losses
Į__call__
+Ā&call_and_return_all_conditional_losses
'Ā"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
“
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
Ć__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
Å__call__
+Ę&call_and_return_all_conditional_losses
'Ę"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
Ē__call__
+Č&call_and_return_all_conditional_losses
'Č"call_and_return_conditional_losses"
_generic_user_object
 :`2dense_1/kernel
:2dense_1/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
É__call__
+Ź&call_and_return_all_conditional_losses
'Ź"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
0
1"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
+:)É¬2embedding_1/embeddings/m
*:(¬ 2conv2d_1/kernel/m
: 2conv2d_1/bias/m
*:(¬ 2conv2d_2/kernel/m
: 2conv2d_2/bias/m
*:(¬ 2conv2d_3/kernel/m
: 2conv2d_3/bias/m
 :`2dense_1/kernel/m
:2dense_1/bias/m
+:)É¬2embedding_1/embeddings/v
*:(¬ 2conv2d_1/kernel/v
: 2conv2d_1/bias/v
*:(¬ 2conv2d_2/kernel/v
: 2conv2d_2/bias/v
*:(¬ 2conv2d_3/kernel/v
: 2conv2d_3/bias/v
 :`2dense_1/kernel/v
:2dense_1/bias/v
ę2ć
&__inference_model_1_layer_call_fn_1436
&__inference_model_1_layer_call_fn_1767
&__inference_model_1_layer_call_fn_1790
&__inference_model_1_layer_call_fn_1645Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ņ2Ļ
A__inference_model_1_layer_call_and_return_conditional_losses_1845
A__inference_model_1_layer_call_and_return_conditional_losses_1907
A__inference_model_1_layer_call_and_return_conditional_losses_1679
A__inference_model_1_layer_call_and_return_conditional_losses_1713Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ŹBĒ
__inference__wrapped_model_1231input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ō2Ń
*__inference_embedding_1_layer_call_fn_1914¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ļ2ģ
E__inference_embedding_1_layer_call_and_return_conditional_losses_1923¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ņ2Ļ
(__inference_reshape_1_layer_call_fn_1928¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķ2ź
C__inference_reshape_1_layer_call_and_return_conditional_losses_1942¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_conv2d_1_layer_call_fn_1951¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1962¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_conv2d_2_layer_call_fn_1971¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1982¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_conv2d_3_layer_call_fn_1991¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2002¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
.__inference_max_pooling2d_1_layer_call_fn_2007
.__inference_max_pooling2d_1_layer_call_fn_2012¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
¾2»
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2017
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2022¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
.__inference_max_pooling2d_2_layer_call_fn_2027
.__inference_max_pooling2d_2_layer_call_fn_2032¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
¾2»
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2037
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2042¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
.__inference_max_pooling2d_3_layer_call_fn_2047
.__inference_max_pooling2d_3_layer_call_fn_2052¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
¾2»
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2057
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2062¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ö2Ó
,__inference_concatenate_1_layer_call_fn_2069¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ń2ī
G__inference_concatenate_1_layer_call_and_return_conditional_losses_2077¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ņ2Ļ
(__inference_flatten_1_layer_call_fn_2082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķ2ź
C__inference_flatten_1_layer_call_and_return_conditional_losses_2088¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
(__inference_dropout_1_layer_call_fn_2093
(__inference_dropout_1_layer_call_fn_2098“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ä2Į
C__inference_dropout_1_layer_call_and_return_conditional_losses_2103
C__inference_dropout_1_layer_call_and_return_conditional_losses_2115“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Š2Ķ
&__inference_dense_1_layer_call_fn_2124¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ė2č
A__inference_dense_1_layer_call_and_return_conditional_losses_2135¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ÉBĘ
"__inference_signature_wrapper_1744input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
__inference__wrapped_model_1231p	)*#$GH0¢-
&¢#
!
input_1’’’’’’’’’d
Ŗ "1Ŗ.
,
dense_1!
dense_1’’’’’’’’’
G__inference_concatenate_1_layer_call_and_return_conditional_losses_2077Ķ¢
¢

*'
inputs/0’’’’’’’’’ 
*'
inputs/1’’’’’’’’’ 
*'
inputs/2’’’’’’’’’ 
Ŗ "-¢*
# 
0’’’’’’’’’ 
 ń
,__inference_concatenate_1_layer_call_fn_2069Ą¢
¢

*'
inputs/0’’’’’’’’’ 
*'
inputs/1’’’’’’’’’ 
*'
inputs/2’’’’’’’’’ 
Ŗ " ’’’’’’’’’ ³
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1962m8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ "-¢*
# 
0’’’’’’’’’c 
 
'__inference_conv2d_1_layer_call_fn_1951`8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ " ’’’’’’’’’c ³
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1982m#$8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ "-¢*
# 
0’’’’’’’’’b 
 
'__inference_conv2d_2_layer_call_fn_1971`#$8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ " ’’’’’’’’’b ³
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2002m)*8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ "-¢*
# 
0’’’’’’’’’` 
 
'__inference_conv2d_3_layer_call_fn_1991`)*8¢5
.¢+
)&
inputs’’’’’’’’’d¬
Ŗ " ’’’’’’’’’` ”
A__inference_dense_1_layer_call_and_return_conditional_losses_2135\GH/¢,
%¢"
 
inputs’’’’’’’’’`
Ŗ "%¢"

0’’’’’’’’’
 y
&__inference_dense_1_layer_call_fn_2124OGH/¢,
%¢"
 
inputs’’’’’’’’’`
Ŗ "’’’’’’’’’£
C__inference_dropout_1_layer_call_and_return_conditional_losses_2103\3¢0
)¢&
 
inputs’’’’’’’’’`
p 
Ŗ "%¢"

0’’’’’’’’’`
 £
C__inference_dropout_1_layer_call_and_return_conditional_losses_2115\3¢0
)¢&
 
inputs’’’’’’’’’`
p
Ŗ "%¢"

0’’’’’’’’’`
 {
(__inference_dropout_1_layer_call_fn_2093O3¢0
)¢&
 
inputs’’’’’’’’’`
p 
Ŗ "’’’’’’’’’`{
(__inference_dropout_1_layer_call_fn_2098O3¢0
)¢&
 
inputs’’’’’’’’’`
p
Ŗ "’’’’’’’’’`©
E__inference_embedding_1_layer_call_and_return_conditional_losses_1923`/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "*¢'
 
0’’’’’’’’’d¬
 
*__inference_embedding_1_layer_call_fn_1914S/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "’’’’’’’’’d¬§
C__inference_flatten_1_layer_call_and_return_conditional_losses_2088`7¢4
-¢*
(%
inputs’’’’’’’’’ 
Ŗ "%¢"

0’’’’’’’’’`
 
(__inference_flatten_1_layer_call_fn_2082S7¢4
-¢*
(%
inputs’’’’’’’’’ 
Ŗ "’’’’’’’’’`ģ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2017R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "H¢E
>;
04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 µ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2022h7¢4
-¢*
(%
inputs’’’’’’’’’c 
Ŗ "-¢*
# 
0’’’’’’’’’ 
 Ä
.__inference_max_pooling2d_1_layer_call_fn_2007R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ ";84’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
.__inference_max_pooling2d_1_layer_call_fn_2012[7¢4
-¢*
(%
inputs’’’’’’’’’c 
Ŗ " ’’’’’’’’’ ģ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2037R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "H¢E
>;
04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 µ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2042h7¢4
-¢*
(%
inputs’’’’’’’’’b 
Ŗ "-¢*
# 
0’’’’’’’’’ 
 Ä
.__inference_max_pooling2d_2_layer_call_fn_2027R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ ";84’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
.__inference_max_pooling2d_2_layer_call_fn_2032[7¢4
-¢*
(%
inputs’’’’’’’’’b 
Ŗ " ’’’’’’’’’ ģ
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2057R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "H¢E
>;
04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 µ
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2062h7¢4
-¢*
(%
inputs’’’’’’’’’` 
Ŗ "-¢*
# 
0’’’’’’’’’ 
 Ä
.__inference_max_pooling2d_3_layer_call_fn_2047R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ ";84’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
.__inference_max_pooling2d_3_layer_call_fn_2052[7¢4
-¢*
(%
inputs’’’’’’’’’` 
Ŗ " ’’’’’’’’’ ±
A__inference_model_1_layer_call_and_return_conditional_losses_1679l	)*#$GH8¢5
.¢+
!
input_1’’’’’’’’’d
p 

 
Ŗ "%¢"

0’’’’’’’’’
 ±
A__inference_model_1_layer_call_and_return_conditional_losses_1713l	)*#$GH8¢5
.¢+
!
input_1’’’’’’’’’d
p

 
Ŗ "%¢"

0’’’’’’’’’
 °
A__inference_model_1_layer_call_and_return_conditional_losses_1845k	)*#$GH7¢4
-¢*
 
inputs’’’’’’’’’d
p 

 
Ŗ "%¢"

0’’’’’’’’’
 °
A__inference_model_1_layer_call_and_return_conditional_losses_1907k	)*#$GH7¢4
-¢*
 
inputs’’’’’’’’’d
p

 
Ŗ "%¢"

0’’’’’’’’’
 
&__inference_model_1_layer_call_fn_1436_	)*#$GH8¢5
.¢+
!
input_1’’’’’’’’’d
p 

 
Ŗ "’’’’’’’’’
&__inference_model_1_layer_call_fn_1645_	)*#$GH8¢5
.¢+
!
input_1’’’’’’’’’d
p

 
Ŗ "’’’’’’’’’
&__inference_model_1_layer_call_fn_1767^	)*#$GH7¢4
-¢*
 
inputs’’’’’’’’’d
p 

 
Ŗ "’’’’’’’’’
&__inference_model_1_layer_call_fn_1790^	)*#$GH7¢4
-¢*
 
inputs’’’’’’’’’d
p

 
Ŗ "’’’’’’’’’­
C__inference_reshape_1_layer_call_and_return_conditional_losses_1942f4¢1
*¢'
%"
inputs’’’’’’’’’d¬
Ŗ ".¢+
$!
0’’’’’’’’’d¬
 
(__inference_reshape_1_layer_call_fn_1928Y4¢1
*¢'
%"
inputs’’’’’’’’’d¬
Ŗ "!’’’’’’’’’d¬”
"__inference_signature_wrapper_1744{	)*#$GH;¢8
¢ 
1Ŗ.
,
input_1!
input_1’’’’’’’’’d"1Ŗ.
,
dense_1!
dense_1’’’’’’’’’