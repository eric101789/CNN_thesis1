Ą)
Żţ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.11.02v2.11.0-rc2-15-g6290819256d8Ď%
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
 
$Adam/v/module_wrapper_8/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/v/module_wrapper_8/dense_1/bias

8Adam/v/module_wrapper_8/dense_1/bias/Read/ReadVariableOpReadVariableOp$Adam/v/module_wrapper_8/dense_1/bias*
_output_shapes
:*
dtype0
 
$Adam/m/module_wrapper_8/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/m/module_wrapper_8/dense_1/bias

8Adam/m/module_wrapper_8/dense_1/bias/Read/ReadVariableOpReadVariableOp$Adam/m/module_wrapper_8/dense_1/bias*
_output_shapes
:*
dtype0
Š
&Adam/v/module_wrapper_8/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*7
shared_name(&Adam/v/module_wrapper_8/dense_1/kernel
˘
:Adam/v/module_wrapper_8/dense_1/kernel/Read/ReadVariableOpReadVariableOp&Adam/v/module_wrapper_8/dense_1/kernel*
_output_shapes
:	*
dtype0
Š
&Adam/m/module_wrapper_8/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*7
shared_name(&Adam/m/module_wrapper_8/dense_1/kernel
˘
:Adam/m/module_wrapper_8/dense_1/kernel/Read/ReadVariableOpReadVariableOp&Adam/m/module_wrapper_8/dense_1/kernel*
_output_shapes
:	*
dtype0

"Adam/v/module_wrapper_7/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/module_wrapper_7/dense/bias

6Adam/v/module_wrapper_7/dense/bias/Read/ReadVariableOpReadVariableOp"Adam/v/module_wrapper_7/dense/bias*
_output_shapes	
:*
dtype0

"Adam/m/module_wrapper_7/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/module_wrapper_7/dense/bias

6Adam/m/module_wrapper_7/dense/bias/Read/ReadVariableOpReadVariableOp"Adam/m/module_wrapper_7/dense/bias*
_output_shapes	
:*
dtype0
Ś
$Adam/v/module_wrapper_7/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/v/module_wrapper_7/dense/kernel

8Adam/v/module_wrapper_7/dense/kernel/Read/ReadVariableOpReadVariableOp$Adam/v/module_wrapper_7/dense/kernel* 
_output_shapes
:
*
dtype0
Ś
$Adam/m/module_wrapper_7/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/m/module_wrapper_7/dense/kernel

8Adam/m/module_wrapper_7/dense/kernel/Read/ReadVariableOpReadVariableOp$Adam/m/module_wrapper_7/dense/kernel* 
_output_shapes
:
*
dtype0
Ż
+Adam/v/module_wrapper_6/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/v/module_wrapper_6/lstm/lstm_cell/bias
¨
?Adam/v/module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOp+Adam/v/module_wrapper_6/lstm/lstm_cell/bias*
_output_shapes	
:*
dtype0
Ż
+Adam/m/module_wrapper_6/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/m/module_wrapper_6/lstm/lstm_cell/bias
¨
?Adam/m/module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOp+Adam/m/module_wrapper_6/lstm/lstm_cell/bias*
_output_shapes	
:*
dtype0
Ě
7Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*H
shared_name97Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel
Ĺ
KAdam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp7Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ě
7Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*H
shared_name97Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel
Ĺ
KAdam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp7Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
¸
-Adam/v/module_wrapper_6/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
1*>
shared_name/-Adam/v/module_wrapper_6/lstm/lstm_cell/kernel
ą
AAdam/v/module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp-Adam/v/module_wrapper_6/lstm/lstm_cell/kernel* 
_output_shapes
:
1*
dtype0
¸
-Adam/m/module_wrapper_6/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
1*>
shared_name/-Adam/m/module_wrapper_6/lstm/lstm_cell/kernel
ą
AAdam/m/module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp-Adam/m/module_wrapper_6/lstm/lstm_cell/kernel* 
_output_shapes
:
1*
dtype0
˘
%Adam/v/module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/v/module_wrapper_2/conv2d_1/bias

9Adam/v/module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOp%Adam/v/module_wrapper_2/conv2d_1/bias*
_output_shapes
: *
dtype0
˘
%Adam/m/module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/m/module_wrapper_2/conv2d_1/bias

9Adam/m/module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOp%Adam/m/module_wrapper_2/conv2d_1/bias*
_output_shapes
: *
dtype0
˛
'Adam/v/module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'Adam/v/module_wrapper_2/conv2d_1/kernel
Ť
;Adam/v/module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp'Adam/v/module_wrapper_2/conv2d_1/kernel*&
_output_shapes
:  *
dtype0
˛
'Adam/m/module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'Adam/m/module_wrapper_2/conv2d_1/kernel
Ť
;Adam/m/module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp'Adam/m/module_wrapper_2/conv2d_1/kernel*&
_output_shapes
:  *
dtype0

!Adam/v/module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/module_wrapper/conv2d/bias

5Adam/v/module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOp!Adam/v/module_wrapper/conv2d/bias*
_output_shapes
: *
dtype0

!Adam/m/module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/module_wrapper/conv2d/bias

5Adam/m/module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOp!Adam/m/module_wrapper/conv2d/bias*
_output_shapes
: *
dtype0
Ş
#Adam/v/module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/module_wrapper/conv2d/kernel
Ł
7Adam/v/module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOp#Adam/v/module_wrapper/conv2d/kernel*&
_output_shapes
: *
dtype0
Ş
#Adam/m/module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/module_wrapper/conv2d/kernel
Ł
7Adam/m/module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOp#Adam/m/module_wrapper/conv2d/kernel*&
_output_shapes
: *
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
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

module_wrapper_8/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namemodule_wrapper_8/dense_1/bias

1module_wrapper_8/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_8/dense_1/bias*
_output_shapes
:*
dtype0

module_wrapper_8/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*0
shared_name!module_wrapper_8/dense_1/kernel

3module_wrapper_8/dense_1/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_8/dense_1/kernel*
_output_shapes
:	*
dtype0

module_wrapper_7/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namemodule_wrapper_7/dense/bias

/module_wrapper_7/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_7/dense/bias*
_output_shapes	
:*
dtype0

module_wrapper_7/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namemodule_wrapper_7/dense/kernel

1module_wrapper_7/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_7/dense/kernel* 
_output_shapes
:
*
dtype0
Ą
$module_wrapper_6/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$module_wrapper_6/lstm/lstm_cell/bias

8module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOp$module_wrapper_6/lstm/lstm_cell/bias*
_output_shapes	
:*
dtype0
ž
0module_wrapper_6/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20module_wrapper_6/lstm/lstm_cell/recurrent_kernel
ˇ
Dmodule_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp0module_wrapper_6/lstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ş
&module_wrapper_6/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
1*7
shared_name(&module_wrapper_6/lstm/lstm_cell/kernel
Ł
:module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp&module_wrapper_6/lstm/lstm_cell/kernel* 
_output_shapes
:
1*
dtype0

module_wrapper_2/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name module_wrapper_2/conv2d_1/bias

2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/conv2d_1/bias*
_output_shapes
: *
dtype0
¤
 module_wrapper_2/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *1
shared_name" module_wrapper_2/conv2d_1/kernel

4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_2/conv2d_1/kernel*&
_output_shapes
:  *
dtype0

module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namemodule_wrapper/conv2d/bias

.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
: *
dtype0

module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namemodule_wrapper/conv2d/kernel

0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
: *
dtype0

$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙@@
Î
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/bias&module_wrapper_6/lstm/lstm_cell/kernel$module_wrapper_6/lstm/lstm_cell/bias0module_wrapper_6/lstm/lstm_cell/recurrent_kernelmodule_wrapper_7/dense/kernelmodule_wrapper_7/dense/biasmodule_wrapper_8/dense_1/kernelmodule_wrapper_8/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1034694

NoOpNoOp
ż
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ů
valueîBę Bâ
Ă
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_module*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _module* 

!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_module*

(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._module* 

/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_module* 

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_module* 

=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_module*

D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_module*

K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Q_module*
R
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10*
R
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10*
* 
°
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
btrace_0
ctrace_1
dtrace_2
etrace_3* 
6
ftrace_0
gtrace_1
htrace_2
itrace_3* 
* 

j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla*

qserving_default* 

R0
S1*

R0
S1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 
§
{trainable_variables
|	variables
}regularization_losses
~	keras_api
*&call_and_return_all_conditional_losses
__call__

Rkernel
Sbias*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 

trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__* 

T0
U1*

T0
U1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
Ź
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__

Tkernel
Ubias*
* 
* 
* 

non_trainable_variables
 layers
Ąmetrics
 ˘layer_regularization_losses
Łlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

¤trace_0
Ľtrace_1* 

Śtrace_0
§trace_1* 

¨trainable_variables
Š	variables
Şregularization_losses
Ť	keras_api
+Ź&call_and_return_all_conditional_losses
­__call__* 
* 
* 
* 

Žnon_trainable_variables
Żlayers
°metrics
 ąlayer_regularization_losses
˛layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

łtrace_0
´trace_1* 

ľtrace_0
śtrace_1* 

ˇtrainable_variables
¸	variables
šregularization_losses
ş	keras_api
+ť&call_and_return_all_conditional_losses
ź__call__* 
* 
* 
* 

˝non_trainable_variables
žlayers
żmetrics
 Ŕlayer_regularization_losses
Álayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

Âtrace_0
Ătrace_1* 

Ätrace_0
Ĺtrace_1* 

Ćtrainable_variables
Ç	variables
Čregularization_losses
É	keras_api
+Ę&call_and_return_all_conditional_losses
Ë__call__* 

V0
W1
X2*

V0
W1
X2*
* 

Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

Ńtrace_0
Ňtrace_1* 

Ótrace_0
Ôtrace_1* 
˛
Ő	variables
Ötrainable_variables
×regularization_losses
Ř	keras_api
+Ů&call_and_return_all_conditional_losses
Ú__call__
	Űcell
Ü
state_spec*

Y0
Z1*

Y0
Z1*
* 

Ýnon_trainable_variables
Ţlayers
ßmetrics
 ŕlayer_regularization_losses
álayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

âtrace_0
ătrace_1* 

ätrace_0
ĺtrace_1* 
Ź
ćtrainable_variables
ç	variables
čregularization_losses
é	keras_api
+ę&call_and_return_all_conditional_losses
ë__call__

Ykernel
Zbias*

[0
\1*

[0
\1*
* 

ěnon_trainable_variables
ílayers
îmetrics
 ďlayer_regularization_losses
đlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

ńtrace_0
ňtrace_1* 

ótrace_0
ôtrace_1* 
Ź
őtrainable_variables
ö	variables
÷regularization_losses
ř	keras_api
+ů&call_and_return_all_conditional_losses
ú__call__

[kernel
\bias*
\V
VARIABLE_VALUEmodule_wrapper/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmodule_wrapper/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE module_wrapper_2/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEmodule_wrapper_2/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&module_wrapper_6/lstm/lstm_cell/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0module_wrapper_6/lstm/lstm_cell/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$module_wrapper_6/lstm/lstm_cell/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmodule_wrapper_7/dense/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEmodule_wrapper_7/dense/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmodule_wrapper_8/dense_1/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEmodule_wrapper_8/dense_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

ű0
ü1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Č
k0
ý1
ţ2
˙3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
ý0
˙1
2
3
4
5
6
7
8
9
10*
]
ţ0
1
2
3
4
5
6
7
8
9
10*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

R0
S1*

R0
S1*
* 

layers
{trainable_variables
 layer_regularization_losses
|	variables
metrics
non_trainable_variables
layer_metrics
}regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

layers
trainable_variables
 layer_regularization_losses
	variables
metrics
non_trainable_variables
layer_metrics
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

T0
U1*

T0
U1*
* 

layers
trainable_variables
  layer_regularization_losses
	variables
Ąmetrics
˘non_trainable_variables
Łlayer_metrics
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

¤layers
¨trainable_variables
 Ľlayer_regularization_losses
Š	variables
Śmetrics
§non_trainable_variables
¨layer_metrics
Şregularization_losses
­__call__
+Ź&call_and_return_all_conditional_losses
'Ź"call_and_return_conditional_losses* 

Štrace_0* 

Ştrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ťlayers
ˇtrainable_variables
 Źlayer_regularization_losses
¸	variables
­metrics
Žnon_trainable_variables
Żlayer_metrics
šregularization_losses
ź__call__
+ť&call_and_return_all_conditional_losses
'ť"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

°layers
Ćtrainable_variables
 ąlayer_regularization_losses
Ç	variables
˛metrics
łnon_trainable_variables
´layer_metrics
Čregularization_losses
Ë__call__
+Ę&call_and_return_all_conditional_losses
'Ę"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1
X2*

V0
W1
X2*
* 
Ť
ľlayers
 ślayer_regularization_losses
ˇstates
Ő	variables
¸metrics
šlayer_metrics
şnon_trainable_variables
Ötrainable_variables
×regularization_losses
Ú__call__
+Ů&call_and_return_all_conditional_losses
'Ů"call_and_return_conditional_losses*

ťtrace_0
źtrace_1* 

˝trace_0
žtrace_1* 
Ó
żtrainable_variables
Ŕ	variables
Áregularization_losses
Â	keras_api
+Ă&call_and_return_all_conditional_losses
Ä__call__
Ĺ
state_size

Vkernel
Wrecurrent_kernel
Xbias*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Y0
Z1*

Y0
Z1*
* 

Ćlayers
ćtrainable_variables
 Çlayer_regularization_losses
ç	variables
Čmetrics
Énon_trainable_variables
Ęlayer_metrics
čregularization_losses
ë__call__
+ę&call_and_return_all_conditional_losses
'ę"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

[0
\1*

[0
\1*
* 

Ëlayers
őtrainable_variables
 Ělayer_regularization_losses
ö	variables
Ímetrics
Înon_trainable_variables
Ďlayer_metrics
÷regularization_losses
ú__call__
+ů&call_and_return_all_conditional_losses
'ů"call_and_return_conditional_losses*
* 
* 
<
Đ	variables
Ń	keras_api

Ňtotal

Ócount*
M
Ô	variables
Ő	keras_api

Ötotal

×count
Ř
_fn_kwargs*
nh
VARIABLE_VALUE#Adam/m/module_wrapper/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/module_wrapper/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/module_wrapper/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/module_wrapper/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/m/module_wrapper_2/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/v/module_wrapper_2/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/m/module_wrapper_2/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/v/module_wrapper_2/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adam/m/module_wrapper_6/lstm/lstm_cell/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adam/v/module_wrapper_6/lstm/lstm_cell/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE7Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE7Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/m/module_wrapper_6/lstm/lstm_cell/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/v/module_wrapper_6/lstm/lstm_cell/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/m/module_wrapper_7/dense/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/v/module_wrapper_7/dense/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/module_wrapper_7/dense/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/module_wrapper_7/dense/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/m/module_wrapper_8/dense_1/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/v/module_wrapper_8/dense_1/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/m/module_wrapper_8/dense_1/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/v/module_wrapper_8/dense_1/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ű0*
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1
X2*

V0
W1
X2*
* 

Ůlayers
żtrainable_variables
 Úlayer_regularization_losses
Ŕ	variables
Űmetrics
Ünon_trainable_variables
Ýlayer_metrics
Áregularization_losses
Ä__call__
+Ă&call_and_return_all_conditional_losses
'Ă"call_and_return_conditional_losses*

Ţtrace_0
ßtrace_1* 

ŕtrace_0
átrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ň0
Ó1*

Đ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ö0
×1*

Ô	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_2/conv2d_1/bias/Read/ReadVariableOp:module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpDmodule_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp8module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOp1module_wrapper_7/dense/kernel/Read/ReadVariableOp/module_wrapper_7/dense/bias/Read/ReadVariableOp3module_wrapper_8/dense_1/kernel/Read/ReadVariableOp1module_wrapper_8/dense_1/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp7Adam/m/module_wrapper/conv2d/kernel/Read/ReadVariableOp7Adam/v/module_wrapper/conv2d/kernel/Read/ReadVariableOp5Adam/m/module_wrapper/conv2d/bias/Read/ReadVariableOp5Adam/v/module_wrapper/conv2d/bias/Read/ReadVariableOp;Adam/m/module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp;Adam/v/module_wrapper_2/conv2d_1/kernel/Read/ReadVariableOp9Adam/m/module_wrapper_2/conv2d_1/bias/Read/ReadVariableOp9Adam/v/module_wrapper_2/conv2d_1/bias/Read/ReadVariableOpAAdam/m/module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpAAdam/v/module_wrapper_6/lstm/lstm_cell/kernel/Read/ReadVariableOpKAdam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpKAdam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp?Adam/m/module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOp?Adam/v/module_wrapper_6/lstm/lstm_cell/bias/Read/ReadVariableOp8Adam/m/module_wrapper_7/dense/kernel/Read/ReadVariableOp8Adam/v/module_wrapper_7/dense/kernel/Read/ReadVariableOp6Adam/m/module_wrapper_7/dense/bias/Read/ReadVariableOp6Adam/v/module_wrapper_7/dense/bias/Read/ReadVariableOp:Adam/m/module_wrapper_8/dense_1/kernel/Read/ReadVariableOp:Adam/v/module_wrapper_8/dense_1/kernel/Read/ReadVariableOp8Adam/m/module_wrapper_8/dense_1/bias/Read/ReadVariableOp8Adam/v/module_wrapper_8/dense_1/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_1037507
ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_2/conv2d_1/kernelmodule_wrapper_2/conv2d_1/bias&module_wrapper_6/lstm/lstm_cell/kernel0module_wrapper_6/lstm/lstm_cell/recurrent_kernel$module_wrapper_6/lstm/lstm_cell/biasmodule_wrapper_7/dense/kernelmodule_wrapper_7/dense/biasmodule_wrapper_8/dense_1/kernelmodule_wrapper_8/dense_1/bias	iterationlearning_rate#Adam/m/module_wrapper/conv2d/kernel#Adam/v/module_wrapper/conv2d/kernel!Adam/m/module_wrapper/conv2d/bias!Adam/v/module_wrapper/conv2d/bias'Adam/m/module_wrapper_2/conv2d_1/kernel'Adam/v/module_wrapper_2/conv2d_1/kernel%Adam/m/module_wrapper_2/conv2d_1/bias%Adam/v/module_wrapper_2/conv2d_1/bias-Adam/m/module_wrapper_6/lstm/lstm_cell/kernel-Adam/v/module_wrapper_6/lstm/lstm_cell/kernel7Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel7Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel+Adam/m/module_wrapper_6/lstm/lstm_cell/bias+Adam/v/module_wrapper_6/lstm/lstm_cell/bias$Adam/m/module_wrapper_7/dense/kernel$Adam/v/module_wrapper_7/dense/kernel"Adam/m/module_wrapper_7/dense/bias"Adam/v/module_wrapper_7/dense/bias&Adam/m/module_wrapper_8/dense_1/kernel&Adam/v/module_wrapper_8/dense_1/kernel$Adam/m/module_wrapper_8/dense_1/bias$Adam/v/module_wrapper_8/dense_1/biastotal_1count_1totalcount*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_1037634áţ"
öÁ

3sequential_module_wrapper_6_lstm_while_body_1033449^
Zsequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_loop_counterd
`sequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_maximum_iterations6
2sequential_module_wrapper_6_lstm_while_placeholder8
4sequential_module_wrapper_6_lstm_while_placeholder_18
4sequential_module_wrapper_6_lstm_while_placeholder_28
4sequential_module_wrapper_6_lstm_while_placeholder_3]
Ysequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_strided_slice_1_0
sequential_module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0d
Psequential_module_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0:
1a
Rsequential_module_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	^
Jsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0:
3
/sequential_module_wrapper_6_lstm_while_identity5
1sequential_module_wrapper_6_lstm_while_identity_15
1sequential_module_wrapper_6_lstm_while_identity_25
1sequential_module_wrapper_6_lstm_while_identity_35
1sequential_module_wrapper_6_lstm_while_identity_45
1sequential_module_wrapper_6_lstm_while_identity_5[
Wsequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_strided_slice_1
sequential_module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensorb
Nsequential_module_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource:
1_
Psequential_module_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource:	\
Hsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource:
˘?sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp˘Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1˘Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2˘Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3˘Esequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp˘Gsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOpŠ
Xsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Í
Jsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_02sequential_module_wrapper_6_lstm_while_placeholderasequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0
@sequential/module_wrapper_6/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ř
Esequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpPsequential_module_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0š
6sequential/module_wrapper_6/lstm/while/lstm_cell/splitSplitIsequential/module_wrapper_6/lstm/while/lstm_cell/split/split_dim:output:0Msequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
7sequential/module_wrapper_6/lstm/while/lstm_cell/MatMulMatMulQsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0?sequential/module_wrapper_6/lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_1MatMulQsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0?sequential/module_wrapper_6/lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_2MatMulQsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0?sequential/module_wrapper_6/lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_3MatMulQsequential/module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0?sequential/module_wrapper_6/lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Bsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ×
Gsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpRsequential_module_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ť
8sequential/module_wrapper_6/lstm/while/lstm_cell/split_1SplitKsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/split_dim:output:0Osequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitü
8sequential/module_wrapper_6/lstm/while/lstm_cell/BiasAddBiasAddAsequential/module_wrapper_6/lstm/while/lstm_cell/MatMul:product:0Asequential/module_wrapper_6/lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
:sequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1BiasAddCsequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_1:product:0Asequential/module_wrapper_6/lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
:sequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2BiasAddCsequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_2:product:0Asequential/module_wrapper_6/lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
:sequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3BiasAddCsequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_3:product:0Asequential/module_wrapper_6/lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ě
?sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOpReadVariableOpJsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
Dsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Fsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      â
>sequential/module_wrapper_6/lstm/while/lstm_cell/strided_sliceStridedSliceGsequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp:value:0Msequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack:output:0Osequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1:output:0Osequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskő
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_4MatMul4sequential_module_wrapper_6_lstm_while_placeholder_2Gsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ř
4sequential/module_wrapper_6/lstm/while/lstm_cell/addAddV2Asequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd:output:0Csequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
6sequential/module_wrapper_6/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>}
8sequential/module_wrapper_6/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?é
4sequential/module_wrapper_6/lstm/while/lstm_cell/MulMul8sequential/module_wrapper_6/lstm/while/lstm_cell/add:z:0?sequential/module_wrapper_6/lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ď
6sequential/module_wrapper_6/lstm/while/lstm_cell/Add_1AddV28sequential/module_wrapper_6/lstm/while/lstm_cell/Mul:z:0Asequential/module_wrapper_6/lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Hsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Fsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/MinimumMinimum:sequential/module_wrapper_6/lstm/while/lstm_cell/Add_1:z:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
@sequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
>sequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_valueMaximumJsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum:z:0Isequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOpJsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
Fsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ě
@sequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1StridedSliceIsequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1:value:0Osequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask÷
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_5MatMul4sequential_module_wrapper_6_lstm_while_placeholder_2Isequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ü
6sequential/module_wrapper_6/lstm/while/lstm_cell/add_2AddV2Csequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1:output:0Csequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
8sequential/module_wrapper_6/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>}
8sequential/module_wrapper_6/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ď
6sequential/module_wrapper_6/lstm/while/lstm_cell/Mul_1Mul:sequential/module_wrapper_6/lstm/while/lstm_cell/add_2:z:0Asequential/module_wrapper_6/lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ń
6sequential/module_wrapper_6/lstm/while/lstm_cell/Add_3AddV2:sequential/module_wrapper_6/lstm/while/lstm_cell/Mul_1:z:0Asequential/module_wrapper_6/lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Jsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Hsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum:sequential/module_wrapper_6/lstm/while/lstm_cell/Add_3:z:0Ssequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Bsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
@sequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1MaximumLsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0Ksequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ě
6sequential/module_wrapper_6/lstm/while/lstm_cell/mul_2MulDsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1:z:04sequential_module_wrapper_6_lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOpJsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
Fsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ě
@sequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2StridedSliceIsequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2:value:0Osequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask÷
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_6MatMul4sequential_module_wrapper_6_lstm_while_placeholder_2Isequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ü
6sequential/module_wrapper_6/lstm/while/lstm_cell/add_4AddV2Csequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2:output:0Csequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
5sequential/module_wrapper_6/lstm/while/lstm_cell/TanhTanh:sequential/module_wrapper_6/lstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ď
6sequential/module_wrapper_6/lstm/while/lstm_cell/mul_3MulBsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value:z:09sequential/module_wrapper_6/lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
6sequential/module_wrapper_6/lstm/while/lstm_cell/add_5AddV2:sequential/module_wrapper_6/lstm/while/lstm_cell/mul_2:z:0:sequential/module_wrapper_6/lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOpJsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
Fsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ě
@sequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3StridedSliceIsequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3:value:0Osequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0Qsequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask÷
9sequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_7MatMul4sequential_module_wrapper_6_lstm_while_placeholder_2Isequential/module_wrapper_6/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ü
6sequential/module_wrapper_6/lstm/while/lstm_cell/add_6AddV2Csequential/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3:output:0Csequential/module_wrapper_6/lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
8sequential/module_wrapper_6/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>}
8sequential/module_wrapper_6/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ď
6sequential/module_wrapper_6/lstm/while/lstm_cell/Mul_4Mul:sequential/module_wrapper_6/lstm/while/lstm_cell/add_6:z:0Asequential/module_wrapper_6/lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ń
6sequential/module_wrapper_6/lstm/while/lstm_cell/Add_7AddV2:sequential/module_wrapper_6/lstm/while/lstm_cell/Mul_4:z:0Asequential/module_wrapper_6/lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Jsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Hsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum:sequential/module_wrapper_6/lstm/while/lstm_cell/Add_7:z:0Ssequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Bsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
@sequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2MaximumLsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0Ksequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ž
7sequential/module_wrapper_6/lstm/while/lstm_cell/Tanh_1Tanh:sequential/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ó
6sequential/module_wrapper_6/lstm/while/lstm_cell/mul_5MulDsequential/module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2:z:0;sequential/module_wrapper_6/lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
Ksequential/module_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4sequential_module_wrapper_6_lstm_while_placeholder_12sequential_module_wrapper_6_lstm_while_placeholder:sequential/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇn
,sequential/module_wrapper_6/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ż
*sequential/module_wrapper_6/lstm/while/addAddV22sequential_module_wrapper_6_lstm_while_placeholder5sequential/module_wrapper_6/lstm/while/add/y:output:0*
T0*
_output_shapes
: p
.sequential/module_wrapper_6/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ë
,sequential/module_wrapper_6/lstm/while/add_1AddV2Zsequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_loop_counter7sequential/module_wrapper_6/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: ź
/sequential/module_wrapper_6/lstm/while/IdentityIdentity0sequential/module_wrapper_6/lstm/while/add_1:z:0,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: î
1sequential/module_wrapper_6/lstm/while/Identity_1Identity`sequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_maximum_iterations,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: ź
1sequential/module_wrapper_6/lstm/while/Identity_2Identity.sequential/module_wrapper_6/lstm/while/add:z:0,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: é
1sequential/module_wrapper_6/lstm/while/Identity_3Identity[sequential/module_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: Ú
1sequential/module_wrapper_6/lstm/while/Identity_4Identity:sequential/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ú
1sequential/module_wrapper_6/lstm/while/Identity_5Identity:sequential/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0,^sequential/module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential/module_wrapper_6/lstm/while/NoOpNoOp@^sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOpB^sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1B^sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2B^sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3F^sequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOpH^sequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "k
/sequential_module_wrapper_6_lstm_while_identity8sequential/module_wrapper_6/lstm/while/Identity:output:0"o
1sequential_module_wrapper_6_lstm_while_identity_1:sequential/module_wrapper_6/lstm/while/Identity_1:output:0"o
1sequential_module_wrapper_6_lstm_while_identity_2:sequential/module_wrapper_6/lstm/while/Identity_2:output:0"o
1sequential_module_wrapper_6_lstm_while_identity_3:sequential/module_wrapper_6/lstm/while/Identity_3:output:0"o
1sequential_module_wrapper_6_lstm_while_identity_4:sequential/module_wrapper_6/lstm/while/Identity_4:output:0"o
1sequential_module_wrapper_6_lstm_while_identity_5:sequential/module_wrapper_6/lstm/while/Identity_5:output:0"
Hsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resourceJsequential_module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0"Ś
Psequential_module_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resourceRsequential_module_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0"˘
Nsequential_module_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resourcePsequential_module_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0"´
Wsequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_strided_slice_1Ysequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_strided_slice_1_0"Ž
sequential_module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensorsequential_module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2
?sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp?sequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp2
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_12
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_22
Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3Asequential/module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_32
Esequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOpEsequential/module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp2
Gsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOpGsequential/module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
K
Ť
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037367

inputs
states_0
states_11
split_readvariableop_resource:
1.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2˘ReadVariableOp˘ReadVariableOp_1˘ReadVariableOp_2˘ReadVariableOp_3˘split/ReadVariableOp˘split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ś
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split[
MatMulMatMulinputssplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_1MatMulinputssplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_2MatMulinputssplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_3MatMulinputssplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_4MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?V
MulMuladd:z:0Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Add_1AddV2Mul:z:0Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mul_2Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_1
Ę	
Ź
lstm_while_cond_1035682&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_1035682___redundant_placeholder0?
;lstm_while_lstm_while_cond_1035682___redundant_placeholder1?
;lstm_while_lstm_while_cond_1035682___redundant_placeholder2?
;lstm_while_lstm_while_cond_1035682___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
ň
´

lstm_while_body_1035683&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
1E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	B
.lstm_while_lstm_cell_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
1C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	@
,lstm_while_lstm_cell_readvariableop_resource:
˘#lstm/while/lstm_cell/ReadVariableOp˘%lstm/while/lstm_cell/ReadVariableOp_1˘%lstm/while/lstm_cell/ReadVariableOp_2˘%lstm/while/lstm_cell/ReadVariableOp_3˘)lstm/while/lstm_cell/split/ReadVariableOp˘+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ŕ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0ĺ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split´
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split¨
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĄ
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ż
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ż
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"ź
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
Ę	
Ź
lstm_while_cond_1033796&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_1033796___redundant_placeholder0?
;lstm_while_lstm_while_cond_1033796___redundant_placeholder1?
;lstm_while_lstm_while_cond_1033796___redundant_placeholder2?
;lstm_while_lstm_while_cond_1033796___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:

ľ
,__inference_sequential_layer_call_fn_1034593
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:
1
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:	
	unknown_9:
identity˘StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1034541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input
˝

M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1035823

args_0@
,lstm_lstm_cell_split_readvariableop_resource:
1=
.lstm_lstm_cell_split_1_readvariableop_resource:	:
&lstm_lstm_cell_readvariableop_resource:

identity˘lstm/lstm_cell/ReadVariableOp˘lstm/lstm_cell/ReadVariableOp_1˘lstm/lstm_cell/ReadVariableOp_2˘lstm/lstm_cell/ReadVariableOp_3˘#lstm/lstm_cell/split/ReadVariableOp˘%lstm/lstm_cell/split_1/ReadVariableOp˘
lstm/while@

lstm/ShapeShapeargs_0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeargs_0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ă
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ď
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ó
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ĺ
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ­
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ť

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_while_body_1035683*#
condR
lstm_while_cond_1035682*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ň
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ś
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙m
IdentityIdentitylstm/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
V
â
 __inference__traced_save_1037507
file_prefix;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableopE
Asavev2_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopO
Ksavev2_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableopC
?savev2_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableop<
8savev2_module_wrapper_7_dense_kernel_read_readvariableop:
6savev2_module_wrapper_7_dense_bias_read_readvariableop>
:savev2_module_wrapper_8_dense_1_kernel_read_readvariableop<
8savev2_module_wrapper_8_dense_1_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopB
>savev2_adam_m_module_wrapper_conv2d_kernel_read_readvariableopB
>savev2_adam_v_module_wrapper_conv2d_kernel_read_readvariableop@
<savev2_adam_m_module_wrapper_conv2d_bias_read_readvariableop@
<savev2_adam_v_module_wrapper_conv2d_bias_read_readvariableopF
Bsavev2_adam_m_module_wrapper_2_conv2d_1_kernel_read_readvariableopF
Bsavev2_adam_v_module_wrapper_2_conv2d_1_kernel_read_readvariableopD
@savev2_adam_m_module_wrapper_2_conv2d_1_bias_read_readvariableopD
@savev2_adam_v_module_wrapper_2_conv2d_1_bias_read_readvariableopL
Hsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopL
Hsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopV
Rsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableopV
Rsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableopJ
Fsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableopJ
Fsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableopC
?savev2_adam_m_module_wrapper_7_dense_kernel_read_readvariableopC
?savev2_adam_v_module_wrapper_7_dense_kernel_read_readvariableopA
=savev2_adam_m_module_wrapper_7_dense_bias_read_readvariableopA
=savev2_adam_v_module_wrapper_7_dense_bias_read_readvariableopE
Asavev2_adam_m_module_wrapper_8_dense_1_kernel_read_readvariableopE
Asavev2_adam_v_module_wrapper_8_dense_1_kernel_read_readvariableopC
?savev2_adam_m_module_wrapper_8_dense_1_bias_read_readvariableopC
?savev2_adam_v_module_wrapper_8_dense_1_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
: ń
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH˝
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ř
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_2_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_2_conv2d_1_bias_read_readvariableopAsavev2_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopKsavev2_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableop?savev2_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableop8savev2_module_wrapper_7_dense_kernel_read_readvariableop6savev2_module_wrapper_7_dense_bias_read_readvariableop:savev2_module_wrapper_8_dense_1_kernel_read_readvariableop8savev2_module_wrapper_8_dense_1_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop>savev2_adam_m_module_wrapper_conv2d_kernel_read_readvariableop>savev2_adam_v_module_wrapper_conv2d_kernel_read_readvariableop<savev2_adam_m_module_wrapper_conv2d_bias_read_readvariableop<savev2_adam_v_module_wrapper_conv2d_bias_read_readvariableopBsavev2_adam_m_module_wrapper_2_conv2d_1_kernel_read_readvariableopBsavev2_adam_v_module_wrapper_2_conv2d_1_kernel_read_readvariableop@savev2_adam_m_module_wrapper_2_conv2d_1_bias_read_readvariableop@savev2_adam_v_module_wrapper_2_conv2d_1_bias_read_readvariableopHsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopHsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_kernel_read_readvariableopRsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableopRsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_recurrent_kernel_read_readvariableopFsavev2_adam_m_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableopFsavev2_adam_v_module_wrapper_6_lstm_lstm_cell_bias_read_readvariableop?savev2_adam_m_module_wrapper_7_dense_kernel_read_readvariableop?savev2_adam_v_module_wrapper_7_dense_kernel_read_readvariableop=savev2_adam_m_module_wrapper_7_dense_bias_read_readvariableop=savev2_adam_v_module_wrapper_7_dense_bias_read_readvariableopAsavev2_adam_m_module_wrapper_8_dense_1_kernel_read_readvariableopAsavev2_adam_v_module_wrapper_8_dense_1_kernel_read_readvariableop?savev2_adam_m_module_wrapper_8_dense_1_bias_read_readvariableop?savev2_adam_v_module_wrapper_8_dense_1_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *6
dtypes,
*2(	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*ţ
_input_shapesě
é: : : :  : :
1:
::
::	:: : : : : : :  :  : : :
1:
1:
:
:::
:
:::	:	::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
1:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!	

_output_shapes	
::%
!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: :&"
 
_output_shapes
:
1:&"
 
_output_shapes
:
1:&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::% !

_output_shapes
:	:%!!

_output_shapes
:	: "

_output_shapes
:: #

_output_shapes
::$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: 
Ű

M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1033973

args_09
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:
identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
Š
 
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035371

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity˘conv2d/BiasAdd/ReadVariableOp˘conv2d/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¨
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> p
IdentityIdentityconv2d/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0
Ĺ
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1033632

args_0
identity
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
ü
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1033679

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ż
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:y
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1e
IdentityIdentityreshape/Reshape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
ć+
 
G__inference_sequential_layer_call_and_return_conditional_losses_1033980

inputs0
module_wrapper_1033622: $
module_wrapper_1033624: 2
module_wrapper_2_1033646:  &
module_wrapper_2_1033648: ,
module_wrapper_6_1033938:
1'
module_wrapper_6_1033940:	,
module_wrapper_6_1033942:
,
module_wrapper_7_1033957:
'
module_wrapper_7_1033959:	+
module_wrapper_8_1033974:	&
module_wrapper_8_1033976:
identity˘&module_wrapper/StatefulPartitionedCall˘(module_wrapper_2/StatefulPartitionedCall˘(module_wrapper_6/StatefulPartitionedCall˘(module_wrapper_7/StatefulPartitionedCall˘(module_wrapper_8/StatefulPartitionedCall
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_1033622module_wrapper_1033624*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1033621ú
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1033632ž
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1033646module_wrapper_2_1033648*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1033645ü
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1033656í
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1033664ń
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1033679Ó
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_1033938module_wrapper_6_1033940module_wrapper_6_1033942*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1033937ż
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0module_wrapper_7_1033957module_wrapper_7_1033959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1033956ž
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_1033974module_wrapper_8_1033976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1033973
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ž
Č
while_cond_1036463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1036463___redundant_placeholder05
1while_while_cond_1036463___redundant_placeholder15
1while_while_cond_1036463___redundant_placeholder25
1while_while_cond_1036463___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:

ˇ
&__inference_lstm_layer_call_fn_1036643
inputs_0
unknown:
1
	unknown_0:	
	unknown_1:

identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_1036532p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
"
_user_specified_name
inputs_0
ś
K
/__inference_max_pooling2d_layer_call_fn_1035415

inputs
identityŘ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1035409
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
§

(module_wrapper_6_lstm_while_cond_1034890H
Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counterN
Jmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations+
'module_wrapper_6_lstm_while_placeholder-
)module_wrapper_6_lstm_while_placeholder_1-
)module_wrapper_6_lstm_while_placeholder_2-
)module_wrapper_6_lstm_while_placeholder_3J
Fmodule_wrapper_6_lstm_while_less_module_wrapper_6_lstm_strided_slice_1a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1034890___redundant_placeholder0a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1034890___redundant_placeholder1a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1034890___redundant_placeholder2a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1034890___redundant_placeholder3(
$module_wrapper_6_lstm_while_identity
ş
 module_wrapper_6/lstm/while/LessLess'module_wrapper_6_lstm_while_placeholderFmodule_wrapper_6_lstm_while_less_module_wrapper_6_lstm_strided_slice_1*
T0*
_output_shapes
: w
$module_wrapper_6/lstm/while/IdentityIdentity$module_wrapper_6/lstm/while/Less:z:0*
T0
*
_output_shapes
: "U
$module_wrapper_6_lstm_while_identity-module_wrapper_6/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
×
Ş
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1033645

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity˘conv2d_1/BiasAdd/ReadVariableOp˘conv2d_1/Conv2D/ReadVariableOp
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ź
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
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
:˙˙˙˙˙˙˙˙˙ j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
IdentityIdentityconv2d_1/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ď
i
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1034382

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ň
´

lstm_while_body_1033797&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
1E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	B
.lstm_while_lstm_cell_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
1C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	@
,lstm_while_lstm_cell_readvariableop_resource:
˘#lstm/while/lstm_cell/ReadVariableOp˘%lstm/while/lstm_cell/ReadVariableOp_1˘%lstm/while/lstm_cell/ReadVariableOp_2˘%lstm/while/lstm_cell/ReadVariableOp_3˘)lstm/while/lstm_cell/split/ReadVariableOp˘+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ŕ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0ĺ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split´
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split¨
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĄ
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ż
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ż
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"ź
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
É
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035470

args_0
identity
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
p
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0

ľ
,__inference_sequential_layer_call_fn_1034005
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:
1
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:	
	unknown_9:
identity˘StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1033980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input
Ď
N
2__inference_module_wrapper_3_layer_call_fn_1035465

args_0
identityŔ
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1034398h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
É
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035475

args_0
identity
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
p
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
×
 
2__inference_module_wrapper_8_layer_call_fn_1036590

args_0
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1033973o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
ď
i
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1033664

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ď
i
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035509

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
Ď
N
2__inference_module_wrapper_1_layer_call_fn_1035393

args_0
identityŔ
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1034444h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
˝

M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1034335

args_0@
,lstm_lstm_cell_split_readvariableop_resource:
1=
.lstm_lstm_cell_split_1_readvariableop_resource:	:
&lstm_lstm_cell_readvariableop_resource:

identity˘lstm/lstm_cell/ReadVariableOp˘lstm/lstm_cell/ReadVariableOp_1˘lstm/lstm_cell/ReadVariableOp_2˘lstm/lstm_cell/ReadVariableOp_3˘#lstm/lstm_cell/split/ReadVariableOp˘%lstm/lstm_cell/split_1/ReadVariableOp˘
lstm/while@

lstm/ShapeShapeargs_0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeargs_0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ă
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ď
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ó
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ĺ
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ­
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ť

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_while_body_1034195*#
condR
lstm_while_cond_1034194*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ň
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ś
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙m
IdentityIdentitylstm/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
îx
	
while_body_1037015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
1@
1while_lstm_cell_split_1_readvariableop_resource_0:	=
)while_lstm_cell_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
1>
/while_lstm_cell_split_1_readvariableop_resource:	;
'while_lstm_cell_readvariableop_resource:
˘while/lstm_cell/ReadVariableOp˘ while/lstm_cell/ReadVariableOp_1˘ while/lstm_cell/ReadVariableOp_2˘ while/lstm_cell/ReadVariableOp_3˘$while/lstm_cell/split/ReadVariableOp˘&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0Ö
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitĽ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Č
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ˝
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    °
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ś
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ś
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ś

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
ţJ
Š
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036203

inputs

states
states_11
split_readvariableop_resource:
1.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2˘ReadVariableOp˘ReadVariableOp_1˘ReadVariableOp_2˘ReadVariableOp_3˘split/ReadVariableOp˘split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ś
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split[
MatMulMatMulinputssplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_1MatMulinputssplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_2MatMulinputssplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_3MatMulinputssplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maske
MatMul_4MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?V
MulMuladd:z:0Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Add_1AddV2Mul:z:0Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mul_2Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates
ˇ

M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036581

args_08
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
Ű

M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036610

args_09
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:
identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
,
Ž
G__inference_sequential_layer_call_and_return_conditional_losses_1034628
module_wrapper_input0
module_wrapper_1034596: $
module_wrapper_1034598: 2
module_wrapper_2_1034602:  &
module_wrapper_2_1034604: ,
module_wrapper_6_1034610:
1'
module_wrapper_6_1034612:	,
module_wrapper_6_1034614:
,
module_wrapper_7_1034617:
'
module_wrapper_7_1034619:	+
module_wrapper_8_1034622:	&
module_wrapper_8_1034624:
identity˘&module_wrapper/StatefulPartitionedCall˘(module_wrapper_2/StatefulPartitionedCall˘(module_wrapper_6/StatefulPartitionedCall˘(module_wrapper_7/StatefulPartitionedCall˘(module_wrapper_8/StatefulPartitionedCallĄ
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_1034596module_wrapper_1034598*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1033621ú
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1033632ž
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1034602module_wrapper_2_1034604*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1033645ü
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1033656í
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1033664ń
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1033679Ó
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_1034610module_wrapper_6_1034612module_wrapper_6_1034614*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1033937ż
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0module_wrapper_7_1034617module_wrapper_7_1034619*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1033956ž
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_1034622module_wrapper_8_1034624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1033973
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input
ţJ
Š
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036405

inputs

states
states_11
split_readvariableop_resource:
1.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2˘ReadVariableOp˘ReadVariableOp_1˘ReadVariableOp_2˘ReadVariableOp_3˘split/ReadVariableOp˘split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ś
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split[
MatMulMatMulinputssplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_1MatMulinputssplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_2MatMulinputssplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_3MatMulinputssplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maske
MatMul_4MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?V
MulMuladd:z:0Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Add_1AddV2Mul:z:0Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mul_2Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates
ˇ

M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1033956

args_08
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
Š
 
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1033621

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity˘conv2d/BiasAdd/ReadVariableOp˘conv2d/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¨
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> p
IdentityIdentityconv2d/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0
ő
ö
+__inference_lstm_cell_layer_call_fn_1037172

inputs
states_0
states_1
unknown:
1
	unknown_0:	
	unknown_1:

identity

identity_1

identity_2˘StatefulPartitionedCallŠ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036203p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_1
îx
	
while_body_1036759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
1@
1while_lstm_cell_split_1_readvariableop_resource_0:	=
)while_lstm_cell_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
1>
/while_lstm_cell_split_1_readvariableop_resource:	;
'while_lstm_cell_readvariableop_resource:
˘while/lstm_cell/ReadVariableOp˘ while/lstm_cell/ReadVariableOp_1˘ while/lstm_cell/ReadVariableOp_2˘ while/lstm_cell/ReadVariableOp_3˘$while/lstm_cell/split/ReadVariableOp˘&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0Ö
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitĽ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Č
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ˝
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    °
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ś
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ś
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ś

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
×
Ş
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035444

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity˘conv2d_1/BiasAdd/ReadVariableOp˘conv2d_1/Conv2D/ReadVariableOp
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ź
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
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
:˙˙˙˙˙˙˙˙˙ j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
IdentityIdentityconv2d_1/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
čó

G__inference_sequential_layer_call_and_return_conditional_losses_1035342

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: Q
=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource:
1N
?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource:	K
7module_wrapper_6_lstm_lstm_cell_readvariableop_resource:
I
5module_wrapper_7_dense_matmul_readvariableop_resource:
E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:
identity˘,module_wrapper/conv2d/BiasAdd/ReadVariableOp˘+module_wrapper/conv2d/Conv2D/ReadVariableOp˘0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp˘/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp˘.module_wrapper_6/lstm/lstm_cell/ReadVariableOp˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3˘4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp˘6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp˘module_wrapper_6/lstm/while˘-module_wrapper_7/dense/BiasAdd/ReadVariableOp˘,module_wrapper_7/dense/MatMul/ReadVariableOp˘/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp˘.module_wrapper_8/dense_1/MatMul/ReadVariableOp¨
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ć
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ż
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> Č
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
°
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0÷
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingVALID*
strides
Ś
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ë
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ Î
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
o
module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ş
 module_wrapper_4/flatten/ReshapeReshape1module_wrapper_3/max_pooling2d_1/MaxPool:output:0'module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1w
module_wrapper_5/reshape/ShapeShape)module_wrapper_4/flatten/Reshape:output:0*
T0*
_output_shapes
:v
,module_wrapper_5/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.module_wrapper_5/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.module_wrapper_5/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&module_wrapper_5/reshape/strided_sliceStridedSlice'module_wrapper_5/reshape/Shape:output:05module_wrapper_5/reshape/strided_slice/stack:output:07module_wrapper_5/reshape/strided_slice/stack_1:output:07module_wrapper_5/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(module_wrapper_5/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :s
(module_wrapper_5/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ó
&module_wrapper_5/reshape/Reshape/shapePack/module_wrapper_5/reshape/strided_slice:output:01module_wrapper_5/reshape/Reshape/shape/1:output:01module_wrapper_5/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:ž
 module_wrapper_5/reshape/ReshapeReshape)module_wrapper_4/flatten/Reshape:output:0/module_wrapper_5/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1t
module_wrapper_6/lstm/ShapeShape)module_wrapper_5/reshape/Reshape:output:0*
T0*
_output_shapes
:s
)module_wrapper_6/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+module_wrapper_6/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+module_wrapper_6/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ż
#module_wrapper_6/lstm/strided_sliceStridedSlice$module_wrapper_6/lstm/Shape:output:02module_wrapper_6/lstm/strided_slice/stack:output:04module_wrapper_6/lstm/strided_slice/stack_1:output:04module_wrapper_6/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$module_wrapper_6/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ľ
"module_wrapper_6/lstm/zeros/packedPack,module_wrapper_6/lstm/strided_slice:output:0-module_wrapper_6/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!module_wrapper_6/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ż
module_wrapper_6/lstm/zerosFill+module_wrapper_6/lstm/zeros/packed:output:0*module_wrapper_6/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
&module_wrapper_6/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :š
$module_wrapper_6/lstm/zeros_1/packedPack,module_wrapper_6/lstm/strided_slice:output:0/module_wrapper_6/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#module_wrapper_6/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ľ
module_wrapper_6/lstm/zeros_1Fill-module_wrapper_6/lstm/zeros_1/packed:output:0,module_wrapper_6/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
$module_wrapper_6/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ˝
module_wrapper_6/lstm/transpose	Transpose)module_wrapper_5/reshape/Reshape:output:0-module_wrapper_6/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1p
module_wrapper_6/lstm/Shape_1Shape#module_wrapper_6/lstm/transpose:y:0*
T0*
_output_shapes
:u
+module_wrapper_6/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-module_wrapper_6/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%module_wrapper_6/lstm/strided_slice_1StridedSlice&module_wrapper_6/lstm/Shape_1:output:04module_wrapper_6/lstm/strided_slice_1/stack:output:06module_wrapper_6/lstm/strided_slice_1/stack_1:output:06module_wrapper_6/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1module_wrapper_6/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ö
#module_wrapper_6/lstm/TensorArrayV2TensorListReserve:module_wrapper_6/lstm/TensorArrayV2/element_shape:output:0.module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
Kmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ˘
=module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#module_wrapper_6/lstm/transpose:y:0Tmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇu
+module_wrapper_6/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-module_wrapper_6/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ř
%module_wrapper_6/lstm/strided_slice_2StridedSlice#module_wrapper_6/lstm/transpose:y:04module_wrapper_6/lstm/strided_slice_2/stack:output:06module_wrapper_6/lstm/strided_slice_2/stack_1:output:06module_wrapper_6/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_maskq
/module_wrapper_6/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOpReadVariableOp=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0
%module_wrapper_6/lstm/lstm_cell/splitSplit8module_wrapper_6/lstm/lstm_cell/split/split_dim:output:0<module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitĂ
&module_wrapper_6/lstm/lstm_cell/MatMulMatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_1MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_2MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_3MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
1module_wrapper_6/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ł
6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ř
'module_wrapper_6/lstm/lstm_cell/split_1Split:module_wrapper_6/lstm/lstm_cell/split_1/split_dim:output:0>module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitÉ
'module_wrapper_6/lstm/lstm_cell/BiasAddBiasAdd0module_wrapper_6/lstm/lstm_cell/MatMul:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_1BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_1:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_2BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_2:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_3BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_3:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
.module_wrapper_6/lstm/lstm_cell/ReadVariableOpReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
3module_wrapper_6/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
5module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-module_wrapper_6/lstm/lstm_cell/strided_sliceStridedSlice6module_wrapper_6/lstm/lstm_cell/ReadVariableOp:value:0<module_wrapper_6/lstm/lstm_cell/strided_slice/stack:output:0>module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1:output:0>module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĂ
(module_wrapper_6/lstm/lstm_cell/MatMul_4MatMul$module_wrapper_6/lstm/zeros:output:06module_wrapper_6/lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
#module_wrapper_6/lstm/lstm_cell/addAddV20module_wrapper_6/lstm/lstm_cell/BiasAdd:output:02module_wrapper_6/lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
%module_wrapper_6/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ś
#module_wrapper_6/lstm/lstm_cell/MulMul'module_wrapper_6/lstm/lstm_cell/add:z:0.module_wrapper_6/lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/Add_1AddV2'module_wrapper_6/lstm/lstm_cell/Mul:z:00module_wrapper_6/lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ŕ
5module_wrapper_6/lstm/lstm_cell/clip_by_value/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_1:z:0@module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
/module_wrapper_6/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ŕ
-module_wrapper_6/lstm/lstm_cell/clip_by_valueMaximum9module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum:z:08module_wrapper_6/lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_1StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_5MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_2AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_1:output:02module_wrapper_6/lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'module_wrapper_6/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ź
%module_wrapper_6/lstm/lstm_cell/Mul_1Mul)module_wrapper_6/lstm/lstm_cell/add_2:z:00module_wrapper_6/lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
%module_wrapper_6/lstm/lstm_cell/Add_3AddV2)module_wrapper_6/lstm/lstm_cell/Mul_1:z:00module_wrapper_6/lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
9module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
7module_wrapper_6/lstm/lstm_cell/clip_by_value_1/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_3:z:0Bmodule_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
1module_wrapper_6/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ć
/module_wrapper_6/lstm/lstm_cell/clip_by_value_1Maximum;module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum:z:0:module_wrapper_6/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/mul_2Mul3module_wrapper_6/lstm/lstm_cell/clip_by_value_1:z:0&module_wrapper_6/lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
7module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_2StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_6MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_4AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_2:output:02module_wrapper_6/lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$module_wrapper_6/lstm/lstm_cell/TanhTanh)module_wrapper_6/lstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/mul_3Mul1module_wrapper_6/lstm/lstm_cell/clip_by_value:z:0(module_wrapper_6/lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
%module_wrapper_6/lstm/lstm_cell/add_5AddV2)module_wrapper_6/lstm/lstm_cell/mul_2:z:0)module_wrapper_6/lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
7module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_3StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_7MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_6AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_3:output:02module_wrapper_6/lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'module_wrapper_6/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ź
%module_wrapper_6/lstm/lstm_cell/Mul_4Mul)module_wrapper_6/lstm/lstm_cell/add_6:z:00module_wrapper_6/lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
%module_wrapper_6/lstm/lstm_cell/Add_7AddV2)module_wrapper_6/lstm/lstm_cell/Mul_4:z:00module_wrapper_6/lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
9module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
7module_wrapper_6/lstm/lstm_cell/clip_by_value_2/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_7:z:0Bmodule_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
1module_wrapper_6/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ć
/module_wrapper_6/lstm/lstm_cell/clip_by_value_2Maximum;module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum:z:0:module_wrapper_6/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&module_wrapper_6/lstm/lstm_cell/Tanh_1Tanh)module_wrapper_6/lstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
%module_wrapper_6/lstm/lstm_cell/mul_5Mul3module_wrapper_6/lstm/lstm_cell/clip_by_value_2:z:0*module_wrapper_6/lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
3module_wrapper_6/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ú
%module_wrapper_6/lstm/TensorArrayV2_1TensorListReserve<module_wrapper_6/lstm/TensorArrayV2_1/element_shape:output:0.module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ\
module_wrapper_6/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.module_wrapper_6/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙j
(module_wrapper_6/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Š
module_wrapper_6/lstm/whileWhile1module_wrapper_6/lstm/while/loop_counter:output:07module_wrapper_6/lstm/while/maximum_iterations:output:0#module_wrapper_6/lstm/time:output:0.module_wrapper_6/lstm/TensorArrayV2_1:handle:0$module_wrapper_6/lstm/zeros:output:0&module_wrapper_6/lstm/zeros_1:output:0.module_wrapper_6/lstm/strided_slice_1:output:0Mmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource7module_wrapper_6_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(module_wrapper_6_lstm_while_body_1035188*4
cond,R*
(module_wrapper_6_lstm_while_cond_1035187*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
Fmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
8module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStackTensorListStack$module_wrapper_6/lstm/while:output:3Omodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0~
+module_wrapper_6/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙w
-module_wrapper_6/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
%module_wrapper_6/lstm/strided_slice_3StridedSliceAmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:04module_wrapper_6/lstm/strided_slice_3/stack:output:06module_wrapper_6/lstm/strided_slice_3/stack_1:output:06module_wrapper_6/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask{
&module_wrapper_6/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ů
!module_wrapper_6/lstm/transpose_1	TransposeAmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:0/module_wrapper_6/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ŕ
module_wrapper_7/dense/MatMulMatMul.module_wrapper_6/lstm/strided_slice_3:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ź
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ž
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 module_wrapper_8/dense_1/SigmoidSigmoid)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙s
IdentityIdentity$module_wrapper_8/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
NoOpNoOp-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/^module_wrapper_6/lstm/lstm_cell/ReadVariableOp1^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_11^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_21^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_35^module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp7^module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp^module_wrapper_6/lstm/while.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2`
.module_wrapper_6/lstm/lstm_cell/ReadVariableOp.module_wrapper_6/lstm/lstm_cell/ReadVariableOp2d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_10module_wrapper_6/lstm/lstm_cell/ReadVariableOp_12d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_20module_wrapper_6/lstm/lstm_cell/ReadVariableOp_22d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_30module_wrapper_6/lstm/lstm_cell/ReadVariableOp_32l
4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp2p
6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp2:
module_wrapper_6/lstm/whilemodule_wrapper_6/lstm/while2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ĺ
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035398

args_0
identity
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
K
Ť
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037278

inputs
states_0
states_11
split_readvariableop_resource:
1.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2˘ReadVariableOp˘ReadVariableOp_1˘ReadVariableOp_2˘ReadVariableOp_3˘split/ReadVariableOp˘split_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ś
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split[
MatMulMatMulinputssplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_1MatMulinputssplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_2MatMulinputssplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
MatMul_3MatMulinputssplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskg
MatMul_4MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?V
MulMuladd:z:0Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Add_1AddV2Mul:z:0Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mul_2Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maski
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?\
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	mul_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_1
˝

M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1036079

args_0@
,lstm_lstm_cell_split_readvariableop_resource:
1=
.lstm_lstm_cell_split_1_readvariableop_resource:	:
&lstm_lstm_cell_readvariableop_resource:

identity˘lstm/lstm_cell/ReadVariableOp˘lstm/lstm_cell/ReadVariableOp_1˘lstm/lstm_cell/ReadVariableOp_2˘lstm/lstm_cell/ReadVariableOp_3˘#lstm/lstm_cell/split/ReadVariableOp˘%lstm/lstm_cell/split_1/ReadVariableOp˘
lstm/while@

lstm/ShapeShapeargs_0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeargs_0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ă
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ď
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ó
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ĺ
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ­
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ť

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_while_body_1035939*#
condR
lstm_while_cond_1035938*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ň
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ś
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙m
IdentityIdentitylstm/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
É
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1033656

args_0
identity
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
p
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
Ü
Ü
3sequential_module_wrapper_6_lstm_while_cond_1033448^
Zsequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_loop_counterd
`sequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_maximum_iterations6
2sequential_module_wrapper_6_lstm_while_placeholder8
4sequential_module_wrapper_6_lstm_while_placeholder_18
4sequential_module_wrapper_6_lstm_while_placeholder_28
4sequential_module_wrapper_6_lstm_while_placeholder_3`
\sequential_module_wrapper_6_lstm_while_less_sequential_module_wrapper_6_lstm_strided_slice_1w
ssequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_cond_1033448___redundant_placeholder0w
ssequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_cond_1033448___redundant_placeholder1w
ssequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_cond_1033448___redundant_placeholder2w
ssequential_module_wrapper_6_lstm_while_sequential_module_wrapper_6_lstm_while_cond_1033448___redundant_placeholder33
/sequential_module_wrapper_6_lstm_while_identity
ć
+sequential/module_wrapper_6/lstm/while/LessLess2sequential_module_wrapper_6_lstm_while_placeholder\sequential_module_wrapper_6_lstm_while_less_sequential_module_wrapper_6_lstm_strided_slice_1*
T0*
_output_shapes
: 
/sequential/module_wrapper_6/lstm/while/IdentityIdentity/sequential/module_wrapper_6/lstm/while/Less:z:0*
T0
*
_output_shapes
: "k
/sequential_module_wrapper_6_lstm_while_identity8sequential/module_wrapper_6/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
ď
i
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035503

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ş
Î
A__inference_lstm_layer_call_and_return_conditional_losses_1037155
inputs_0;
'lstm_cell_split_readvariableop_resource:
18
)lstm_cell_split_1_readvariableop_resource:	5
!lstm_cell_readvariableop_resource:

identity˘lstm_cell/ReadVariableOp˘lstm_cell/ReadVariableOp_1˘lstm_cell/ReadVariableOp_2˘lstm_cell/ReadVariableOp_3˘lstm_cell/split/ReadVariableOp˘ lstm_cell/split_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
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
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ä
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ś
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?t
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?z
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?˘
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?z
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?˘
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ő
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1037015*
condR
while_cond_1037014*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
"
_user_specified_name
inputs_0
,
Ž
G__inference_sequential_layer_call_and_return_conditional_losses_1034663
module_wrapper_input0
module_wrapper_1034631: $
module_wrapper_1034633: 2
module_wrapper_2_1034637:  &
module_wrapper_2_1034639: ,
module_wrapper_6_1034645:
1'
module_wrapper_6_1034647:	,
module_wrapper_6_1034649:
,
module_wrapper_7_1034652:
'
module_wrapper_7_1034654:	+
module_wrapper_8_1034657:	&
module_wrapper_8_1034659:
identity˘&module_wrapper/StatefulPartitionedCall˘(module_wrapper_2/StatefulPartitionedCall˘(module_wrapper_6/StatefulPartitionedCall˘(module_wrapper_7/StatefulPartitionedCall˘(module_wrapper_8/StatefulPartitionedCallĄ
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputmodule_wrapper_1034631module_wrapper_1034633*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1034470ú
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1034444ž
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1034637module_wrapper_2_1034639*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1034424ü
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1034398í
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1034382ń
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1034365Ó
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_1034645module_wrapper_6_1034647module_wrapper_6_1034649*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1034335ż
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0module_wrapper_7_1034652module_wrapper_7_1034654*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1034058ž
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_1034657module_wrapper_8_1034659*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1034028
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input
˝"
Ů
while_body_1036464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1036488_0:
1(
while_lstm_cell_1036490_0:	-
while_lstm_cell_1036492_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1036488:
1&
while_lstm_cell_1036490:	+
while_lstm_cell_1036492:
˘'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0Ť
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1036488_0while_lstm_cell_1036490_0while_lstm_cell_1036492_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036405Ů
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1036488while_lstm_cell_1036488_0"4
while_lstm_cell_1036490while_lstm_cell_1036490_0"4
while_lstm_cell_1036492while_lstm_cell_1036492_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
ť
N
2__inference_module_wrapper_5_layer_call_fn_1035519

args_0
identity˝
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1034365e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0

Á
2__inference_module_wrapper_6_layer_call_fn_1035556

args_0
unknown:
1
	unknown_0:	
	unknown_1:

identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1033937p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
Š
 
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035382

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity˘conv2d/BiasAdd/ReadVariableOp˘conv2d/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¨
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> p
IdentityIdentityconv2d/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0
˝"
Ů
while_body_1036217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1036241_0:
1(
while_lstm_cell_1036243_0:	-
while_lstm_cell_1036245_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1036241:
1&
while_lstm_cell_1036243:	+
while_lstm_cell_1036245:
˘'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0Ť
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1036241_0while_lstm_cell_1036243_0while_lstm_cell_1036245_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036203Ů
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1036241while_lstm_cell_1036241_0"4
while_lstm_cell_1036243while_lstm_cell_1036243_0"4
while_lstm_cell_1036245while_lstm_cell_1036245_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
í

§
,__inference_sequential_layer_call_fn_1034748

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:
1
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:	
	unknown_9:
identity˘StatefulPartitionedCallŃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1034541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
í

§
,__inference_sequential_layer_call_fn_1034721

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:
1
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:	
	unknown_9:
identity˘StatefulPartitionedCallŃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1033980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ÉŹ
ń
#__inference__traced_restore_1037634
file_prefixG
-assignvariableop_module_wrapper_conv2d_kernel: ;
-assignvariableop_1_module_wrapper_conv2d_bias: M
3assignvariableop_2_module_wrapper_2_conv2d_1_kernel:  ?
1assignvariableop_3_module_wrapper_2_conv2d_1_bias: M
9assignvariableop_4_module_wrapper_6_lstm_lstm_cell_kernel:
1W
Cassignvariableop_5_module_wrapper_6_lstm_lstm_cell_recurrent_kernel:
F
7assignvariableop_6_module_wrapper_6_lstm_lstm_cell_bias:	D
0assignvariableop_7_module_wrapper_7_dense_kernel:
=
.assignvariableop_8_module_wrapper_7_dense_bias:	E
2assignvariableop_9_module_wrapper_8_dense_1_kernel:	?
1assignvariableop_10_module_wrapper_8_dense_1_bias:'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: Q
7assignvariableop_13_adam_m_module_wrapper_conv2d_kernel: Q
7assignvariableop_14_adam_v_module_wrapper_conv2d_kernel: C
5assignvariableop_15_adam_m_module_wrapper_conv2d_bias: C
5assignvariableop_16_adam_v_module_wrapper_conv2d_bias: U
;assignvariableop_17_adam_m_module_wrapper_2_conv2d_1_kernel:  U
;assignvariableop_18_adam_v_module_wrapper_2_conv2d_1_kernel:  G
9assignvariableop_19_adam_m_module_wrapper_2_conv2d_1_bias: G
9assignvariableop_20_adam_v_module_wrapper_2_conv2d_1_bias: U
Aassignvariableop_21_adam_m_module_wrapper_6_lstm_lstm_cell_kernel:
1U
Aassignvariableop_22_adam_v_module_wrapper_6_lstm_lstm_cell_kernel:
1_
Kassignvariableop_23_adam_m_module_wrapper_6_lstm_lstm_cell_recurrent_kernel:
_
Kassignvariableop_24_adam_v_module_wrapper_6_lstm_lstm_cell_recurrent_kernel:
N
?assignvariableop_25_adam_m_module_wrapper_6_lstm_lstm_cell_bias:	N
?assignvariableop_26_adam_v_module_wrapper_6_lstm_lstm_cell_bias:	L
8assignvariableop_27_adam_m_module_wrapper_7_dense_kernel:
L
8assignvariableop_28_adam_v_module_wrapper_7_dense_kernel:
E
6assignvariableop_29_adam_m_module_wrapper_7_dense_bias:	E
6assignvariableop_30_adam_v_module_wrapper_7_dense_bias:	M
:assignvariableop_31_adam_m_module_wrapper_8_dense_1_kernel:	M
:assignvariableop_32_adam_v_module_wrapper_8_dense_1_kernel:	F
8assignvariableop_33_adam_m_module_wrapper_8_dense_1_bias:F
8assignvariableop_34_adam_v_module_wrapper_8_dense_1_bias:%
assignvariableop_35_total_1: %
assignvariableop_36_count_1: #
assignvariableop_37_total: #
assignvariableop_38_count: 
identity_40˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9ô
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŔ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ś
_output_shapesŁ
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOpAssignVariableOp-assignvariableop_module_wrapper_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_1AssignVariableOp-assignvariableop_1_module_wrapper_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ę
AssignVariableOp_2AssignVariableOp3assignvariableop_2_module_wrapper_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Č
AssignVariableOp_3AssignVariableOp1assignvariableop_3_module_wrapper_2_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Đ
AssignVariableOp_4AssignVariableOp9assignvariableop_4_module_wrapper_6_lstm_lstm_cell_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_5AssignVariableOpCassignvariableop_5_module_wrapper_6_lstm_lstm_cell_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_6AssignVariableOp7assignvariableop_6_module_wrapper_6_lstm_lstm_cell_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_7AssignVariableOp0assignvariableop_7_module_wrapper_7_dense_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ĺ
AssignVariableOp_8AssignVariableOp.assignvariableop_8_module_wrapper_7_dense_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_9AssignVariableOp2assignvariableop_9_module_wrapper_8_dense_1_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ę
AssignVariableOp_10AssignVariableOp1assignvariableop_10_module_wrapper_8_dense_1_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:ś
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ş
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Đ
AssignVariableOp_13AssignVariableOp7assignvariableop_13_adam_m_module_wrapper_conv2d_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Đ
AssignVariableOp_14AssignVariableOp7assignvariableop_14_adam_v_module_wrapper_conv2d_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_15AssignVariableOp5assignvariableop_15_adam_m_module_wrapper_conv2d_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_16AssignVariableOp5assignvariableop_16_adam_v_module_wrapper_conv2d_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_17AssignVariableOp;assignvariableop_17_adam_m_module_wrapper_2_conv2d_1_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_18AssignVariableOp;assignvariableop_18_adam_v_module_wrapper_2_conv2d_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ň
AssignVariableOp_19AssignVariableOp9assignvariableop_19_adam_m_module_wrapper_2_conv2d_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ň
AssignVariableOp_20AssignVariableOp9assignvariableop_20_adam_v_module_wrapper_2_conv2d_1_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_21AssignVariableOpAassignvariableop_21_adam_m_module_wrapper_6_lstm_lstm_cell_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ú
AssignVariableOp_22AssignVariableOpAassignvariableop_22_adam_v_module_wrapper_6_lstm_lstm_cell_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ä
AssignVariableOp_23AssignVariableOpKassignvariableop_23_adam_m_module_wrapper_6_lstm_lstm_cell_recurrent_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ä
AssignVariableOp_24AssignVariableOpKassignvariableop_24_adam_v_module_wrapper_6_lstm_lstm_cell_recurrent_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ř
AssignVariableOp_25AssignVariableOp?assignvariableop_25_adam_m_module_wrapper_6_lstm_lstm_cell_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ř
AssignVariableOp_26AssignVariableOp?assignvariableop_26_adam_v_module_wrapper_6_lstm_lstm_cell_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ń
AssignVariableOp_27AssignVariableOp8assignvariableop_27_adam_m_module_wrapper_7_dense_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ń
AssignVariableOp_28AssignVariableOp8assignvariableop_28_adam_v_module_wrapper_7_dense_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ď
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_m_module_wrapper_7_dense_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ď
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_v_module_wrapper_7_dense_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_31AssignVariableOp:assignvariableop_31_adam_m_module_wrapper_8_dense_1_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_32AssignVariableOp:assignvariableop_32_adam_v_module_wrapper_8_dense_1_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ń
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adam_m_module_wrapper_8_dense_1_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ń
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_v_module_wrapper_8_dense_1_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Š
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
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
ő
ö
+__inference_lstm_cell_layer_call_fn_1037189

inputs
states_0
states_1
unknown:
1
	unknown_0:	
	unknown_1:

identity

identity_1

identity_2˘StatefulPartitionedCallŠ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036405p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_1
Ű

"__inference__wrapped_model_1033603
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource: N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource: ]
Csequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  R
Dsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: \
Hsequential_module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource:
1Y
Jsequential_module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource:	V
Bsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource:
T
@sequential_module_wrapper_7_dense_matmul_readvariableop_resource:
P
Asequential_module_wrapper_7_dense_biasadd_readvariableop_resource:	U
Bsequential_module_wrapper_8_dense_1_matmul_readvariableop_resource:	Q
Csequential_module_wrapper_8_dense_1_biasadd_readvariableop_resource:
identity˘7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp˘6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp˘;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp˘:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp˘9sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp˘;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1˘;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2˘;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3˘?sequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp˘Asequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp˘&sequential/module_wrapper_6/lstm/while˘8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp˘7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp˘:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp˘9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOpž
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ę
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides
´
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ŕ
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
%sequential/module_wrapper/conv2d/ReluRelu1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> Ţ
1sequential/module_wrapper_1/max_pooling2d/MaxPoolMaxPool3sequential/module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
Ć
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
+sequential/module_wrapper_2/conv2d_1/Conv2DConv2D:sequential/module_wrapper_1/max_pooling2d/MaxPool:output:0Bsequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingVALID*
strides
ź
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ě
,sequential/module_wrapper_2/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_2/conv2d_1/Conv2D:output:0Csequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ ˘
)sequential/module_wrapper_2/conv2d_1/ReluRelu5sequential/module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ ä
3sequential/module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool7sequential/module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
z
)sequential/module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ű
+sequential/module_wrapper_4/flatten/ReshapeReshape<sequential/module_wrapper_3/max_pooling2d_1/MaxPool:output:02sequential/module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
)sequential/module_wrapper_5/reshape/ShapeShape4sequential/module_wrapper_4/flatten/Reshape:output:0*
T0*
_output_shapes
:
7sequential/module_wrapper_5/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9sequential/module_wrapper_5/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9sequential/module_wrapper_5/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1sequential/module_wrapper_5/reshape/strided_sliceStridedSlice2sequential/module_wrapper_5/reshape/Shape:output:0@sequential/module_wrapper_5/reshape/strided_slice/stack:output:0Bsequential/module_wrapper_5/reshape/strided_slice/stack_1:output:0Bsequential/module_wrapper_5/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3sequential/module_wrapper_5/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
3sequential/module_wrapper_5/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
1sequential/module_wrapper_5/reshape/Reshape/shapePack:sequential/module_wrapper_5/reshape/strided_slice:output:0<sequential/module_wrapper_5/reshape/Reshape/shape/1:output:0<sequential/module_wrapper_5/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:ß
+sequential/module_wrapper_5/reshape/ReshapeReshape4sequential/module_wrapper_4/flatten/Reshape:output:0:sequential/module_wrapper_5/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
&sequential/module_wrapper_6/lstm/ShapeShape4sequential/module_wrapper_5/reshape/Reshape:output:0*
T0*
_output_shapes
:~
4sequential/module_wrapper_6/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6sequential/module_wrapper_6/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6sequential/module_wrapper_6/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.sequential/module_wrapper_6/lstm/strided_sliceStridedSlice/sequential/module_wrapper_6/lstm/Shape:output:0=sequential/module_wrapper_6/lstm/strided_slice/stack:output:0?sequential/module_wrapper_6/lstm/strided_slice/stack_1:output:0?sequential/module_wrapper_6/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/sequential/module_wrapper_6/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ö
-sequential/module_wrapper_6/lstm/zeros/packedPack7sequential/module_wrapper_6/lstm/strided_slice:output:08sequential/module_wrapper_6/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:q
,sequential/module_wrapper_6/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Đ
&sequential/module_wrapper_6/lstm/zerosFill6sequential/module_wrapper_6/lstm/zeros/packed:output:05sequential/module_wrapper_6/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
1sequential/module_wrapper_6/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ú
/sequential/module_wrapper_6/lstm/zeros_1/packedPack7sequential/module_wrapper_6/lstm/strided_slice:output:0:sequential/module_wrapper_6/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:s
.sequential/module_wrapper_6/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ö
(sequential/module_wrapper_6/lstm/zeros_1Fill8sequential/module_wrapper_6/lstm/zeros_1/packed:output:07sequential/module_wrapper_6/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
/sequential/module_wrapper_6/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ţ
*sequential/module_wrapper_6/lstm/transpose	Transpose4sequential/module_wrapper_5/reshape/Reshape:output:08sequential/module_wrapper_6/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
(sequential/module_wrapper_6/lstm/Shape_1Shape.sequential/module_wrapper_6/lstm/transpose:y:0*
T0*
_output_shapes
:
6sequential/module_wrapper_6/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8sequential/module_wrapper_6/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8sequential/module_wrapper_6/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0sequential/module_wrapper_6/lstm/strided_slice_1StridedSlice1sequential/module_wrapper_6/lstm/Shape_1:output:0?sequential/module_wrapper_6/lstm/strided_slice_1/stack:output:0Asequential/module_wrapper_6/lstm/strided_slice_1/stack_1:output:0Asequential/module_wrapper_6/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<sequential/module_wrapper_6/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
.sequential/module_wrapper_6/lstm/TensorArrayV2TensorListReserveEsequential/module_wrapper_6/lstm/TensorArrayV2/element_shape:output:09sequential/module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ§
Vsequential/module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ă
Hsequential/module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.sequential/module_wrapper_6/lstm/transpose:y:0_sequential/module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
6sequential/module_wrapper_6/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8sequential/module_wrapper_6/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8sequential/module_wrapper_6/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0sequential/module_wrapper_6/lstm/strided_slice_2StridedSlice.sequential/module_wrapper_6/lstm/transpose:y:0?sequential/module_wrapper_6/lstm/strided_slice_2/stack:output:0Asequential/module_wrapper_6/lstm/strided_slice_2/stack_1:output:0Asequential/module_wrapper_6/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask|
:sequential/module_wrapper_6/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ę
?sequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOpReadVariableOpHsequential_module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0§
0sequential/module_wrapper_6/lstm/lstm_cell/splitSplitCsequential/module_wrapper_6/lstm/lstm_cell/split/split_dim:output:0Gsequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitä
1sequential/module_wrapper_6/lstm/lstm_cell/MatMulMatMul9sequential/module_wrapper_6/lstm/strided_slice_2:output:09sequential/module_wrapper_6/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_1MatMul9sequential/module_wrapper_6/lstm/strided_slice_2:output:09sequential/module_wrapper_6/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_2MatMul9sequential/module_wrapper_6/lstm/strided_slice_2:output:09sequential/module_wrapper_6/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_3MatMul9sequential/module_wrapper_6/lstm/strided_slice_2:output:09sequential/module_wrapper_6/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
<sequential/module_wrapper_6/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : É
Asequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOpJsequential_module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0
2sequential/module_wrapper_6/lstm/lstm_cell/split_1SplitEsequential/module_wrapper_6/lstm/lstm_cell/split_1/split_dim:output:0Isequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitę
2sequential/module_wrapper_6/lstm/lstm_cell/BiasAddBiasAdd;sequential/module_wrapper_6/lstm/lstm_cell/MatMul:product:0;sequential/module_wrapper_6/lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙î
4sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_1BiasAdd=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_1:product:0;sequential/module_wrapper_6/lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙î
4sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_2BiasAdd=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_2:product:0;sequential/module_wrapper_6/lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙î
4sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_3BiasAdd=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_3:product:0;sequential/module_wrapper_6/lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
9sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOpReadVariableOpBsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
>sequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
@sequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
@sequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ä
8sequential/module_wrapper_6/lstm/lstm_cell/strided_sliceStridedSliceAsequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp:value:0Gsequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stack:output:0Isequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1:output:0Isequential/module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskä
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_4MatMul/sequential/module_wrapper_6/lstm/zeros:output:0Asequential/module_wrapper_6/lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ć
.sequential/module_wrapper_6/lstm/lstm_cell/addAddV2;sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd:output:0=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
0sequential/module_wrapper_6/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>w
2sequential/module_wrapper_6/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?×
.sequential/module_wrapper_6/lstm/lstm_cell/MulMul2sequential/module_wrapper_6/lstm/lstm_cell/add:z:09sequential/module_wrapper_6/lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
0sequential/module_wrapper_6/lstm/lstm_cell/Add_1AddV22sequential/module_wrapper_6/lstm/lstm_cell/Mul:z:0;sequential/module_wrapper_6/lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Bsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
@sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/MinimumMinimum4sequential/module_wrapper_6/lstm/lstm_cell/Add_1:z:0Ksequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
:sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
8sequential/module_wrapper_6/lstm/lstm_cell/clip_by_valueMaximumDsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum:z:0Csequential/module_wrapper_6/lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1ReadVariableOpBsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
@sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Î
:sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1StridedSliceCsequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1:value:0Isequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_5MatMul/sequential/module_wrapper_6/lstm/zeros:output:0Csequential/module_wrapper_6/lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
0sequential/module_wrapper_6/lstm/lstm_cell/add_2AddV2=sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_1:output:0=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
2sequential/module_wrapper_6/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>w
2sequential/module_wrapper_6/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
0sequential/module_wrapper_6/lstm/lstm_cell/Mul_1Mul4sequential/module_wrapper_6/lstm/lstm_cell/add_2:z:0;sequential/module_wrapper_6/lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
0sequential/module_wrapper_6/lstm/lstm_cell/Add_3AddV24sequential/module_wrapper_6/lstm/lstm_cell/Mul_1:z:0;sequential/module_wrapper_6/lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Bsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/MinimumMinimum4sequential/module_wrapper_6/lstm/lstm_cell/Add_3:z:0Msequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
<sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
:sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1MaximumFsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum:z:0Esequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
0sequential/module_wrapper_6/lstm/lstm_cell/mul_2Mul>sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_1:z:01sequential/module_wrapper_6/lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2ReadVariableOpBsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
@sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Î
:sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2StridedSliceCsequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2:value:0Isequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_6MatMul/sequential/module_wrapper_6/lstm/zeros:output:0Csequential/module_wrapper_6/lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
0sequential/module_wrapper_6/lstm/lstm_cell/add_4AddV2=sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_2:output:0=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
/sequential/module_wrapper_6/lstm/lstm_cell/TanhTanh4sequential/module_wrapper_6/lstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
0sequential/module_wrapper_6/lstm/lstm_cell/mul_3Mul<sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value:z:03sequential/module_wrapper_6/lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ř
0sequential/module_wrapper_6/lstm/lstm_cell/add_5AddV24sequential/module_wrapper_6/lstm/lstm_cell/mul_2:z:04sequential/module_wrapper_6/lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3ReadVariableOpBsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
@sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Bsequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Î
:sequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3StridedSliceCsequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3:value:0Isequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1:output:0Ksequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskć
3sequential/module_wrapper_6/lstm/lstm_cell/MatMul_7MatMul/sequential/module_wrapper_6/lstm/zeros:output:0Csequential/module_wrapper_6/lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
0sequential/module_wrapper_6/lstm/lstm_cell/add_6AddV2=sequential/module_wrapper_6/lstm/lstm_cell/BiasAdd_3:output:0=sequential/module_wrapper_6/lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
2sequential/module_wrapper_6/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>w
2sequential/module_wrapper_6/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
0sequential/module_wrapper_6/lstm/lstm_cell/Mul_4Mul4sequential/module_wrapper_6/lstm/lstm_cell/add_6:z:0;sequential/module_wrapper_6/lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
0sequential/module_wrapper_6/lstm/lstm_cell/Add_7AddV24sequential/module_wrapper_6/lstm/lstm_cell/Mul_4:z:0;sequential/module_wrapper_6/lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Dsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Bsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/MinimumMinimum4sequential/module_wrapper_6/lstm/lstm_cell/Add_7:z:0Msequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
<sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
:sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2MaximumFsequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum:z:0Esequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
1sequential/module_wrapper_6/lstm/lstm_cell/Tanh_1Tanh4sequential/module_wrapper_6/lstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙á
0sequential/module_wrapper_6/lstm/lstm_cell/mul_5Mul>sequential/module_wrapper_6/lstm/lstm_cell/clip_by_value_2:z:05sequential/module_wrapper_6/lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
>sequential/module_wrapper_6/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
0sequential/module_wrapper_6/lstm/TensorArrayV2_1TensorListReserveGsequential/module_wrapper_6/lstm/TensorArrayV2_1/element_shape:output:09sequential/module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇg
%sequential/module_wrapper_6/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 
9sequential/module_wrapper_6/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙u
3sequential/module_wrapper_6/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ă	
&sequential/module_wrapper_6/lstm/whileWhile<sequential/module_wrapper_6/lstm/while/loop_counter:output:0Bsequential/module_wrapper_6/lstm/while/maximum_iterations:output:0.sequential/module_wrapper_6/lstm/time:output:09sequential/module_wrapper_6/lstm/TensorArrayV2_1:handle:0/sequential/module_wrapper_6/lstm/zeros:output:01sequential/module_wrapper_6/lstm/zeros_1:output:09sequential/module_wrapper_6/lstm/strided_slice_1:output:0Xsequential/module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hsequential_module_wrapper_6_lstm_lstm_cell_split_readvariableop_resourceJsequential_module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resourceBsequential_module_wrapper_6_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *?
body7R5
3sequential_module_wrapper_6_lstm_while_body_1033449*?
cond7R5
3sequential_module_wrapper_6_lstm_while_cond_1033448*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations ˘
Qsequential/module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
Csequential/module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStackTensorListStack/sequential/module_wrapper_6/lstm/while:output:3Zsequential/module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
6sequential/module_wrapper_6/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
8sequential/module_wrapper_6/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8sequential/module_wrapper_6/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
0sequential/module_wrapper_6/lstm/strided_slice_3StridedSliceLsequential/module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:0?sequential/module_wrapper_6/lstm/strided_slice_3/stack:output:0Asequential/module_wrapper_6/lstm/strided_slice_3/stack_1:output:0Asequential/module_wrapper_6/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
1sequential/module_wrapper_6/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ú
,sequential/module_wrapper_6/lstm/transpose_1	TransposeLsequential/module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:0:sequential/module_wrapper_6/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
7sequential/module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0á
(sequential/module_wrapper_7/dense/MatMulMatMul9sequential/module_wrapper_6/lstm/strided_slice_3:output:0?sequential/module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ý
)sequential/module_wrapper_7/dense/BiasAddBiasAdd2sequential/module_wrapper_7/dense/MatMul:product:0@sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&sequential/module_wrapper_7/dense/ReluRelu2sequential/module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˝
9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ß
*sequential/module_wrapper_8/dense_1/MatMulMatMul4sequential/module_wrapper_7/dense/Relu:activations:0Asequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOpCsequential_module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0â
+sequential/module_wrapper_8/dense_1/BiasAddBiasAdd4sequential/module_wrapper_8/dense_1/MatMul:product:0Bsequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential/module_wrapper_8/dense_1/SigmoidSigmoid4sequential/module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
IdentityIdentity/sequential/module_wrapper_8/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ç
NoOpNoOp8^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp<^sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:^sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp<^sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1<^sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2<^sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3@^sequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOpB^sequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp'^sequential/module_wrapper_6/lstm/while9^sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_7/dense/MatMul/ReadVariableOp;^sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:^sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2v
9sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp9sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp2z
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_12z
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_22z
;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3;sequential/module_wrapper_6/lstm/lstm_cell/ReadVariableOp_32
?sequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp?sequential/module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp2
Asequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOpAsequential/module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp2P
&sequential/module_wrapper_6/lstm/while&sequential/module_wrapper_6/lstm/while2t
8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp2x
:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2v
9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input
ČŠ

(module_wrapper_6_lstm_while_body_1034891H
Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counterN
Jmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations+
'module_wrapper_6_lstm_while_placeholder-
)module_wrapper_6_lstm_while_placeholder_1-
)module_wrapper_6_lstm_while_placeholder_2-
)module_wrapper_6_lstm_while_placeholder_3G
Cmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1_0
module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0Y
Emodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0:
1V
Gmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	S
?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0:
(
$module_wrapper_6_lstm_while_identity*
&module_wrapper_6_lstm_while_identity_1*
&module_wrapper_6_lstm_while_identity_2*
&module_wrapper_6_lstm_while_identity_3*
&module_wrapper_6_lstm_while_identity_4*
&module_wrapper_6_lstm_while_identity_5E
Amodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1
}module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensorW
Cmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource:
1T
Emodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource:	Q
=module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource:
˘4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3˘:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp˘<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp
Mmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  
?module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodule_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0'module_wrapper_6_lstm_while_placeholderVmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0w
5module_wrapper_6/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Â
:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpEmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0
+module_wrapper_6/lstm/while/lstm_cell/splitSplit>module_wrapper_6/lstm/while/lstm_cell/split/split_dim:output:0Bmodule_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitç
,module_wrapper_6/lstm/while/lstm_cell/MatMulMatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_1MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_2MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_3MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
7module_wrapper_6/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Á
<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpGmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0
-module_wrapper_6/lstm/while/lstm_cell/split_1Split@module_wrapper_6/lstm/while/lstm_cell/split_1/split_dim:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitŰ
-module_wrapper_6/lstm/while/lstm_cell/BiasAddBiasAdd6module_wrapper_6/lstm/while/lstm_cell/MatMul:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_1:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_2:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_3:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOpReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
9module_wrapper_6/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
;module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
;module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ť
3module_wrapper_6/lstm/while/lstm_cell/strided_sliceStridedSlice<module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp:value:0Bmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÔ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_4MatMul)module_wrapper_6_lstm_while_placeholder_2<module_wrapper_6/lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙×
)module_wrapper_6/lstm/while/lstm_cell/addAddV26module_wrapper_6/lstm/while/lstm_cell/BiasAdd:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
+module_wrapper_6/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Č
)module_wrapper_6/lstm/while/lstm_cell/MulMul-module_wrapper_6/lstm/while/lstm_cell/add:z:04module_wrapper_6/lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
+module_wrapper_6/lstm/while/lstm_cell/Add_1AddV2-module_wrapper_6/lstm/while/lstm_cell/Mul:z:06module_wrapper_6/lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ň
;module_wrapper_6/lstm/while/lstm_cell/clip_by_value/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_1:z:0Fmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ň
3module_wrapper_6/lstm/while/lstm_cell/clip_by_valueMaximum?module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum:z:0>module_wrapper_6/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_1StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_5MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_2AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
-module_wrapper_6/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
+module_wrapper_6/lstm/while/lstm_cell/Mul_1Mul/module_wrapper_6/lstm/while/lstm_cell/add_2:z:06module_wrapper_6/lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Đ
+module_wrapper_6/lstm/while/lstm_cell/Add_3AddV2/module_wrapper_6/lstm/while/lstm_cell/Mul_1:z:06module_wrapper_6/lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_3:z:0Hmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ř
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1MaximumAmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0@module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
+module_wrapper_6/lstm/while/lstm_cell/mul_2Mul9module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1:z:0)module_wrapper_6_lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_2StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_6MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_4AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
*module_wrapper_6/lstm/while/lstm_cell/TanhTanh/module_wrapper_6/lstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
+module_wrapper_6/lstm/while/lstm_cell/mul_3Mul7module_wrapper_6/lstm/while/lstm_cell/clip_by_value:z:0.module_wrapper_6/lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
+module_wrapper_6/lstm/while/lstm_cell/add_5AddV2/module_wrapper_6/lstm/while/lstm_cell/mul_2:z:0/module_wrapper_6/lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_3StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_7MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_6AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
-module_wrapper_6/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
+module_wrapper_6/lstm/while/lstm_cell/Mul_4Mul/module_wrapper_6/lstm/while/lstm_cell/add_6:z:06module_wrapper_6/lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Đ
+module_wrapper_6/lstm/while/lstm_cell/Add_7AddV2/module_wrapper_6/lstm/while/lstm_cell/Mul_4:z:06module_wrapper_6/lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_7:z:0Hmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ř
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2MaximumAmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0@module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,module_wrapper_6/lstm/while/lstm_cell/Tanh_1Tanh/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ň
+module_wrapper_6/lstm/while/lstm_cell/mul_5Mul9module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2:z:00module_wrapper_6/lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
@module_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)module_wrapper_6_lstm_while_placeholder_1'module_wrapper_6_lstm_while_placeholder/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇc
!module_wrapper_6/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
module_wrapper_6/lstm/while/addAddV2'module_wrapper_6_lstm_while_placeholder*module_wrapper_6/lstm/while/add/y:output:0*
T0*
_output_shapes
: e
#module_wrapper_6/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ż
!module_wrapper_6/lstm/while/add_1AddV2Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counter,module_wrapper_6/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
$module_wrapper_6/lstm/while/IdentityIdentity%module_wrapper_6/lstm/while/add_1:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: Â
&module_wrapper_6/lstm/while/Identity_1IdentityJmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: 
&module_wrapper_6/lstm/while/Identity_2Identity#module_wrapper_6/lstm/while/add:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: Č
&module_wrapper_6/lstm/while/Identity_3IdentityPmodule_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: š
&module_wrapper_6/lstm/while/Identity_4Identity/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙š
&module_wrapper_6/lstm/while/Identity_5Identity/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
 module_wrapper_6/lstm/while/NoOpNoOp5^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp7^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_17^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_27^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3;^module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp=^module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$module_wrapper_6_lstm_while_identity-module_wrapper_6/lstm/while/Identity:output:0"Y
&module_wrapper_6_lstm_while_identity_1/module_wrapper_6/lstm/while/Identity_1:output:0"Y
&module_wrapper_6_lstm_while_identity_2/module_wrapper_6/lstm/while/Identity_2:output:0"Y
&module_wrapper_6_lstm_while_identity_3/module_wrapper_6/lstm/while/Identity_3:output:0"Y
&module_wrapper_6_lstm_while_identity_4/module_wrapper_6/lstm/while/Identity_4:output:0"Y
&module_wrapper_6_lstm_while_identity_5/module_wrapper_6/lstm/while/Identity_5:output:0"
=module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0"
Emodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resourceGmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0"
Cmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resourceEmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0"
Amodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1Cmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1_0"
}module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensormodule_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2l
4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp2p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_16module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_12p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_26module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_22p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_36module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_32x
:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp2|
<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
×
Ş
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035455

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity˘conv2d_1/BiasAdd/ReadVariableOp˘conv2d_1/Conv2D/ReadVariableOp
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ź
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
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
:˙˙˙˙˙˙˙˙˙ j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
IdentityIdentityconv2d_1/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ˇ

M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1034058

args_08
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
Š
 
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1034470

args_0?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 
identity˘conv2d/BiasAdd/ReadVariableOp˘conv2d/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¨
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> p
IdentityIdentityconv2d/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0
Ű
˘
2__inference_module_wrapper_7_layer_call_fn_1036559

args_0
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallă
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1034058p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
ž
Č
while_cond_1037014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1037014___redundant_placeholder05
1while_while_cond_1037014___redundant_placeholder15
1while_while_cond_1037014___redundant_placeholder25
1while_while_cond_1037014___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
Ł7
ü
A__inference_lstm_layer_call_and_return_conditional_losses_1036532

inputs%
lstm_cell_1036451:
1 
lstm_cell_1036453:	%
lstm_cell_1036455:

identity˘!lstm_cell/StatefulPartitionedCall˘while;
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
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_maskí
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1036451lstm_cell_1036453lstm_cell_1036455*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036405n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ˇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1036451lstm_cell_1036453lstm_cell_1036455*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1036464*
condR
while_cond_1036463*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs
Á
N
2__inference_module_wrapper_4_layer_call_fn_1035497

args_0
identityš
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1034382a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ž
Č
while_cond_1036216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1036216___redundant_placeholder05
1while_while_cond_1036216___redundant_placeholder15
1while_while_cond_1036216___redundant_placeholder25
1while_while_cond_1036216___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
ü
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035545

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ż
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:y
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1e
IdentityIdentityreshape/Reshape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
×
Ş
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1034424

args_0A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: 
identity˘conv2d_1/BiasAdd/ReadVariableOp˘conv2d_1/Conv2D/ReadVariableOp
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ź
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
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
:˙˙˙˙˙˙˙˙˙ j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
IdentityIdentityconv2d_1/Relu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
˝

M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1033937

args_0@
,lstm_lstm_cell_split_readvariableop_resource:
1=
.lstm_lstm_cell_split_1_readvariableop_resource:	:
&lstm_lstm_cell_readvariableop_resource:

identity˘lstm/lstm_cell/ReadVariableOp˘lstm/lstm_cell/ReadVariableOp_1˘lstm/lstm_cell/ReadVariableOp_2˘lstm/lstm_cell/ReadVariableOp_3˘#lstm/lstm_cell/split/ReadVariableOp˘%lstm/lstm_cell/split_1/ReadVariableOp˘
lstm/while@

lstm/ShapeShapeargs_0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeargs_0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ă
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ď
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ó
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ĺ
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ­
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ą
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ł
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ť

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_while_body_1033797*#
condR
lstm_while_cond_1033796*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ň
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ś
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙m
IdentityIdentitylstm/strided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0

h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1035481

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
Ľ
0__inference_module_wrapper_layer_call_fn_1035351

args_0!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1033621w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0
Ű

M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036621

args_09
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:
identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
Ď
N
2__inference_module_wrapper_1_layer_call_fn_1035388

args_0
identityŔ
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1033632h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
ň
´

lstm_while_body_1035939&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
1E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	B
.lstm_while_lstm_cell_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
1C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	@
,lstm_while_lstm_cell_readvariableop_resource:
˘#lstm/while/lstm_cell/ReadVariableOp˘%lstm/while/lstm_cell/ReadVariableOp_1˘%lstm/while/lstm_cell/ReadVariableOp_2˘%lstm/while/lstm_cell/ReadVariableOp_3˘)lstm/while/lstm_cell/split/ReadVariableOp˘+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ŕ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0ĺ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split´
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split¨
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĄ
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ż
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ż
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"ź
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
Ĺ
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035403

args_0
identity
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
ş
M
1__inference_max_pooling2d_1_layer_call_fn_1035487

inputs
identityÚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1035481
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ˇ

M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036570

args_08
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
ć+
 
G__inference_sequential_layer_call_and_return_conditional_losses_1034541

inputs0
module_wrapper_1034509: $
module_wrapper_1034511: 2
module_wrapper_2_1034515:  &
module_wrapper_2_1034517: ,
module_wrapper_6_1034523:
1'
module_wrapper_6_1034525:	,
module_wrapper_6_1034527:
,
module_wrapper_7_1034530:
'
module_wrapper_7_1034532:	+
module_wrapper_8_1034535:	&
module_wrapper_8_1034537:
identity˘&module_wrapper/StatefulPartitionedCall˘(module_wrapper_2/StatefulPartitionedCall˘(module_wrapper_6/StatefulPartitionedCall˘(module_wrapper_7/StatefulPartitionedCall˘(module_wrapper_8/StatefulPartitionedCall
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_1034509module_wrapper_1034511*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1034470ú
 module_wrapper_1/PartitionedCallPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1034444ž
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_1/PartitionedCall:output:0module_wrapper_2_1034515module_wrapper_2_1034517*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1034424ü
 module_wrapper_3/PartitionedCallPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1034398í
 module_wrapper_4/PartitionedCallPartitionedCall)module_wrapper_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1034382ń
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1034365Ó
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_1034523module_wrapper_6_1034525module_wrapper_6_1034527*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1034335ż
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0module_wrapper_7_1034530module_wrapper_7_1034532*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1034058ž
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_1034535module_wrapper_8_1034537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1034028
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp'^module_wrapper/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ĺ
i
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1034444

args_0
identity
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
n
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙>> :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
 
_user_specified_nameargs_0
ž
Č
while_cond_1036758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1036758___redundant_placeholder05
1while_while_cond_1036758___redundant_placeholder15
1while_while_cond_1036758___redundant_placeholder25
1while_while_cond_1036758___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
čó

G__inference_sequential_layer_call_and_return_conditional_losses_1035045

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource: C
5module_wrapper_conv2d_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource:  G
9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource: Q
=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource:
1N
?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource:	K
7module_wrapper_6_lstm_lstm_cell_readvariableop_resource:
I
5module_wrapper_7_dense_matmul_readvariableop_resource:
E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:
identity˘,module_wrapper/conv2d/BiasAdd/ReadVariableOp˘+module_wrapper/conv2d/Conv2D/ReadVariableOp˘0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp˘/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp˘.module_wrapper_6/lstm/lstm_cell/ReadVariableOp˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2˘0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3˘4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp˘6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp˘module_wrapper_6/lstm/while˘-module_wrapper_7/dense/BiasAdd/ReadVariableOp˘,module_wrapper_7/dense/MatMul/ReadVariableOp˘/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp˘.module_wrapper_8/dense_1/MatMul/ReadVariableOp¨
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ć
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
paddingVALID*
strides

,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ż
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> Č
&module_wrapper_1/max_pooling2d/MaxPoolMaxPool(module_wrapper/conv2d/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
°
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0÷
 module_wrapper_2/conv2d_1/Conv2DConv2D/module_wrapper_1/max_pooling2d/MaxPool:output:07module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
paddingVALID*
strides
Ś
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ë
!module_wrapper_2/conv2d_1/BiasAddBiasAdd)module_wrapper_2/conv2d_1/Conv2D:output:08module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
module_wrapper_2/conv2d_1/ReluRelu*module_wrapper_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ Î
(module_wrapper_3/max_pooling2d_1/MaxPoolMaxPool,module_wrapper_2/conv2d_1/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
o
module_wrapper_4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ş
 module_wrapper_4/flatten/ReshapeReshape1module_wrapper_3/max_pooling2d_1/MaxPool:output:0'module_wrapper_4/flatten/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1w
module_wrapper_5/reshape/ShapeShape)module_wrapper_4/flatten/Reshape:output:0*
T0*
_output_shapes
:v
,module_wrapper_5/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.module_wrapper_5/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.module_wrapper_5/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&module_wrapper_5/reshape/strided_sliceStridedSlice'module_wrapper_5/reshape/Shape:output:05module_wrapper_5/reshape/strided_slice/stack:output:07module_wrapper_5/reshape/strided_slice/stack_1:output:07module_wrapper_5/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(module_wrapper_5/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :s
(module_wrapper_5/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ó
&module_wrapper_5/reshape/Reshape/shapePack/module_wrapper_5/reshape/strided_slice:output:01module_wrapper_5/reshape/Reshape/shape/1:output:01module_wrapper_5/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:ž
 module_wrapper_5/reshape/ReshapeReshape)module_wrapper_4/flatten/Reshape:output:0/module_wrapper_5/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1t
module_wrapper_6/lstm/ShapeShape)module_wrapper_5/reshape/Reshape:output:0*
T0*
_output_shapes
:s
)module_wrapper_6/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+module_wrapper_6/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+module_wrapper_6/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ż
#module_wrapper_6/lstm/strided_sliceStridedSlice$module_wrapper_6/lstm/Shape:output:02module_wrapper_6/lstm/strided_slice/stack:output:04module_wrapper_6/lstm/strided_slice/stack_1:output:04module_wrapper_6/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$module_wrapper_6/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ľ
"module_wrapper_6/lstm/zeros/packedPack,module_wrapper_6/lstm/strided_slice:output:0-module_wrapper_6/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!module_wrapper_6/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ż
module_wrapper_6/lstm/zerosFill+module_wrapper_6/lstm/zeros/packed:output:0*module_wrapper_6/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
&module_wrapper_6/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :š
$module_wrapper_6/lstm/zeros_1/packedPack,module_wrapper_6/lstm/strided_slice:output:0/module_wrapper_6/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#module_wrapper_6/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ľ
module_wrapper_6/lstm/zeros_1Fill-module_wrapper_6/lstm/zeros_1/packed:output:0,module_wrapper_6/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
$module_wrapper_6/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ˝
module_wrapper_6/lstm/transpose	Transpose)module_wrapper_5/reshape/Reshape:output:0-module_wrapper_6/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1p
module_wrapper_6/lstm/Shape_1Shape#module_wrapper_6/lstm/transpose:y:0*
T0*
_output_shapes
:u
+module_wrapper_6/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-module_wrapper_6/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%module_wrapper_6/lstm/strided_slice_1StridedSlice&module_wrapper_6/lstm/Shape_1:output:04module_wrapper_6/lstm/strided_slice_1/stack:output:06module_wrapper_6/lstm/strided_slice_1/stack_1:output:06module_wrapper_6/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1module_wrapper_6/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ö
#module_wrapper_6/lstm/TensorArrayV2TensorListReserve:module_wrapper_6/lstm/TensorArrayV2/element_shape:output:0.module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
Kmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ˘
=module_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#module_wrapper_6/lstm/transpose:y:0Tmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇu
+module_wrapper_6/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-module_wrapper_6/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ř
%module_wrapper_6/lstm/strided_slice_2StridedSlice#module_wrapper_6/lstm/transpose:y:04module_wrapper_6/lstm/strided_slice_2/stack:output:06module_wrapper_6/lstm/strided_slice_2/stack_1:output:06module_wrapper_6/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_maskq
/module_wrapper_6/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOpReadVariableOp=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0
%module_wrapper_6/lstm/lstm_cell/splitSplit8module_wrapper_6/lstm/lstm_cell/split/split_dim:output:0<module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitĂ
&module_wrapper_6/lstm/lstm_cell/MatMulMatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_1MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_2MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
(module_wrapper_6/lstm/lstm_cell/MatMul_3MatMul.module_wrapper_6/lstm/strided_slice_2:output:0.module_wrapper_6/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
1module_wrapper_6/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ł
6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ř
'module_wrapper_6/lstm/lstm_cell/split_1Split:module_wrapper_6/lstm/lstm_cell/split_1/split_dim:output:0>module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitÉ
'module_wrapper_6/lstm/lstm_cell/BiasAddBiasAdd0module_wrapper_6/lstm/lstm_cell/MatMul:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_1BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_1:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_2BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_2:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
)module_wrapper_6/lstm/lstm_cell/BiasAdd_3BiasAdd2module_wrapper_6/lstm/lstm_cell/MatMul_3:product:00module_wrapper_6/lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
.module_wrapper_6/lstm/lstm_cell/ReadVariableOpReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
3module_wrapper_6/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
5module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-module_wrapper_6/lstm/lstm_cell/strided_sliceStridedSlice6module_wrapper_6/lstm/lstm_cell/ReadVariableOp:value:0<module_wrapper_6/lstm/lstm_cell/strided_slice/stack:output:0>module_wrapper_6/lstm/lstm_cell/strided_slice/stack_1:output:0>module_wrapper_6/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĂ
(module_wrapper_6/lstm/lstm_cell/MatMul_4MatMul$module_wrapper_6/lstm/zeros:output:06module_wrapper_6/lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ĺ
#module_wrapper_6/lstm/lstm_cell/addAddV20module_wrapper_6/lstm/lstm_cell/BiasAdd:output:02module_wrapper_6/lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
%module_wrapper_6/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ś
#module_wrapper_6/lstm/lstm_cell/MulMul'module_wrapper_6/lstm/lstm_cell/add:z:0.module_wrapper_6/lstm/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/Add_1AddV2'module_wrapper_6/lstm/lstm_cell/Mul:z:00module_wrapper_6/lstm/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ŕ
5module_wrapper_6/lstm/lstm_cell/clip_by_value/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_1:z:0@module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
/module_wrapper_6/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ŕ
-module_wrapper_6/lstm/lstm_cell/clip_by_valueMaximum9module_wrapper_6/lstm/lstm_cell/clip_by_value/Minimum:z:08module_wrapper_6/lstm/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_1StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_1:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_5MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_2AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_1:output:02module_wrapper_6/lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'module_wrapper_6/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ź
%module_wrapper_6/lstm/lstm_cell/Mul_1Mul)module_wrapper_6/lstm/lstm_cell/add_2:z:00module_wrapper_6/lstm/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
%module_wrapper_6/lstm/lstm_cell/Add_3AddV2)module_wrapper_6/lstm/lstm_cell/Mul_1:z:00module_wrapper_6/lstm/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
9module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
7module_wrapper_6/lstm/lstm_cell/clip_by_value_1/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_3:z:0Bmodule_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
1module_wrapper_6/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ć
/module_wrapper_6/lstm/lstm_cell/clip_by_value_1Maximum;module_wrapper_6/lstm/lstm_cell/clip_by_value_1/Minimum:z:0:module_wrapper_6/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/mul_2Mul3module_wrapper_6/lstm/lstm_cell/clip_by_value_1:z:0&module_wrapper_6/lstm/zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
7module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
7module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_2StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_2:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_6MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_4AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_2:output:02module_wrapper_6/lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$module_wrapper_6/lstm/lstm_cell/TanhTanh)module_wrapper_6/lstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
%module_wrapper_6/lstm/lstm_cell/mul_3Mul1module_wrapper_6/lstm/lstm_cell/clip_by_value:z:0(module_wrapper_6/lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
%module_wrapper_6/lstm/lstm_cell/add_5AddV2)module_wrapper_6/lstm/lstm_cell/mul_2:z:0)module_wrapper_6/lstm/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ş
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp7module_wrapper_6_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0
5module_wrapper_6/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
7module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/module_wrapper_6/lstm/lstm_cell/strided_slice_3StridedSlice8module_wrapper_6/lstm/lstm_cell/ReadVariableOp_3:value:0>module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_1:output:0@module_wrapper_6/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĹ
(module_wrapper_6/lstm/lstm_cell/MatMul_7MatMul$module_wrapper_6/lstm/zeros:output:08module_wrapper_6/lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
%module_wrapper_6/lstm/lstm_cell/add_6AddV22module_wrapper_6/lstm/lstm_cell/BiasAdd_3:output:02module_wrapper_6/lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
'module_wrapper_6/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>l
'module_wrapper_6/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ź
%module_wrapper_6/lstm/lstm_cell/Mul_4Mul)module_wrapper_6/lstm/lstm_cell/add_6:z:00module_wrapper_6/lstm/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
%module_wrapper_6/lstm/lstm_cell/Add_7AddV2)module_wrapper_6/lstm/lstm_cell/Mul_4:z:00module_wrapper_6/lstm/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
9module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
7module_wrapper_6/lstm/lstm_cell/clip_by_value_2/MinimumMinimum)module_wrapper_6/lstm/lstm_cell/Add_7:z:0Bmodule_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
1module_wrapper_6/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ć
/module_wrapper_6/lstm/lstm_cell/clip_by_value_2Maximum;module_wrapper_6/lstm/lstm_cell/clip_by_value_2/Minimum:z:0:module_wrapper_6/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&module_wrapper_6/lstm/lstm_cell/Tanh_1Tanh)module_wrapper_6/lstm/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
%module_wrapper_6/lstm/lstm_cell/mul_5Mul3module_wrapper_6/lstm/lstm_cell/clip_by_value_2:z:0*module_wrapper_6/lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
3module_wrapper_6/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ú
%module_wrapper_6/lstm/TensorArrayV2_1TensorListReserve<module_wrapper_6/lstm/TensorArrayV2_1/element_shape:output:0.module_wrapper_6/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ\
module_wrapper_6/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.module_wrapper_6/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙j
(module_wrapper_6/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Š
module_wrapper_6/lstm/whileWhile1module_wrapper_6/lstm/while/loop_counter:output:07module_wrapper_6/lstm/while/maximum_iterations:output:0#module_wrapper_6/lstm/time:output:0.module_wrapper_6/lstm/TensorArrayV2_1:handle:0$module_wrapper_6/lstm/zeros:output:0&module_wrapper_6/lstm/zeros_1:output:0.module_wrapper_6/lstm/strided_slice_1:output:0Mmodule_wrapper_6/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0=module_wrapper_6_lstm_lstm_cell_split_readvariableop_resource?module_wrapper_6_lstm_lstm_cell_split_1_readvariableop_resource7module_wrapper_6_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(module_wrapper_6_lstm_while_body_1034891*4
cond,R*
(module_wrapper_6_lstm_while_cond_1034890*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
Fmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
8module_wrapper_6/lstm/TensorArrayV2Stack/TensorListStackTensorListStack$module_wrapper_6/lstm/while:output:3Omodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0~
+module_wrapper_6/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙w
-module_wrapper_6/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-module_wrapper_6/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
%module_wrapper_6/lstm/strided_slice_3StridedSliceAmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:04module_wrapper_6/lstm/strided_slice_3/stack:output:06module_wrapper_6/lstm/strided_slice_3/stack_1:output:06module_wrapper_6/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask{
&module_wrapper_6/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ů
!module_wrapper_6/lstm/transpose_1	TransposeAmodule_wrapper_6/lstm/TensorArrayV2Stack/TensorListStack:tensor:0/module_wrapper_6/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ŕ
module_wrapper_7/dense/MatMulMatMul.module_wrapper_6/lstm/strided_slice_3:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ź
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ž
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 module_wrapper_8/dense_1/SigmoidSigmoid)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙s
IdentityIdentity$module_wrapper_8/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
NoOpNoOp-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/^module_wrapper_6/lstm/lstm_cell/ReadVariableOp1^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_11^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_21^module_wrapper_6/lstm/lstm_cell/ReadVariableOp_35^module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp7^module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp^module_wrapper_6/lstm/while.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_1/Conv2D/ReadVariableOp2`
.module_wrapper_6/lstm/lstm_cell/ReadVariableOp.module_wrapper_6/lstm/lstm_cell/ReadVariableOp2d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_10module_wrapper_6/lstm/lstm_cell/ReadVariableOp_12d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_20module_wrapper_6/lstm/lstm_cell/ReadVariableOp_22d
0module_wrapper_6/lstm/lstm_cell/ReadVariableOp_30module_wrapper_6/lstm/lstm_cell/ReadVariableOp_32l
4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp4module_wrapper_6/lstm/lstm_cell/split/ReadVariableOp2p
6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp6module_wrapper_6/lstm/lstm_cell/split_1/ReadVariableOp2:
module_wrapper_6/lstm/whilemodule_wrapper_6/lstm/while2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ü
§
2__inference_module_wrapper_2_layer_call_fn_1035424

args_0!
unknown:  
	unknown_0: 
identity˘StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1033645w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0

Á
2__inference_module_wrapper_6_layer_call_fn_1035567

args_0
unknown:
1
	unknown_0:	
	unknown_1:

identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1034335p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
Ł7
ü
A__inference_lstm_layer_call_and_return_conditional_losses_1036285

inputs%
lstm_cell_1036204:
1 
lstm_cell_1036206:	%
lstm_cell_1036208:

identity˘!lstm_cell/StatefulPartitionedCall˘while;
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
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_maskí
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1036204lstm_cell_1036206lstm_cell_1036208*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1036203n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ˇ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1036204lstm_cell_1036206lstm_cell_1036208*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1036217*
condR
while_cond_1036216*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs
ň
´

lstm_while_body_1034195&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
1E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	B
.lstm_while_lstm_cell_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
1C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	@
,lstm_while_lstm_cell_readvariableop_resource:
˘#lstm/while/lstm_cell/ReadVariableOp˘%lstm/while/lstm_cell/ReadVariableOp_1˘%lstm/while/lstm_cell/ReadVariableOp_2˘%lstm/while/lstm_cell/ReadVariableOp_3˘)lstm/while/lstm_cell/split/ReadVariableOp˘+lstm/while/lstm_cell/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  Ŕ
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0ĺ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split´
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split¨
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskĄ
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ż
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ż
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ŕ
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskŁ
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ă
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ĺ
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"ź
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
Ű

M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1034028

args_09
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:
identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
ü
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1034365

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ż
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:y
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1e
IdentityIdentityreshape/Reshape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
Ę	
Ź
lstm_while_cond_1035938&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_1035938___redundant_placeholder0?
;lstm_while_lstm_while_cond_1035938___redundant_placeholder1?
;lstm_while_lstm_while_cond_1035938___redundant_placeholder2?
;lstm_while_lstm_while_cond_1035938___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
Á
N
2__inference_module_wrapper_4_layer_call_fn_1035492

args_0
identityš
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1033664a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
Ű
˘
2__inference_module_wrapper_7_layer_call_fn_1036550

args_0
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallă
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1033956p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0
ť
N
2__inference_module_wrapper_5_layer_call_fn_1035514

args_0
identity˝
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1033679e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
Ď
N
2__inference_module_wrapper_3_layer_call_fn_1035460

args_0
identityŔ
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1033656h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
Ę	
Ź
lstm_while_cond_1034194&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1?
;lstm_while_lstm_while_cond_1034194___redundant_placeholder0?
;lstm_while_lstm_while_cond_1034194___redundant_placeholder1?
;lstm_while_lstm_while_cond_1034194___redundant_placeholder2?
;lstm_while_lstm_while_cond_1034194___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
ČŠ

(module_wrapper_6_lstm_while_body_1035188H
Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counterN
Jmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations+
'module_wrapper_6_lstm_while_placeholder-
)module_wrapper_6_lstm_while_placeholder_1-
)module_wrapper_6_lstm_while_placeholder_2-
)module_wrapper_6_lstm_while_placeholder_3G
Cmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1_0
module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0Y
Emodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0:
1V
Gmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	S
?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0:
(
$module_wrapper_6_lstm_while_identity*
&module_wrapper_6_lstm_while_identity_1*
&module_wrapper_6_lstm_while_identity_2*
&module_wrapper_6_lstm_while_identity_3*
&module_wrapper_6_lstm_while_identity_4*
&module_wrapper_6_lstm_while_identity_5E
Amodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1
}module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensorW
Cmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource:
1T
Emodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource:	Q
=module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource:
˘4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2˘6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3˘:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp˘<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp
Mmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  
?module_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodule_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0'module_wrapper_6_lstm_while_placeholderVmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
element_dtype0w
5module_wrapper_6/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Â
:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpEmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
1*
dtype0
+module_wrapper_6/lstm/while/lstm_cell/splitSplit>module_wrapper_6/lstm/while/lstm_cell/split/split_dim:output:0Bmodule_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_splitç
,module_wrapper_6/lstm/while/lstm_cell/MatMulMatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_1MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_2MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
.module_wrapper_6/lstm/while/lstm_cell/MatMul_3MatMulFmodule_wrapper_6/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04module_wrapper_6/lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
7module_wrapper_6/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Á
<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpGmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0
-module_wrapper_6/lstm/while/lstm_cell/split_1Split@module_wrapper_6/lstm/while/lstm_cell/split_1/split_dim:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitŰ
-module_wrapper_6/lstm/while/lstm_cell/BiasAddBiasAdd6module_wrapper_6/lstm/while/lstm_cell/MatMul:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_1:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_2:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ß
/module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3BiasAdd8module_wrapper_6/lstm/while/lstm_cell/MatMul_3:product:06module_wrapper_6/lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOpReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
9module_wrapper_6/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
;module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
;module_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ť
3module_wrapper_6/lstm/while/lstm_cell/strided_sliceStridedSlice<module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp:value:0Bmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_1:output:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÔ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_4MatMul)module_wrapper_6_lstm_while_placeholder_2<module_wrapper_6/lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙×
)module_wrapper_6/lstm/while/lstm_cell/addAddV26module_wrapper_6/lstm/while/lstm_cell/BiasAdd:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
+module_wrapper_6/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Č
)module_wrapper_6/lstm/while/lstm_cell/MulMul-module_wrapper_6/lstm/while/lstm_cell/add:z:04module_wrapper_6/lstm/while/lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
+module_wrapper_6/lstm/while/lstm_cell/Add_1AddV2-module_wrapper_6/lstm/while/lstm_cell/Mul:z:06module_wrapper_6/lstm/while/lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ň
;module_wrapper_6/lstm/while/lstm_cell/clip_by_value/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_1:z:0Fmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ň
3module_wrapper_6/lstm/while/lstm_cell/clip_by_valueMaximum?module_wrapper_6/lstm/while/lstm_cell/clip_by_value/Minimum:z:0>module_wrapper_6/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_1StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_1:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_5MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_2AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_1:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
-module_wrapper_6/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
+module_wrapper_6/lstm/while/lstm_cell/Mul_1Mul/module_wrapper_6/lstm/while/lstm_cell/add_2:z:06module_wrapper_6/lstm/while/lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Đ
+module_wrapper_6/lstm/while/lstm_cell/Add_3AddV2/module_wrapper_6/lstm/while/lstm_cell/Mul_1:z:06module_wrapper_6/lstm/while/lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_3:z:0Hmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ř
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1MaximumAmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0@module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
+module_wrapper_6/lstm/while/lstm_cell/mul_2Mul9module_wrapper_6/lstm/while/lstm_cell/clip_by_value_1:z:0)module_wrapper_6_lstm_while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_2StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_2:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_6MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_4AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_2:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
*module_wrapper_6/lstm/while/lstm_cell/TanhTanh/module_wrapper_6/lstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
+module_wrapper_6/lstm/while/lstm_cell/mul_3Mul7module_wrapper_6/lstm/while/lstm_cell/clip_by_value:z:0.module_wrapper_6/lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
+module_wrapper_6/lstm/while/lstm_cell/add_5AddV2/module_wrapper_6/lstm/while/lstm_cell/mul_2:z:0/module_wrapper_6/lstm/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
=module_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ľ
5module_wrapper_6/lstm/while/lstm_cell/strided_slice_3StridedSlice>module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3:value:0Dmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0Fmodule_wrapper_6/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÖ
.module_wrapper_6/lstm/while/lstm_cell/MatMul_7MatMul)module_wrapper_6_lstm_while_placeholder_2>module_wrapper_6/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ű
+module_wrapper_6/lstm/while/lstm_cell/add_6AddV28module_wrapper_6/lstm/while/lstm_cell/BiasAdd_3:output:08module_wrapper_6/lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
-module_wrapper_6/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>r
-module_wrapper_6/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
+module_wrapper_6/lstm/while/lstm_cell/Mul_4Mul/module_wrapper_6/lstm/while/lstm_cell/add_6:z:06module_wrapper_6/lstm/while/lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Đ
+module_wrapper_6/lstm/while/lstm_cell/Add_7AddV2/module_wrapper_6/lstm/while/lstm_cell/Mul_4:z:06module_wrapper_6/lstm/while/lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
?module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
=module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum/module_wrapper_6/lstm/while/lstm_cell/Add_7:z:0Hmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
7module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ř
5module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2MaximumAmodule_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0@module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,module_wrapper_6/lstm/while/lstm_cell/Tanh_1Tanh/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ň
+module_wrapper_6/lstm/while/lstm_cell/mul_5Mul9module_wrapper_6/lstm/while/lstm_cell/clip_by_value_2:z:00module_wrapper_6/lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
@module_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)module_wrapper_6_lstm_while_placeholder_1'module_wrapper_6_lstm_while_placeholder/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:éčŇc
!module_wrapper_6/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
module_wrapper_6/lstm/while/addAddV2'module_wrapper_6_lstm_while_placeholder*module_wrapper_6/lstm/while/add/y:output:0*
T0*
_output_shapes
: e
#module_wrapper_6/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ż
!module_wrapper_6/lstm/while/add_1AddV2Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counter,module_wrapper_6/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
$module_wrapper_6/lstm/while/IdentityIdentity%module_wrapper_6/lstm/while/add_1:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: Â
&module_wrapper_6/lstm/while/Identity_1IdentityJmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: 
&module_wrapper_6/lstm/while/Identity_2Identity#module_wrapper_6/lstm/while/add:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: Č
&module_wrapper_6/lstm/while/Identity_3IdentityPmodule_wrapper_6/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^module_wrapper_6/lstm/while/NoOp*
T0*
_output_shapes
: š
&module_wrapper_6/lstm/while/Identity_4Identity/module_wrapper_6/lstm/while/lstm_cell/mul_5:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙š
&module_wrapper_6/lstm/while/Identity_5Identity/module_wrapper_6/lstm/while/lstm_cell/add_5:z:0!^module_wrapper_6/lstm/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
 module_wrapper_6/lstm/while/NoOpNoOp5^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp7^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_17^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_27^module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_3;^module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp=^module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$module_wrapper_6_lstm_while_identity-module_wrapper_6/lstm/while/Identity:output:0"Y
&module_wrapper_6_lstm_while_identity_1/module_wrapper_6/lstm/while/Identity_1:output:0"Y
&module_wrapper_6_lstm_while_identity_2/module_wrapper_6/lstm/while/Identity_2:output:0"Y
&module_wrapper_6_lstm_while_identity_3/module_wrapper_6/lstm/while/Identity_3:output:0"Y
&module_wrapper_6_lstm_while_identity_4/module_wrapper_6/lstm/while/Identity_4:output:0"Y
&module_wrapper_6_lstm_while_identity_5/module_wrapper_6/lstm/while/Identity_5:output:0"
=module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource?module_wrapper_6_lstm_while_lstm_cell_readvariableop_resource_0"
Emodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resourceGmodule_wrapper_6_lstm_while_lstm_cell_split_1_readvariableop_resource_0"
Cmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resourceEmodule_wrapper_6_lstm_while_lstm_cell_split_readvariableop_resource_0"
Amodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1Cmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_strided_slice_1_0"
}module_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensormodule_wrapper_6_lstm_while_tensorarrayv2read_tensorlistgetitem_module_wrapper_6_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : 2l
4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp4module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp2p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_16module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_12p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_26module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_22p
6module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_36module_wrapper_6/lstm/while/lstm_cell/ReadVariableOp_32x
:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp:module_wrapper_6/lstm/while/lstm_cell/split/ReadVariableOp2|
<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp<module_wrapper_6/lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: 
É
i
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1034398

args_0
identity
max_pooling2d_1/MaxPoolMaxPoolargs_0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
ksize
*
paddingVALID*
strides
p
IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙ :W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ë

Ž
%__inference_signature_wrapper_1034694
module_wrapper_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3:
1
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:	
	unknown_9:
identity˘StatefulPartitionedCallş
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1033603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:˙˙˙˙˙˙˙˙˙@@: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
.
_user_specified_namemodule_wrapper_input

ˇ
&__inference_lstm_layer_call_fn_1036632
inputs_0
unknown:
1
	unknown_0:	
	unknown_1:

identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_layer_call_and_return_conditional_losses_1036285p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
"
_user_specified_name
inputs_0
ş
Î
A__inference_lstm_layer_call_and_return_conditional_losses_1036899
inputs_0;
'lstm_cell_split_readvariableop_resource:
18
)lstm_cell_split_1_readvariableop_resource:	5
!lstm_cell_readvariableop_resource:

identity˘lstm_cell/ReadVariableOp˘lstm_cell/ReadVariableOp_1˘lstm_cell/ReadVariableOp_2˘lstm_cell/ReadVariableOp_3˘lstm_cell/split/ReadVariableOp˘ lstm_cell/split_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
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
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
1*
dtype0Ä
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
1:
1:
1:
1*
	num_split
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ś
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?t
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?z
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?˘
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Š
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?z
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?˘
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ő
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1036759*
condR
while_cond_1036758*M
output_shapes<
:: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1
"
_user_specified_name
inputs_0
×
 
2__inference_module_wrapper_8_layer_call_fn_1036599

args_0
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1034028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameargs_0

f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1035409

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
§

(module_wrapper_6_lstm_while_cond_1035187H
Dmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_loop_counterN
Jmodule_wrapper_6_lstm_while_module_wrapper_6_lstm_while_maximum_iterations+
'module_wrapper_6_lstm_while_placeholder-
)module_wrapper_6_lstm_while_placeholder_1-
)module_wrapper_6_lstm_while_placeholder_2-
)module_wrapper_6_lstm_while_placeholder_3J
Fmodule_wrapper_6_lstm_while_less_module_wrapper_6_lstm_strided_slice_1a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1035187___redundant_placeholder0a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1035187___redundant_placeholder1a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1035187___redundant_placeholder2a
]module_wrapper_6_lstm_while_module_wrapper_6_lstm_while_cond_1035187___redundant_placeholder3(
$module_wrapper_6_lstm_while_identity
ş
 module_wrapper_6/lstm/while/LessLess'module_wrapper_6_lstm_while_placeholderFmodule_wrapper_6_lstm_while_less_module_wrapper_6_lstm_strided_slice_1*
T0*
_output_shapes
: w
$module_wrapper_6/lstm/while/IdentityIdentity$module_wrapper_6/lstm/while/Less:z:0*
T0
*
_output_shapes
: "U
$module_wrapper_6_lstm_while_identity-module_wrapper_6/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 
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
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
:
ü
§
2__inference_module_wrapper_2_layer_call_fn_1035433

args_0!
unknown:  
	unknown_0: 
identity˘StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1034424w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameargs_0
ü
i
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035532

args_0
identityC
reshape/ShapeShapeargs_0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ż
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:y
reshape/ReshapeReshapeargs_0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1e
IdentityIdentityreshape/Reshape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙1:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameargs_0
ř
Ľ
0__inference_module_wrapper_layer_call_fn_1035360

args_0!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1034470w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameargs_0"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ő
serving_defaultÁ
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0˙˙˙˙˙˙˙˙˙@@D
module_wrapper_80
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ř
Ý
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
˛
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_module"
_tf_keras_layer
˛
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _module"
_tf_keras_layer
˛
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'_module"
_tf_keras_layer
˛
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._module"
_tf_keras_layer
˛
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_module"
_tf_keras_layer
˛
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_module"
_tf_keras_layer
˛
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_module"
_tf_keras_layer
˛
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_module"
_tf_keras_layer
˛
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Q_module"
_tf_keras_layer
n
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10"
trackable_list_wrapper
n
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ĺ
btrace_0
ctrace_1
dtrace_2
etrace_32ú
,__inference_sequential_layer_call_fn_1034005
,__inference_sequential_layer_call_fn_1034721
,__inference_sequential_layer_call_fn_1034748
,__inference_sequential_layer_call_fn_1034593ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zbtrace_0zctrace_1zdtrace_2zetrace_3
Ń
ftrace_0
gtrace_1
htrace_2
itrace_32ć
G__inference_sequential_layer_call_and_return_conditional_losses_1035045
G__inference_sequential_layer_call_and_return_conditional_losses_1035342
G__inference_sequential_layer_call_and_return_conditional_losses_1034628
G__inference_sequential_layer_call_and_return_conditional_losses_1034663ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zftrace_0zgtrace_1zhtrace_2zitrace_3
ÚB×
"__inference__wrapped_model_1033603module_wrapper_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 

j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla"
experimentalOptimizer
,
qserving_default"
signature_map
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý
wtrace_0
xtrace_12Ś
0__inference_module_wrapper_layer_call_fn_1035351
0__inference_module_wrapper_layer_call_fn_1035360ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zwtrace_0zxtrace_1

ytrace_0
ztrace_12Ü
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035371
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035382ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zytrace_0zztrace_1
ź
{trainable_variables
|	variables
}regularization_losses
~	keras_api
*&call_and_return_all_conditional_losses
__call__

Rkernel
Sbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ĺ
trace_0
trace_12Ş
2__inference_module_wrapper_1_layer_call_fn_1035388
2__inference_module_wrapper_1_layer_call_fn_1035393ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12ŕ
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035398
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035403ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1
Ť
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ĺ
trace_0
trace_12Ş
2__inference_module_wrapper_2_layer_call_fn_1035424
2__inference_module_wrapper_2_layer_call_fn_1035433ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12ŕ
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035444
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035455ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1
Á
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__

Tkernel
Ubias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
 layers
Ąmetrics
 ˘layer_regularization_losses
Łlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
ĺ
¤trace_0
Ľtrace_12Ş
2__inference_module_wrapper_3_layer_call_fn_1035460
2__inference_module_wrapper_3_layer_call_fn_1035465ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 z¤trace_0zĽtrace_1

Śtrace_0
§trace_12ŕ
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035470
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035475ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zŚtrace_0z§trace_1
Ť
¨trainable_variables
Š	variables
Şregularization_losses
Ť	keras_api
+Ź&call_and_return_all_conditional_losses
­__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Žnon_trainable_variables
Żlayers
°metrics
 ąlayer_regularization_losses
˛layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ĺ
łtrace_0
´trace_12Ş
2__inference_module_wrapper_4_layer_call_fn_1035492
2__inference_module_wrapper_4_layer_call_fn_1035497ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 złtrace_0z´trace_1

ľtrace_0
śtrace_12ŕ
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035503
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035509ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zľtrace_0zśtrace_1
Ť
ˇtrainable_variables
¸	variables
šregularization_losses
ş	keras_api
+ť&call_and_return_all_conditional_losses
ź__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
˝non_trainable_variables
žlayers
żmetrics
 Ŕlayer_regularization_losses
Álayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ĺ
Âtrace_0
Ătrace_12Ş
2__inference_module_wrapper_5_layer_call_fn_1035514
2__inference_module_wrapper_5_layer_call_fn_1035519ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zÂtrace_0zĂtrace_1

Ätrace_0
Ĺtrace_12ŕ
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035532
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035545ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zÄtrace_0zĹtrace_1
Ť
Ćtrainable_variables
Ç	variables
Čregularization_losses
É	keras_api
+Ę&call_and_return_all_conditional_losses
Ë__call__"
_tf_keras_layer
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
ĺ
Ńtrace_0
Ňtrace_12Ş
2__inference_module_wrapper_6_layer_call_fn_1035556
2__inference_module_wrapper_6_layer_call_fn_1035567ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zŃtrace_0zŇtrace_1

Ótrace_0
Ôtrace_12ŕ
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1035823
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1036079ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zÓtrace_0zÔtrace_1
Ë
Ő	variables
Ötrainable_variables
×regularization_losses
Ř	keras_api
+Ů&call_and_return_all_conditional_losses
Ú__call__
	Űcell
Ü
state_spec"
_tf_keras_rnn_layer
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ýnon_trainable_variables
Ţlayers
ßmetrics
 ŕlayer_regularization_losses
álayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ĺ
âtrace_0
ătrace_12Ş
2__inference_module_wrapper_7_layer_call_fn_1036550
2__inference_module_wrapper_7_layer_call_fn_1036559ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zâtrace_0zătrace_1

ätrace_0
ĺtrace_12ŕ
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036570
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036581ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zätrace_0zĺtrace_1
Á
ćtrainable_variables
ç	variables
čregularization_losses
é	keras_api
+ę&call_and_return_all_conditional_losses
ë__call__

Ykernel
Zbias"
_tf_keras_layer
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ěnon_trainable_variables
ílayers
îmetrics
 ďlayer_regularization_losses
đlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ĺ
ńtrace_0
ňtrace_12Ş
2__inference_module_wrapper_8_layer_call_fn_1036590
2__inference_module_wrapper_8_layer_call_fn_1036599ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zńtrace_0zňtrace_1

ótrace_0
ôtrace_12ŕ
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036610
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036621ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 zótrace_0zôtrace_1
Á
őtrainable_variables
ö	variables
÷regularization_losses
ř	keras_api
+ů&call_and_return_all_conditional_losses
ú__call__

[kernel
\bias"
_tf_keras_layer
6:4 2module_wrapper/conv2d/kernel
(:& 2module_wrapper/conv2d/bias
::8  2 module_wrapper_2/conv2d_1/kernel
,:* 2module_wrapper_2/conv2d_1/bias
::8
12&module_wrapper_6/lstm/lstm_cell/kernel
D:B
20module_wrapper_6/lstm/lstm_cell/recurrent_kernel
3:12$module_wrapper_6/lstm/lstm_cell/bias
1:/
2module_wrapper_7/dense/kernel
*:(2module_wrapper_7/dense/bias
2:0	2module_wrapper_8/dense_1/kernel
+:)2module_wrapper_8/dense_1/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
ű0
ü1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_layer_call_fn_1034005module_wrapper_input"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ýBú
,__inference_sequential_layer_call_fn_1034721inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ýBú
,__inference_sequential_layer_call_fn_1034748inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
,__inference_sequential_layer_call_fn_1034593module_wrapper_input"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_1035045inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
G__inference_sequential_layer_call_and_return_conditional_losses_1035342inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŚBŁ
G__inference_sequential_layer_call_and_return_conditional_losses_1034628module_wrapper_input"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŚBŁ
G__inference_sequential_layer_call_and_return_conditional_losses_1034663module_wrapper_input"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
k0
ý1
ţ2
˙3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
y
ý0
˙1
2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
y
ţ0
1
2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
ż2źš
Ž˛Ş
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
ŮBÖ
%__inference_signature_wrapper_1034694module_wrapper_input"
˛
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
annotationsŞ *
 
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
Bţ
0__inference_module_wrapper_layer_call_fn_1035351args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
Bţ
0__inference_module_wrapper_layer_call_fn_1035360args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035371args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035382args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
ł
layers
{trainable_variables
 layer_regularization_losses
|	variables
metrics
non_trainable_variables
layer_metrics
}regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
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
B
2__inference_module_wrapper_1_layer_call_fn_1035388args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_1_layer_call_fn_1035393args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035398args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035403args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
trainable_variables
 layer_regularization_losses
	variables
metrics
non_trainable_variables
layer_metrics
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Î
trace_02Ż
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1035409ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ztrace_0
ł
trace_02
/__inference_max_pooling2d_layer_call_fn_1035415ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ztrace_0
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
B
2__inference_module_wrapper_2_layer_call_fn_1035424args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_2_layer_call_fn_1035433args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035444args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035455args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layers
trainable_variables
  layer_regularization_losses
	variables
Ąmetrics
˘non_trainable_variables
Łlayer_metrics
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
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
B
2__inference_module_wrapper_3_layer_call_fn_1035460args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_3_layer_call_fn_1035465args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035470args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035475args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¤layers
¨trainable_variables
 Ľlayer_regularization_losses
Š	variables
Śmetrics
§non_trainable_variables
¨layer_metrics
Şregularization_losses
­__call__
+Ź&call_and_return_all_conditional_losses
'Ź"call_and_return_conditional_losses"
_generic_user_object
Đ
Štrace_02ą
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1035481ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙zŠtrace_0
ľ
Ştrace_02
1__inference_max_pooling2d_1_layer_call_fn_1035487ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙zŞtrace_0
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
B
2__inference_module_wrapper_4_layer_call_fn_1035492args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_4_layer_call_fn_1035497args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035503args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035509args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ťlayers
ˇtrainable_variables
 Źlayer_regularization_losses
¸	variables
­metrics
Žnon_trainable_variables
Żlayer_metrics
šregularization_losses
ź__call__
+ť&call_and_return_all_conditional_losses
'ť"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
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
B
2__inference_module_wrapper_5_layer_call_fn_1035514args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_5_layer_call_fn_1035519args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035532args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035545args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°layers
Ćtrainable_variables
 ąlayer_regularization_losses
Ç	variables
˛metrics
łnon_trainable_variables
´layer_metrics
Čregularization_losses
Ë__call__
+Ę&call_and_return_all_conditional_losses
'Ę"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
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
B
2__inference_module_wrapper_6_layer_call_fn_1035556args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_6_layer_call_fn_1035567args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1035823args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1036079args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ĺ
ľlayers
 ślayer_regularization_losses
ˇstates
Ő	variables
¸metrics
šlayer_metrics
şnon_trainable_variables
Ötrainable_variables
×regularization_losses
Ú__call__
+Ů&call_and_return_all_conditional_losses
'Ů"call_and_return_conditional_losses"
_generic_user_object

ťtrace_0
źtrace_12Ţ
A__inference_lstm_layer_call_and_return_conditional_losses_1036899
A__inference_lstm_layer_call_and_return_conditional_losses_1037155Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zťtrace_0zźtrace_1
ă
˝trace_0
žtrace_12¨
&__inference_lstm_layer_call_fn_1036632
&__inference_lstm_layer_call_fn_1036643Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 z˝trace_0zžtrace_1
č
żtrainable_variables
Ŕ	variables
Áregularization_losses
Â	keras_api
+Ă&call_and_return_all_conditional_losses
Ä__call__
Ĺ
state_size

Vkernel
Wrecurrent_kernel
Xbias"
_tf_keras_layer
 "
trackable_list_wrapper
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
B
2__inference_module_wrapper_7_layer_call_fn_1036550args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_7_layer_call_fn_1036559args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036570args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036581args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ćlayers
ćtrainable_variables
 Çlayer_regularization_losses
ç	variables
Čmetrics
Énon_trainable_variables
Ęlayer_metrics
čregularization_losses
ë__call__
+ę&call_and_return_all_conditional_losses
'ę"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
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
B
2__inference_module_wrapper_8_layer_call_fn_1036590args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
2__inference_module_wrapper_8_layer_call_fn_1036599args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036610args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036621args_0"ż
ś˛˛
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ëlayers
őtrainable_variables
 Ělayer_regularization_losses
ö	variables
Ímetrics
Înon_trainable_variables
Ďlayer_metrics
÷regularization_losses
ú__call__
+ů&call_and_return_all_conditional_losses
'ů"call_and_return_conditional_losses"
_generic_user_object
¨2Ľ˘
˛
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
annotationsŞ *
 
¨2Ľ˘
˛
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
annotationsŞ *
 
R
Đ	variables
Ń	keras_api

Ňtotal

Ócount"
_tf_keras_metric
c
Ô	variables
Ő	keras_api

Ötotal

×count
Ř
_fn_kwargs"
_tf_keras_metric
;:9 2#Adam/m/module_wrapper/conv2d/kernel
;:9 2#Adam/v/module_wrapper/conv2d/kernel
-:+ 2!Adam/m/module_wrapper/conv2d/bias
-:+ 2!Adam/v/module_wrapper/conv2d/bias
?:=  2'Adam/m/module_wrapper_2/conv2d_1/kernel
?:=  2'Adam/v/module_wrapper_2/conv2d_1/kernel
1:/ 2%Adam/m/module_wrapper_2/conv2d_1/bias
1:/ 2%Adam/v/module_wrapper_2/conv2d_1/bias
?:=
12-Adam/m/module_wrapper_6/lstm/lstm_cell/kernel
?:=
12-Adam/v/module_wrapper_6/lstm/lstm_cell/kernel
I:G
27Adam/m/module_wrapper_6/lstm/lstm_cell/recurrent_kernel
I:G
27Adam/v/module_wrapper_6/lstm/lstm_cell/recurrent_kernel
8:62+Adam/m/module_wrapper_6/lstm/lstm_cell/bias
8:62+Adam/v/module_wrapper_6/lstm/lstm_cell/bias
6:4
2$Adam/m/module_wrapper_7/dense/kernel
6:4
2$Adam/v/module_wrapper_7/dense/kernel
/:-2"Adam/m/module_wrapper_7/dense/bias
/:-2"Adam/v/module_wrapper_7/dense/bias
7:5	2&Adam/m/module_wrapper_8/dense_1/kernel
7:5	2&Adam/v/module_wrapper_8/dense_1/kernel
0:.2$Adam/m/module_wrapper_8/dense_1/bias
0:.2$Adam/v/module_wrapper_8/dense_1/bias
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
źBš
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1035409inputs"ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ĄB
/__inference_max_pooling2d_layer_call_fn_1035415inputs"ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
žBť
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1035481inputs"ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ŁB 
1__inference_max_pooling2d_1_layer_call_fn_1035487inputs"ŕ
˛
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
annotationsŞ *@˘=
;84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
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
(
Ű0"
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
ŞB§
A__inference_lstm_layer_call_and_return_conditional_losses_1036899inputs_0"Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ŞB§
A__inference_lstm_layer_call_and_return_conditional_losses_1037155inputs_0"Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
&__inference_lstm_layer_call_fn_1036632inputs_0"Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
&__inference_lstm_layer_call_fn_1036643inputs_0"Ő
Ě˛Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ůlayers
żtrainable_variables
 Úlayer_regularization_losses
Ŕ	variables
Űmetrics
Ünon_trainable_variables
Ýlayer_metrics
Áregularization_losses
Ä__call__
+Ă&call_and_return_all_conditional_losses
'Ă"call_and_return_conditional_losses"
_generic_user_object

Ţtrace_0
ßtrace_12Ń
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037278
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037367ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zŢtrace_0zßtrace_1
Ö
ŕtrace_0
átrace_12
+__inference_lstm_cell_layer_call_fn_1037172
+__inference_lstm_cell_layer_call_fn_1037189ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 zŕtrace_0zátrace_1
 "
trackable_list_wrapper
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
0
Ň0
Ó1"
trackable_list_wrapper
.
Đ	variables"
_generic_user_object
:  (2total
:  (2count
0
Ö0
×1"
trackable_list_wrapper
.
Ô	variables"
_generic_user_object
:  (2total
:  (2count
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
ŞB§
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037278inputsstates_0states_1"ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ŞB§
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037367inputsstates_0states_1"ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
+__inference_lstm_cell_layer_call_fn_1037172inputsstates_0states_1"ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
+__inference_lstm_cell_layer_call_fn_1037189inputsstates_0states_1"ž
ľ˛ą
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 Ŕ
"__inference__wrapped_model_1033603RSTUVXWYZ[\E˘B
;˘8
63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@
Ş "CŞ@
>
module_wrapper_8*'
module_wrapper_8˙˙˙˙˙˙˙˙˙ç
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037278VXW˘
y˘v
!
inputs˙˙˙˙˙˙˙˙˙1
M˘J
# 
states_0˙˙˙˙˙˙˙˙˙
# 
states_1˙˙˙˙˙˙˙˙˙
p 
Ş "˘
˘~
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
UR
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
'$
tensor_0_1_1˙˙˙˙˙˙˙˙˙
 ç
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1037367VXW˘
y˘v
!
inputs˙˙˙˙˙˙˙˙˙1
M˘J
# 
states_0˙˙˙˙˙˙˙˙˙
# 
states_1˙˙˙˙˙˙˙˙˙
p
Ş "˘
˘~
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
UR
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
'$
tensor_0_1_1˙˙˙˙˙˙˙˙˙
 š
+__inference_lstm_cell_layer_call_fn_1037172VXW˘
y˘v
!
inputs˙˙˙˙˙˙˙˙˙1
M˘J
# 
states_0˙˙˙˙˙˙˙˙˙
# 
states_1˙˙˙˙˙˙˙˙˙
p 
Ş "{˘x
# 
tensor_0˙˙˙˙˙˙˙˙˙
QN
%"

tensor_1_0˙˙˙˙˙˙˙˙˙
%"

tensor_1_1˙˙˙˙˙˙˙˙˙š
+__inference_lstm_cell_layer_call_fn_1037189VXW˘
y˘v
!
inputs˙˙˙˙˙˙˙˙˙1
M˘J
# 
states_0˙˙˙˙˙˙˙˙˙
# 
states_1˙˙˙˙˙˙˙˙˙
p
Ş "{˘x
# 
tensor_0˙˙˙˙˙˙˙˙˙
QN
%"

tensor_1_0˙˙˙˙˙˙˙˙˙
%"

tensor_1_1˙˙˙˙˙˙˙˙˙Ě
A__inference_lstm_layer_call_and_return_conditional_losses_1036899VXWP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1

 
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ě
A__inference_lstm_layer_call_and_return_conditional_losses_1037155VXWP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1

 
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ľ
&__inference_lstm_layer_call_fn_1036632{VXWP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1

 
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙Ľ
&__inference_lstm_layer_call_fn_1036643{VXWP˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙1

 
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙ö
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1035481ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Đ
1__inference_max_pooling2d_1_layer_call_fn_1035487R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ô
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1035409ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Î
/__inference_max_pooling2d_layer_call_fn_1035415R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Đ
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035398G˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙>> 
Ş

trainingp "4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Đ
M__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1035403G˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙>> 
Ş

trainingp"4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Ş
2__inference_module_wrapper_1_layer_call_fn_1035388tG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙>> 
Ş

trainingp ")&
unknown˙˙˙˙˙˙˙˙˙ Ş
2__inference_module_wrapper_1_layer_call_fn_1035393tG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙>> 
Ş

trainingp")&
unknown˙˙˙˙˙˙˙˙˙ Ő
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035444TUG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp "4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Ő
M__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1035455TUG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp"4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Ž
2__inference_module_wrapper_2_layer_call_fn_1035424xTUG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp ")&
unknown˙˙˙˙˙˙˙˙˙ Ž
2__inference_module_wrapper_2_layer_call_fn_1035433xTUG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp")&
unknown˙˙˙˙˙˙˙˙˙ Đ
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035470G˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp "4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Đ
M__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1035475G˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp"4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙ 
 Ş
2__inference_module_wrapper_3_layer_call_fn_1035460tG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp ")&
unknown˙˙˙˙˙˙˙˙˙ Ş
2__inference_module_wrapper_3_layer_call_fn_1035465tG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp")&
unknown˙˙˙˙˙˙˙˙˙ É
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035503xG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙1
 É
M__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1035509xG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp"-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙1
 Ł
2__inference_module_wrapper_4_layer_call_fn_1035492mG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp ""
unknown˙˙˙˙˙˙˙˙˙1Ł
2__inference_module_wrapper_4_layer_call_fn_1035497mG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙ 
Ş

trainingp""
unknown˙˙˙˙˙˙˙˙˙1Ć
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035532u@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙1
 Ć
M__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1035545u@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp"1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙1
  
2__inference_module_wrapper_5_layer_call_fn_1035514j@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp "&#
unknown˙˙˙˙˙˙˙˙˙1 
2__inference_module_wrapper_5_layer_call_fn_1035519j@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp"&#
unknown˙˙˙˙˙˙˙˙˙1Ë
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1035823zVXWD˘A
*˘'
%"
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ë
M__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1036079zVXWD˘A
*˘'
%"
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp"-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ľ
2__inference_module_wrapper_6_layer_call_fn_1035556oVXWD˘A
*˘'
%"
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp ""
unknown˙˙˙˙˙˙˙˙˙Ľ
2__inference_module_wrapper_6_layer_call_fn_1035567oVXWD˘A
*˘'
%"
args_0˙˙˙˙˙˙˙˙˙1
Ş

trainingp""
unknown˙˙˙˙˙˙˙˙˙Ć
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036570uYZ@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ć
M__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1036581uYZ@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp"-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
  
2__inference_module_wrapper_7_layer_call_fn_1036550jYZ@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp ""
unknown˙˙˙˙˙˙˙˙˙ 
2__inference_module_wrapper_7_layer_call_fn_1036559jYZ@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp""
unknown˙˙˙˙˙˙˙˙˙Ĺ
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036610t[\@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ĺ
M__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1036621t[\@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
2__inference_module_wrapper_8_layer_call_fn_1036590i[\@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp "!
unknown˙˙˙˙˙˙˙˙˙
2__inference_module_wrapper_8_layer_call_fn_1036599i[\@˘=
&˘#
!
args_0˙˙˙˙˙˙˙˙˙
Ş

trainingp"!
unknown˙˙˙˙˙˙˙˙˙Ó
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035371RSG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙@@
Ş

trainingp "4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙>> 
 Ó
K__inference_module_wrapper_layer_call_and_return_conditional_losses_1035382RSG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙@@
Ş

trainingp"4˘1
*'
tensor_0˙˙˙˙˙˙˙˙˙>> 
 Ź
0__inference_module_wrapper_layer_call_fn_1035351xRSG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙@@
Ş

trainingp ")&
unknown˙˙˙˙˙˙˙˙˙>> Ź
0__inference_module_wrapper_layer_call_fn_1035360xRSG˘D
-˘*
(%
args_0˙˙˙˙˙˙˙˙˙@@
Ş

trainingp")&
unknown˙˙˙˙˙˙˙˙˙>> Ö
G__inference_sequential_layer_call_and_return_conditional_losses_1034628RSTUVXWYZ[\M˘J
C˘@
63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ö
G__inference_sequential_layer_call_and_return_conditional_losses_1034663RSTUVXWYZ[\M˘J
C˘@
63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ç
G__inference_sequential_layer_call_and_return_conditional_losses_1035045|RSTUVXWYZ[\?˘<
5˘2
(%
inputs˙˙˙˙˙˙˙˙˙@@
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ç
G__inference_sequential_layer_call_and_return_conditional_losses_1035342|RSTUVXWYZ[\?˘<
5˘2
(%
inputs˙˙˙˙˙˙˙˙˙@@
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ż
,__inference_sequential_layer_call_fn_1034005RSTUVXWYZ[\M˘J
C˘@
63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ż
,__inference_sequential_layer_call_fn_1034593RSTUVXWYZ[\M˘J
C˘@
63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ą
,__inference_sequential_layer_call_fn_1034721qRSTUVXWYZ[\?˘<
5˘2
(%
inputs˙˙˙˙˙˙˙˙˙@@
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ą
,__inference_sequential_layer_call_fn_1034748qRSTUVXWYZ[\?˘<
5˘2
(%
inputs˙˙˙˙˙˙˙˙˙@@
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ű
%__inference_signature_wrapper_1034694ąRSTUVXWYZ[\]˘Z
˘ 
SŞP
N
module_wrapper_input63
module_wrapper_input˙˙˙˙˙˙˙˙˙@@"CŞ@
>
module_wrapper_8*'
module_wrapper_8˙˙˙˙˙˙˙˙˙