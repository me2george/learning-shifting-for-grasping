ня$
ш8┬8
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

╣
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
╖
FlatMapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
,
Floor
x"T
y"T"
Ttype:
2
И
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%╖╤8"
data_formatstringNHWC"
is_trainingbool(
░
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%╖╤8"
data_formatstringNHWC"
is_trainingbool(
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
З
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
Л
IteratorFromStringHandle
string_handle
resource_handle" 
output_types
list(type)
 (""
output_shapeslist(shape)
 (И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
2
L2Loss
t"T
output"T"
Ttype:
2
,
MakeIterator
dataset
iteratorИ
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
╙
ParallelMapDataset
input_dataset
other_arguments2
Targuments
num_parallel_calls

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
Ў
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
З
StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
~
TensorDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0И
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.12v1.10.1-0-g4dcfddcИ╤ 
U
tensors/component_0Const*
dtype0*
_output_shapes
: *
value	B : 
T
num_parallel_callsConst*
value	B :*
dtype0*
_output_shapes
: 
W
tensors_1/component_0Const*
value	B : *
dtype0*
_output_shapes
: 
G
handlePlaceholder*
dtype0*
_output_shapes
: *
shape: 
┴
IteratorFromStringHandleIteratorFromStringHandlehandle*S
output_shapesB
@:+                           :         *
_output_shapes
: *
output_types
2
b
IteratorToStringHandleIteratorToStringHandleIteratorFromStringHandle*
_output_shapes
: 
╜
IteratorIterator*
output_types
2*
shared_name *S
output_shapesB
@:+                           :         *
	container *
_output_shapes
: 
Ч
TensorDatasetTensorDatasettensors/component_0*
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator*
_output_shapes
: 
Э
FlatMapDatasetFlatMapDatasetTensorDataset*S
output_shapesB
@:+                           :         *
_class
loc:@Iterator*8
f3R1
/tf_data_structured_function_wrapper_aoQHyWIdOYc*
output_types
2*

Targuments
 *
_output_shapes
: 
║
ParallelMapDatasetParallelMapDatasetFlatMapDatasetnum_parallel_calls*8
f3R1
/tf_data_structured_function_wrapper_sQDCgbB8YDo*
output_types
2*

Targuments
 *
_output_shapes
: *S
output_shapesB
@:+                           :         *
_class
loc:@Iterator
W
MakeIteratorMakeIteratorParallelMapDatasetIterator*
_class
loc:@Iterator
T
IteratorToStringHandle_1IteratorToStringHandleIterator*
_output_shapes
: 
З

Iterator_1Iterator*
output_shapes

::*
	container *
_output_shapes
: *
output_types
2*
shared_name 
Э
TensorDataset_1TensorDatasettensors_1/component_0*
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator_1*
_output_shapes
: 
ы
FlatMapDataset_1FlatMapDatasetTensorDataset_1*8
f3R1
/tf_data_structured_function_wrapper_JI6URYcldEI*
output_types
2*

Targuments
 *
_output_shapes
: *
output_shapes

::*
_class
loc:@Iterator_1
[
MakeIterator_1MakeIteratorFlatMapDataset_1
Iterator_1*
_class
loc:@Iterator_1
V
IteratorToStringHandle_2IteratorToStringHandle
Iterator_1*
_output_shapes
: 
 
IteratorGetNextIteratorGetNextIteratorFromStringHandle*T
_output_shapesB
@:+                           :         *
output_types
2*S
output_shapesB
@:+                           :         
P
training/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
d
trainingPlaceholderWithDefaulttraining/input*
dtype0
*
_output_shapes
: *
shape: 
c
apply_dropoutPlaceholderWithDefaulttraining*
dtype0
*
_output_shapes
: *
shape: 
n
imageIdentityIteratorGetNext*A
_output_shapes/
-:+                           *
T0
V
labelIdentityIteratorGetNext:1*'
_output_shapes
:         *
T0
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             * 
_class
loc:@conv2d/kernel
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *nзо╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *nзо=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed*
T0* 
_class
loc:@conv2d/kernel*
seed2
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ш
1conv2d/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
2conv2d/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d/kernel/read*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
▄
+conv2d/kernel/Regularizer/l1_l2_regularizerMul1conv2d/kernel/Regularizer/l1_l2_regularizer/scale2conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *
_class
loc:@conv2d/bias
Ч
conv2d/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
Ф
/conv2d/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Н
0conv2d/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d/bias/read*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
╘
)conv2d/bias/Regularizer/l1_l2_regularizerMul/conv2d/bias/Regularizer/l1_l2_regularizer/scale0conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
э
conv2d/Conv2DConv2Dimageconv2d/kernel/read*
paddingVALID*A
_output_shapes/
-:+                            *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Э
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                            
[
conv2d/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
П
conv2d/LeakyRelu/mulMulconv2d/LeakyRelu/alphaconv2d/BiasAdd*
T0*A
_output_shapes/
-:+                            
Н
conv2d/LeakyReluMaximumconv2d/LeakyRelu/mulconv2d/BiasAdd*
T0*A
_output_shapes/
-:+                            
е
*batch_normalization/gamma/Initializer/onesConst*
valueB *  А?*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
│
batch_normalization/gamma
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
э
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
Ш
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
д
*batch_normalization/beta/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
▒
batch_normalization/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
ъ
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
Х
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
▓
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *2
_class(
&$loc:@batch_normalization/moving_mean
┐
batch_normalization/moving_mean
VariableV2*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
Ж
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: 
к
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
╣
4batch_normalization/moving_variance/Initializer/onesConst*
valueB *  А?*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
╟
#batch_normalization/moving_variance
VariableV2*6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Х
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
╢
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
`
batch_normalization/cond/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
q
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
T0
*
_output_shapes
: 
o
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
T0
*
_output_shapes
: 
W
 batch_normalization/cond/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Е
batch_normalization/cond/ConstConst"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
З
 batch_normalization/cond/Const_1Const"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
╡
'batch_normalization/cond/FusedBatchNormFusedBatchNorm0batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:12batch_normalization/cond/FusedBatchNorm/Switch_2:1batch_normalization/cond/Const batch_normalization/cond/Const_1*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+                            : : : : *
epsilon%oГ:*
T0
К
.batch_normalization/cond/FusedBatchNorm/SwitchSwitchconv2d/LeakyRelu batch_normalization/cond/pred_id*
T0*#
_class
loc:@conv2d/LeakyRelu*n
_output_shapes\
Z:+                            :+                            
╒
0batch_normalization/cond/FusedBatchNorm/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma* 
_output_shapes
: : 
╙
0batch_normalization/cond/FusedBatchNorm/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id* 
_output_shapes
: : *
T0*+
_class!
loc:@batch_normalization/beta
▌
)batch_normalization/cond/FusedBatchNorm_1FusedBatchNorm0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_22batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                            : : : : *
epsilon%oГ:*
T0
М
0batch_normalization/cond/FusedBatchNorm_1/SwitchSwitchconv2d/LeakyRelu batch_normalization/cond/pred_id*
T0*#
_class
loc:@conv2d/LeakyRelu*n
_output_shapes\
Z:+                            :+                            
╫
2batch_normalization/cond/FusedBatchNorm_1/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma* 
_output_shapes
: : 
╒
2batch_normalization/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
: : 
у
2batch_normalization/cond/FusedBatchNorm_1/Switch_3Switch$batch_normalization/moving_mean/read batch_normalization/cond/pred_id*
T0*2
_class(
&$loc:@batch_normalization/moving_mean* 
_output_shapes
: : 
ы
2batch_normalization/cond/FusedBatchNorm_1/Switch_4Switch(batch_normalization/moving_variance/read batch_normalization/cond/pred_id*
T0*6
_class,
*(loc:@batch_normalization/moving_variance* 
_output_shapes
: : 
╥
batch_normalization/cond/MergeMerge)batch_normalization/cond/FusedBatchNorm_1'batch_normalization/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+                            : 
▒
 batch_normalization/cond/Merge_1Merge+batch_normalization/cond/FusedBatchNorm_1:1)batch_normalization/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

: : 
▒
 batch_normalization/cond/Merge_2Merge+batch_normalization/cond/FusedBatchNorm_1:2)batch_normalization/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

: : 
b
!batch_normalization/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_1/switch_tIdentity#batch_normalization/cond_1/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_1/switch_fIdentity!batch_normalization/cond_1/Switch*
T0
*
_output_shapes
: 
Y
"batch_normalization/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Л
 batch_normalization/cond_1/ConstConst$^batch_normalization/cond_1/switch_t*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
Н
"batch_normalization/cond_1/Const_1Const$^batch_normalization/cond_1/switch_f*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ы
 batch_normalization/cond_1/MergeMerge"batch_normalization/cond_1/Const_1 batch_normalization/cond_1/Const*
T0*
N*
_output_shapes
: : 
в
)batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  А?*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
╨
'batch_normalization/AssignMovingAvg/subSub)batch_normalization/AssignMovingAvg/sub/x batch_normalization/cond_1/Merge*
_output_shapes
: *
T0*2
_class(
&$loc:@batch_normalization/moving_mean
╤
)batch_normalization/AssignMovingAvg/sub_1Sub$batch_normalization/moving_mean/read batch_normalization/cond/Merge_1*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
█
'batch_normalization/AssignMovingAvg/mulMul)batch_normalization/AssignMovingAvg/sub_1'batch_normalization/AssignMovingAvg/sub*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
ц
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
и
+batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
╪
)batch_normalization/AssignMovingAvg_1/subSub+batch_normalization/AssignMovingAvg_1/sub/x batch_normalization/cond_1/Merge*
_output_shapes
: *
T0*6
_class,
*(loc:@batch_normalization/moving_variance
█
+batch_normalization/AssignMovingAvg_1/sub_1Sub(batch_normalization/moving_variance/read batch_normalization/cond/Merge_2*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
х
)batch_normalization/AssignMovingAvg_1/mulMul+batch_normalization/AssignMovingAvg_1/sub_1)batch_normalization/AssignMovingAvg_1/sub*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
Є
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/mul*
use_locking( *
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
^
dropout/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
_output_shapes
: *
T0

P
dropout/cond/pred_idIdentityapply_dropout*
_output_shapes
: *
T0

{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
Н
!dropout/cond/dropout/Shape/SwitchSwitchbatch_normalization/cond/Mergedropout/cond/pred_id*
T0*1
_class'
%#loc:@batch_normalization/cond/Merge*n
_output_shapes\
Z:+                            :+                            
Д
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╨
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*
T0*
dtype0*
seed2n*A
_output_shapes/
-:+                            *

seed
б
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
╓
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*A
_output_shapes/
-:+                            *
T0
╚
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*A
_output_shapes/
-:+                            
░
dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*A
_output_shapes/
-:+                            *
T0
Й
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*
T0*A
_output_shapes/
-:+                            
┤
dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*A
_output_shapes/
-:+                            *
T0
б
dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*A
_output_shapes/
-:+                            
Л
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*A
_output_shapes/
-:+                            
И
dropout/cond/Identity/SwitchSwitchbatch_normalization/cond/Mergedropout/cond/pred_id*
T0*1
_class'
%#loc:@batch_normalization/cond/Merge*n
_output_shapes\
Z:+                            :+                            
г
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*
N*C
_output_shapes1
/:+                            : 
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *▀X`╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *▀X`=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
seed2|*
dtype0*&
_output_shapes
: 0*

seed*
T0*"
_class
loc:@conv2d_1/kernel
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
: 0*
T0*"
_class
loc:@conv2d_1/kernel
╖
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
: 0*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 0
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
Ь
3conv2d_1/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_1/kernel/read*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ф
-conv2d_1/kernel/Regularizer/l1_l2_regularizerMul3conv2d_1/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
О
conv2d_1/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
Ы
conv2d_1/bias
VariableV2*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape:0
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
_output_shapes
:0*
T0* 
_class
loc:@conv2d_1/bias
Ш
1conv2d_1/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
У
2conv2d_1/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_1/bias/read*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
▄
+conv2d_1/bias/Regularizer/l1_l2_regularizerMul1conv2d_1/bias/Regularizer/l1_l2_regularizer/scale2conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
■
conv2d_1/Conv2DConv2Ddropout/cond/Mergeconv2d_1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           0
г
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           0
]
conv2d_1/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
Х
conv2d_1/LeakyRelu/mulMulconv2d_1/LeakyRelu/alphaconv2d_1/BiasAdd*
T0*A
_output_shapes/
-:+                           0
У
conv2d_1/LeakyReluMaximumconv2d_1/LeakyRelu/mulconv2d_1/BiasAdd*
T0*A
_output_shapes/
-:+                           0
й
,batch_normalization_1/gamma/Initializer/onesConst*
valueB0*  А?*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:0
╖
batch_normalization_1/gamma
VariableV2*.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name 
ї
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
Ю
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
_output_shapes
:0*
T0*.
_class$
" loc:@batch_normalization_1/gamma
и
,batch_normalization_1/beta/Initializer/zerosConst*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:0
╡
batch_normalization_1/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:0*
dtype0*
_output_shapes
:0
Є
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
Ы
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:0
╢
3batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB0*    *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:0
├
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:0*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:0
О
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
░
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:0*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
╜
6batch_normalization_1/moving_variance/Initializer/onesConst*
valueB0*  А?*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:0
╦
%batch_normalization_1/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:0*
dtype0*
_output_shapes
:0
Э
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
╝
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
b
!batch_normalization_1/cond/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
u
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
_output_shapes
: *
T0

Y
"batch_normalization_1/cond/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Й
 batch_normalization_1/cond/ConstConst$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Л
"batch_normalization_1/cond/Const_1Const$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
┴
)batch_normalization_1/cond/FusedBatchNormFusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm/Switch:14batch_normalization_1/cond/FusedBatchNorm/Switch_1:14batch_normalization_1/cond/FusedBatchNorm/Switch_2:1 batch_normalization_1/cond/Const"batch_normalization_1/cond/Const_1*
T0*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+                           0:0:0:0:0*
epsilon%oГ:
Т
0batch_normalization_1/cond/FusedBatchNorm/SwitchSwitchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id*
T0*%
_class
loc:@conv2d_1/LeakyRelu*n
_output_shapes\
Z:+                           0:+                           0
▌
2batch_normalization_1/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
:0:0
█
2batch_normalization_1/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
:0:0
щ
+batch_normalization_1/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm_1/Switch4batch_normalization_1/cond/FusedBatchNorm_1/Switch_14batch_normalization_1/cond/FusedBatchNorm_1/Switch_24batch_normalization_1/cond/FusedBatchNorm_1/Switch_34batch_normalization_1/cond/FusedBatchNorm_1/Switch_4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                           0:0:0:0:0
Ф
2batch_normalization_1/cond/FusedBatchNorm_1/SwitchSwitchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id*
T0*%
_class
loc:@conv2d_1/LeakyRelu*n
_output_shapes\
Z:+                           0:+                           0
▀
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
:0:0
▌
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
:0:0
ы
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean* 
_output_shapes
:0:0
є
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance* 
_output_shapes
:0:0
╪
 batch_normalization_1/cond/MergeMerge+batch_normalization_1/cond/FusedBatchNorm_1)batch_normalization_1/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+                           0: 
╖
"batch_normalization_1/cond/Merge_1Merge-batch_normalization_1/cond/FusedBatchNorm_1:1+batch_normalization_1/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:0: 
╖
"batch_normalization_1/cond/Merge_2Merge-batch_normalization_1/cond/FusedBatchNorm_1:2+batch_normalization_1/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:0: 
d
#batch_normalization_1/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_1/switch_tIdentity%batch_normalization_1/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_1/cond_1/switch_fIdentity#batch_normalization_1/cond_1/Switch*
_output_shapes
: *
T0

[
$batch_normalization_1/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
П
"batch_normalization_1/cond_1/ConstConst&^batch_normalization_1/cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *дp}?
С
$batch_normalization_1/cond_1/Const_1Const&^batch_normalization_1/cond_1/switch_f*
valueB
 *  А?*
dtype0*
_output_shapes
: 
б
"batch_normalization_1/cond_1/MergeMerge$batch_normalization_1/cond_1/Const_1"batch_normalization_1/cond_1/Const*
T0*
N*
_output_shapes
: : 
ж
+batch_normalization_1/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*4
_class*
(&loc:@batch_normalization_1/moving_mean
╪
)batch_normalization_1/AssignMovingAvg/subSub+batch_normalization_1/AssignMovingAvg/sub/x"batch_normalization_1/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
┘
+batch_normalization_1/AssignMovingAvg/sub_1Sub&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
у
)batch_normalization_1/AssignMovingAvg/mulMul+batch_normalization_1/AssignMovingAvg/sub_1)batch_normalization_1/AssignMovingAvg/sub*
_output_shapes
:0*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
ю
%batch_normalization_1/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
м
-batch_normalization_1/AssignMovingAvg_1/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*8
_class.
,*loc:@batch_normalization_1/moving_variance
р
+batch_normalization_1/AssignMovingAvg_1/subSub-batch_normalization_1/AssignMovingAvg_1/sub/x"batch_normalization_1/cond_1/Merge*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
у
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
э
+batch_normalization_1/AssignMovingAvg_1/mulMul-batch_normalization_1/AssignMovingAvg_1/sub_1+batch_normalization_1/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
·
'batch_normalization_1/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
`
dropout_1/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
R
dropout_1/cond/pred_idIdentityapply_dropout*
_output_shapes
: *
T0


 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ЪЩ?
Б
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Х
#dropout_1/cond/dropout/Shape/SwitchSwitch batch_normalization_1/cond/Mergedropout_1/cond/pred_id*n
_output_shapes\
Z:+                           0:+                           0*
T0*3
_class)
'%loc:@batch_normalization_1/cond/Merge
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╒
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seed2╨*A
_output_shapes/
-:+                           0*

seed*
T0
з
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
▄
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*A
_output_shapes/
-:+                           0
╬
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*A
_output_shapes/
-:+                           0
╢
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*A
_output_shapes/
-:+                           0*
T0
Н
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*A
_output_shapes/
-:+                           0
║
dropout_1/cond/dropout/divRealDiv%dropout_1/cond/dropout/Shape/Switch:1 dropout_1/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           0
з
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*A
_output_shapes/
-:+                           0
П
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*A
_output_shapes/
-:+                           0
Р
dropout_1/cond/Identity/SwitchSwitch batch_normalization_1/cond/Mergedropout_1/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_1/cond/Merge*n
_output_shapes\
Z:+                           0:+                           0
й
dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul*
T0*
N*C
_output_shapes1
/:+                           0: 
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *гЫ=╜*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *гЫ==*"
_class
loc:@conv2d_2/kernel
ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*

seed*
T0*"
_class
loc:@conv2d_2/kernel*
seed2▐*
dtype0*&
_output_shapes
:0@
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
╖
conv2d_2/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:0@*
dtype0*&
_output_shapes
:0@
█
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:0@*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
Ь
3conv2d_2/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_2/kernel/read*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ф
-conv2d_2/kernel/Regularizer/l1_l2_regularizerMul3conv2d_2/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
О
conv2d_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_2/bias
Ы
conv2d_2/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container 
╛
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
t
conv2d_2/bias/readIdentityconv2d_2/bias*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
Ш
1conv2d_2/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
У
2conv2d_2/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_2/bias/read*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
▄
+conv2d_2/bias/Regularizer/l1_l2_regularizerMul1conv2d_2/bias/Regularizer/l1_l2_regularizer/scale2conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
А
conv2d_2/Conv2DConv2Ddropout_1/cond/Mergeconv2d_2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @
г
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+                           @
]
conv2d_2/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
Х
conv2d_2/LeakyRelu/mulMulconv2d_2/LeakyRelu/alphaconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+                           @
У
conv2d_2/LeakyReluMaximumconv2d_2/LeakyRelu/mulconv2d_2/BiasAdd*A
_output_shapes/
-:+                           @*
T0
й
,batch_normalization_2/gamma/Initializer/onesConst*
valueB@*  А?*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
╖
batch_normalization_2/gamma
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma
ї
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
Ю
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
и
,batch_normalization_2/beta/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
╡
batch_normalization_2/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container 
Є
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
Ы
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
╢
3batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB@*    *4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
├
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:@
О
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@
░
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
╜
6batch_normalization_2/moving_variance/Initializer/onesConst*
valueB@*  А?*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:@
╦
%batch_normalization_2/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:@
Э
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
╝
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
b
!batch_normalization_2/cond/SwitchSwitchtrainingtraining*
_output_shapes
: : *
T0

u
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
_output_shapes
: *
T0

Y
"batch_normalization_2/cond/pred_idIdentitytraining*
_output_shapes
: *
T0

Й
 batch_normalization_2/cond/ConstConst$^batch_normalization_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB 
Л
"batch_normalization_2/cond/Const_1Const$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
┴
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:14batch_normalization_2/cond/FusedBatchNorm/Switch_2:1 batch_normalization_2/cond/Const"batch_normalization_2/cond/Const_1*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+                           @:@:@:@:@
Т
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id*
T0*%
_class
loc:@conv2d_2/LeakyRelu*n
_output_shapes\
Z:+                           @:+                           @
▌
2batch_normalization_2/cond/FusedBatchNorm/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma* 
_output_shapes
:@:@
█
2batch_normalization_2/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
щ
+batch_normalization_2/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_24batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                           @:@:@:@:@*
epsilon%oГ:*
T0
Ф
2batch_normalization_2/cond/FusedBatchNorm_1/SwitchSwitchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id*
T0*%
_class
loc:@conv2d_2/LeakyRelu*n
_output_shapes\
Z:+                           @:+                           @
▀
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma* 
_output_shapes
:@:@
▌
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_2/beta* 
_output_shapes
:@:@
ы
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
є
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance* 
_output_shapes
:@:@
╪
 batch_normalization_2/cond/MergeMerge+batch_normalization_2/cond/FusedBatchNorm_1)batch_normalization_2/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+                           @: 
╖
"batch_normalization_2/cond/Merge_1Merge-batch_normalization_2/cond/FusedBatchNorm_1:1+batch_normalization_2/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
╖
"batch_normalization_2/cond/Merge_2Merge-batch_normalization_2/cond/FusedBatchNorm_1:2+batch_normalization_2/cond/FusedBatchNorm:2*
N*
_output_shapes

:@: *
T0
d
#batch_normalization_2/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
y
%batch_normalization_2/cond_1/switch_tIdentity%batch_normalization_2/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_2/cond_1/switch_fIdentity#batch_normalization_2/cond_1/Switch*
T0
*
_output_shapes
: 
[
$batch_normalization_2/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
П
"batch_normalization_2/cond_1/ConstConst&^batch_normalization_2/cond_1/switch_t*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
С
$batch_normalization_2/cond_1/Const_1Const&^batch_normalization_2/cond_1/switch_f*
valueB
 *  А?*
dtype0*
_output_shapes
: 
б
"batch_normalization_2/cond_1/MergeMerge$batch_normalization_2/cond_1/Const_1"batch_normalization_2/cond_1/Const*
T0*
N*
_output_shapes
: : 
ж
+batch_normalization_2/AssignMovingAvg/sub/xConst*
valueB
 *  А?*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
╪
)batch_normalization_2/AssignMovingAvg/subSub+batch_normalization_2/AssignMovingAvg/sub/x"batch_normalization_2/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
┘
+batch_normalization_2/AssignMovingAvg/sub_1Sub&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
у
)batch_normalization_2/AssignMovingAvg/mulMul+batch_normalization_2/AssignMovingAvg/sub_1)batch_normalization_2/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
ю
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
м
-batch_normalization_2/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
р
+batch_normalization_2/AssignMovingAvg_1/subSub-batch_normalization_2/AssignMovingAvg_1/sub/x"batch_normalization_2/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
у
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
э
+batch_normalization_2/AssignMovingAvg_1/mulMul-batch_normalization_2/AssignMovingAvg_1/sub_1+batch_normalization_2/AssignMovingAvg_1/sub*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
·
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@*
use_locking( 
`
dropout_2/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
R
dropout_2/cond/pred_idIdentityapply_dropout*
T0
*
_output_shapes
: 

 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
Б
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
Х
#dropout_2/cond/dropout/Shape/SwitchSwitch batch_normalization_2/cond/Mergedropout_2/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_2/cond/Merge*n
_output_shapes\
Z:+                           @:+                           @
И
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
И
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╒
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
dtype0*
seed2▓*A
_output_shapes/
-:+                           @*

seed*
T0
з
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
▄
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*A
_output_shapes/
-:+                           @
╬
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*A
_output_shapes/
-:+                           @
╢
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0*A
_output_shapes/
-:+                           @
Н
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*A
_output_shapes/
-:+                           @
║
dropout_2/cond/dropout/divRealDiv%dropout_2/cond/dropout/Shape/Switch:1 dropout_2/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           @
з
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*A
_output_shapes/
-:+                           @*
T0
П
dropout_2/cond/IdentityIdentitydropout_2/cond/Identity/Switch*A
_output_shapes/
-:+                           @*
T0
Р
dropout_2/cond/Identity/SwitchSwitch batch_normalization_2/cond/Mergedropout_2/cond/pred_id*n
_output_shapes\
Z:+                           @:+                           @*
T0*3
_class)
'%loc:@batch_normalization_2/cond/Merge
й
dropout_2/cond/MergeMergedropout_2/cond/Identitydropout_2/cond/dropout/mul*
T0*
N*C
_output_shapes1
/:+                           @: 
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *hщ╝*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *hщ<*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
°
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*
seed2└*
dtype0*'
_output_shapes
:@О*

seed
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
ч
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
╣
conv2d_3/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@О*
dtype0*'
_output_shapes
:@О
▄
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О*
use_locking(
З
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
Ь
3conv2d_3/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_3/kernel/read*
_output_shapes
: *
T0*"
_class
loc:@conv2d_3/kernel
ф
-conv2d_3/kernel/Regularizer/l1_l2_regularizerMul3conv2d_3/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Р
conv2d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    * 
_class
loc:@conv2d_3/bias
Э
conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:О*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:О
┐
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
u
conv2d_3/bias/readIdentityconv2d_3/bias*
_output_shapes	
:О*
T0* 
_class
loc:@conv2d_3/bias
Ш
1conv2d_3/bias/Regularizer/l1_l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_3/bias
У
2conv2d_3/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_3/bias/read*
_output_shapes
: *
T0* 
_class
loc:@conv2d_3/bias
▄
+conv2d_3/bias/Regularizer/l1_l2_regularizerMul1conv2d_3/bias/Regularizer/l1_l2_regularizer/scale2conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
conv2d_3/Conv2DConv2Ddropout_2/cond/Mergeconv2d_3/kernel/read*B
_output_shapes0
.:,                           О*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
д
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,                           О
]
conv2d_3/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
Ц
conv2d_3/LeakyRelu/mulMulconv2d_3/LeakyRelu/alphaconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,                           О
Ф
conv2d_3/LeakyReluMaximumconv2d_3/LeakyRelu/mulconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,                           О
л
,batch_normalization_3/gamma/Initializer/onesConst*
valueBО*  А?*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:О
╣
batch_normalization_3/gamma
VariableV2*
shape:О*
dtype0*
_output_shapes	
:О*
shared_name *.
_class$
" loc:@batch_normalization_3/gamma*
	container 
Ў
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma
Я
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:О
к
,batch_normalization_3/beta/Initializer/zerosConst*
valueBО*    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes	
:О
╖
batch_normalization_3/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
	container *
shape:О*
dtype0*
_output_shapes	
:О
є
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О*
use_locking(
Ь
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
_output_shapes	
:О*
T0*-
_class#
!loc:@batch_normalization_3/beta
╕
3batch_normalization_3/moving_mean/Initializer/zerosConst*
valueBО*    *4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:О
┼
!batch_normalization_3/moving_mean
VariableV2*
dtype0*
_output_shapes	
:О*
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
	container *
shape:О
П
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
▒
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:О
┐
6batch_normalization_3/moving_variance/Initializer/onesConst*
valueBО*  А?*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:О
═
%batch_normalization_3/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance*
	container *
shape:О*
dtype0*
_output_shapes	
:О
Ю
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:О*
use_locking(
╜
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:О
b
!batch_normalization_3/cond/SwitchSwitchtrainingtraining*
_output_shapes
: : *
T0

u
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
: 
Y
"batch_normalization_3/cond/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Й
 batch_normalization_3/cond/ConstConst$^batch_normalization_3/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Л
"batch_normalization_3/cond/Const_1Const$^batch_normalization_3/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
╞
)batch_normalization_3/cond/FusedBatchNormFusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:14batch_normalization_3/cond/FusedBatchNorm/Switch_2:1 batch_normalization_3/cond/Const"batch_normalization_3/cond/Const_1*
data_formatNHWC*
is_training(*^
_output_shapesL
J:,                           О:О:О:О:О*
epsilon%oГ:*
T0
Ф
0batch_normalization_3/cond/FusedBatchNorm/SwitchSwitchconv2d_3/LeakyRelu"batch_normalization_3/cond/pred_id*
T0*%
_class
loc:@conv2d_3/LeakyRelu*p
_output_shapes^
\:,                           О:,                           О
▀
2batch_normalization_3/cond/FusedBatchNorm/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*"
_output_shapes
:О:О*
T0*.
_class$
" loc:@batch_normalization_3/gamma
▌
2batch_normalization_3/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta*"
_output_shapes
:О:О
ю
+batch_normalization_3/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_24batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,                           О:О:О:О:О
Ц
2batch_normalization_3/cond/FusedBatchNorm_1/SwitchSwitchconv2d_3/LeakyRelu"batch_normalization_3/cond/pred_id*
T0*%
_class
loc:@conv2d_3/LeakyRelu*p
_output_shapes^
\:,                           О:,                           О
с
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma*"
_output_shapes
:О:О
▀
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta*"
_output_shapes
:О:О
э
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_3/moving_mean/read"batch_normalization_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*"
_output_shapes
:О:О
ї
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_3/moving_variance/read"batch_normalization_3/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*"
_output_shapes
:О:О
┘
 batch_normalization_3/cond/MergeMerge+batch_normalization_3/cond/FusedBatchNorm_1)batch_normalization_3/cond/FusedBatchNorm*
T0*
N*D
_output_shapes2
0:,                           О: 
╕
"batch_normalization_3/cond/Merge_1Merge-batch_normalization_3/cond/FusedBatchNorm_1:1+batch_normalization_3/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes
	:О: 
╕
"batch_normalization_3/cond/Merge_2Merge-batch_normalization_3/cond/FusedBatchNorm_1:2+batch_normalization_3/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes
	:О: 
d
#batch_normalization_3/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
y
%batch_normalization_3/cond_1/switch_tIdentity%batch_normalization_3/cond_1/Switch:1*
_output_shapes
: *
T0

w
%batch_normalization_3/cond_1/switch_fIdentity#batch_normalization_3/cond_1/Switch*
_output_shapes
: *
T0

[
$batch_normalization_3/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
П
"batch_normalization_3/cond_1/ConstConst&^batch_normalization_3/cond_1/switch_t*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
С
$batch_normalization_3/cond_1/Const_1Const&^batch_normalization_3/cond_1/switch_f*
valueB
 *  А?*
dtype0*
_output_shapes
: 
б
"batch_normalization_3/cond_1/MergeMerge$batch_normalization_3/cond_1/Const_1"batch_normalization_3/cond_1/Const*
T0*
N*
_output_shapes
: : 
ж
+batch_normalization_3/AssignMovingAvg/sub/xConst*
valueB
 *  А?*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes
: 
╪
)batch_normalization_3/AssignMovingAvg/subSub+batch_normalization_3/AssignMovingAvg/sub/x"batch_normalization_3/cond_1/Merge*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
┌
+batch_normalization_3/AssignMovingAvg/sub_1Sub&batch_normalization_3/moving_mean/read"batch_normalization_3/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:О
ф
)batch_normalization_3/AssignMovingAvg/mulMul+batch_normalization_3/AssignMovingAvg/sub_1)batch_normalization_3/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:О
я
%batch_normalization_3/AssignMovingAvg	AssignSub!batch_normalization_3/moving_mean)batch_normalization_3/AssignMovingAvg/mul*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:О*
use_locking( 
м
-batch_normalization_3/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes
: 
р
+batch_normalization_3/AssignMovingAvg_1/subSub-batch_normalization_3/AssignMovingAvg_1/sub/x"batch_normalization_3/cond_1/Merge*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: 
ф
-batch_normalization_3/AssignMovingAvg_1/sub_1Sub*batch_normalization_3/moving_variance/read"batch_normalization_3/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:О
ю
+batch_normalization_3/AssignMovingAvg_1/mulMul-batch_normalization_3/AssignMovingAvg_1/sub_1+batch_normalization_3/AssignMovingAvg_1/sub*
_output_shapes	
:О*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
√
'batch_normalization_3/AssignMovingAvg_1	AssignSub%batch_normalization_3/moving_variance+batch_normalization_3/AssignMovingAvg_1/mul*
_output_shapes	
:О*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
`
dropout_3/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0
*
_output_shapes
: 
R
dropout_3/cond/pred_idIdentityapply_dropout*
T0
*
_output_shapes
: 

 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
valueB
 *333?*
dtype0*
_output_shapes
: 
Б
dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Ч
#dropout_3/cond/dropout/Shape/SwitchSwitch batch_normalization_3/cond/Mergedropout_3/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_3/cond/Merge*p
_output_shapes^
\:,                           О:,                           О
И
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
╓
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*
seed2Ф*B
_output_shapes0
.:,                           О*

seed*
T0
з
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
▌
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*B
_output_shapes0
.:,                           О*
T0
╧
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*B
_output_shapes0
.:,                           О
╖
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*
T0*B
_output_shapes0
.:,                           О
О
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*B
_output_shapes0
.:,                           О
╗
dropout_3/cond/dropout/divRealDiv%dropout_3/cond/dropout/Shape/Switch:1 dropout_3/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,                           О
и
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*B
_output_shapes0
.:,                           О*
T0
Р
dropout_3/cond/IdentityIdentitydropout_3/cond/Identity/Switch*
T0*B
_output_shapes0
.:,                           О
Т
dropout_3/cond/Identity/SwitchSwitch batch_normalization_3/cond/Mergedropout_3/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_3/cond/Merge*p
_output_shapes^
\:,                           О:,                           О
к
dropout_3/cond/MergeMergedropout_3/cond/Identitydropout_3/cond/dropout/mul*
T0*
N*D
_output_shapes2
0:,                           О: 
н
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *ж╛*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ж>*"
_class
loc:@conv2d_4/kernel
∙
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:ОА*

seed*
T0*"
_class
loc:@conv2d_4/kernel*
seed2в
┌
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Ў
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
ш
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
╗
conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:ОА*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape:ОА
▌
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
И
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
Ь
3conv2d_4/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_4/kernel/read*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
ф
-conv2d_4/kernel/Regularizer/l1_l2_regularizerMul3conv2d_4/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Р
conv2d_4/bias/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:А
Э
conv2d_4/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape:А
┐
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
u
conv2d_4/bias/readIdentityconv2d_4/bias*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:А
Ш
1conv2d_4/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
У
2conv2d_4/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_4/bias/read*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
▄
+conv2d_4/bias/Regularizer/l1_l2_regularizerMul1conv2d_4/bias/Regularizer/l1_l2_regularizer/scale2conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
conv2d_4/Conv2DConv2Ddropout_3/cond/Mergeconv2d_4/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*B
_output_shapes0
.:,                           А
д
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,                           А
]
conv2d_4/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
Ц
conv2d_4/LeakyRelu/mulMulconv2d_4/LeakyRelu/alphaconv2d_4/BiasAdd*
T0*B
_output_shapes0
.:,                           А
Ф
conv2d_4/LeakyReluMaximumconv2d_4/LeakyRelu/mulconv2d_4/BiasAdd*
T0*B
_output_shapes0
.:,                           А
`
dropout_4/cond/SwitchSwitchapply_dropoutapply_dropout*
_output_shapes
: : *
T0

]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0
*
_output_shapes
: 
R
dropout_4/cond/pred_idIdentityapply_dropout*
T0
*
_output_shapes
: 

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
valueB
 *333?*
dtype0*
_output_shapes
: 
Б
dropout_4/cond/dropout/ShapeShape%dropout_4/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
√
#dropout_4/cond/dropout/Shape/SwitchSwitchconv2d_4/LeakyReludropout_4/cond/pred_id*
T0*%
_class
loc:@conv2d_4/LeakyRelu*p
_output_shapes^
\:,                           А:,                           А
И
)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╓
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
T0*
dtype0*
seed2┬*B
_output_shapes0
.:,                           А*

seed
з
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
▌
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*B
_output_shapes0
.:,                           А
╧
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*B
_output_shapes0
.:,                           А*
T0
╖
dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*
T0*B
_output_shapes0
.:,                           А
О
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*
T0*B
_output_shapes0
.:,                           А
╗
dropout_4/cond/dropout/divRealDiv%dropout_4/cond/dropout/Shape/Switch:1 dropout_4/cond/dropout/keep_prob*B
_output_shapes0
.:,                           А*
T0
и
dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*
T0*B
_output_shapes0
.:,                           А
Р
dropout_4/cond/IdentityIdentitydropout_4/cond/Identity/Switch*B
_output_shapes0
.:,                           А*
T0
Ў
dropout_4/cond/Identity/SwitchSwitchconv2d_4/LeakyReludropout_4/cond/pred_id*
T0*%
_class
loc:@conv2d_4/LeakyRelu*p
_output_shapes^
\:,                           А:,                           А
к
dropout_4/cond/MergeMergedropout_4/cond/Identitydropout_4/cond/dropout/mul*
T0*
N*D
_output_shapes2
0:,                           А: 
н
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А      *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *n╫\╛*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *n╫\>*"
_class
loc:@conv2d_5/kernel
°
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:А*

seed*
T0*"
_class
loc:@conv2d_5/kernel*
seed2╨
┌
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
ї
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
ч
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*'
_output_shapes
:А*
T0*"
_class
loc:@conv2d_5/kernel
╣
conv2d_5/kernel
VariableV2*
dtype0*'
_output_shapes
:А*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А
▄
conv2d_5/kernel/AssignAssignconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
З
conv2d_5/kernel/readIdentityconv2d_5/kernel*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
О
conv2d_5/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ы
conv2d_5/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╛
conv2d_5/bias/AssignAssignconv2d_5/biasconv2d_5/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:*
use_locking(
t
conv2d_5/bias/readIdentityconv2d_5/bias*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:
Ш
1conv2d_5/bias/Regularizer/l1_l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *
valueB
 *═╠╠=* 
_class
loc:@conv2d_5/bias
У
2conv2d_5/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_5/bias/read*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
▄
+conv2d_5/bias/Regularizer/l1_l2_regularizerMul1conv2d_5/bias/Regularizer/l1_l2_regularizer/scale2conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
А
conv2d_5/Conv2DConv2Ddropout_4/cond/Mergeconv2d_5/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations
*
T0
г
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/bias/read*
data_formatNHWC*A
_output_shapes/
-:+                           *
T0
p
SigmoidSigmoidconv2d_5/BiasAdd*A
_output_shapes/
-:+                           *
T0
J
sub/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
f
subSubSigmoidsub/y*
T0*A
_output_shapes/
-:+                           
J
mul/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
b
mulMulmul/xsub*
T0*A
_output_shapes/
-:+                           
a
probIdentitymul*
T0*A
_output_shapes/
-:+                           
C
AbsAbslabel*
T0*'
_output_shapes
:         
L
mul_1/xConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
L
mul_1Mulmul_1/xAbs*
T0*'
_output_shapes
:         
J
add/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
J
addAddadd/xmul_1*
T0*'
_output_shapes
:         
N
	truediv/yConst*
dtype0*
_output_shapes
: *
valueB
 *├I1>
T
truedivRealDivadd	truediv/y*'
_output_shapes
:         *
T0
h
strided_slice/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"          *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
Й
strided_sliceStridedSliceprobstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:         *
Index0*
T0
Б
$mean_squared_error/SquaredDifferenceSquaredDifferencestrided_slicelabel*
T0*'
_output_shapes
:         
|
5mean_squared_error/assert_broadcastable/weights/shapeShapetruediv*
_output_shapes
:*
T0*
out_type0
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
u
3mean_squared_error/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
╞
1mean_squared_error/assert_broadcastable/is_scalarEqual3mean_squared_error/assert_broadcastable/is_scalar/x4mean_squared_error/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
╨
=mean_squared_error/assert_broadcastable/is_valid_shape/SwitchSwitch1mean_squared_error/assert_broadcastable/is_scalar1mean_squared_error/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
н
?mean_squared_error/assert_broadcastable/is_valid_shape/switch_tIdentity?mean_squared_error/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
л
?mean_squared_error/assert_broadcastable/is_valid_shape/switch_fIdentity=mean_squared_error/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ю
>mean_squared_error/assert_broadcastable/is_valid_shape/pred_idIdentity1mean_squared_error/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
е
?mean_squared_error/assert_broadcastable/is_valid_shape/Switch_1Switch1mean_squared_error/assert_broadcastable/is_scalar>mean_squared_error/assert_broadcastable/is_valid_shape/pred_id*
T0
*D
_class:
86loc:@mean_squared_error/assert_broadcastable/is_scalar*
_output_shapes
: : 
╒
]mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualdmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchfmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
╬
dmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch3mean_squared_error/assert_broadcastable/values/rank>mean_squared_error/assert_broadcastable/is_valid_shape/pred_id*
T0*F
_class<
:8loc:@mean_squared_error/assert_broadcastable/values/rank*
_output_shapes
: : 
╥
fmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switch4mean_squared_error/assert_broadcastable/weights/rank>mean_squared_error/assert_broadcastable/is_valid_shape/pred_id*
T0*G
_class=
;9loc:@mean_squared_error/assert_broadcastable/weights/rank*
_output_shapes
: : 
┬
Wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch]mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank]mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

с
Ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityYmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

▀
Ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityWmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
ф
Xmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity]mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Ч
pmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
Ъ
lmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimswmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1pmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
ч
smean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitch4mean_squared_error/assert_broadcastable/values/shape>mean_squared_error/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*G
_class=
;9loc:@mean_squared_error/assert_broadcastable/values/shape
┬
umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchsmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchXmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*G
_class=
;9loc:@mean_squared_error/assert_broadcastable/values/shape
Ю
qmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
П
qmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ф
kmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillqmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeqmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Л
mmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
№
hmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2lmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimskmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
Щ
rmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
а
nmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1rmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
ы
umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitch5mean_squared_error/assert_broadcastable/weights/shape>mean_squared_error/assert_broadcastable/is_valid_shape/pred_id*
T0*H
_class>
<:loc:@mean_squared_error/assert_broadcastable/weights/shape* 
_output_shapes
::
╟
wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchumean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchXmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*H
_class>
<:loc:@mean_squared_error/assert_broadcastable/weights/shape
ч
zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationnmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1hmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*<
_output_shapes*
(:         :         :*
set_operationa-b
й
rmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
Б
cmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstZ^mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
ф
amean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualcmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xrmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
▒
Ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch]mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankXmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*p
_classf
dbloc:@mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
╔
Vmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeYmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1amean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
М
<mean_squared_error/assert_broadcastable/is_valid_shape/MergeMergeVmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeAmean_squared_error/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Х
-mean_squared_error/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
~
/mean_squared_error/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
y
/mean_squared_error/assert_broadcastable/Const_2Const*
valueB B	truediv:0*
dtype0*
_output_shapes
: 
}
/mean_squared_error/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ц
/mean_squared_error/assert_broadcastable/Const_4Const*7
value.B, B&mean_squared_error/SquaredDifference:0*
dtype0*
_output_shapes
: 
z
/mean_squared_error/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
у
:mean_squared_error/assert_broadcastable/AssertGuard/SwitchSwitch<mean_squared_error/assert_broadcastable/is_valid_shape/Merge<mean_squared_error/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
з
<mean_squared_error/assert_broadcastable/AssertGuard/switch_tIdentity<mean_squared_error/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
е
<mean_squared_error/assert_broadcastable/AssertGuard/switch_fIdentity:mean_squared_error/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

ж
;mean_squared_error/assert_broadcastable/AssertGuard/pred_idIdentity<mean_squared_error/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 

8mean_squared_error/assert_broadcastable/AssertGuard/NoOpNoOp=^mean_squared_error/assert_broadcastable/AssertGuard/switch_t
╜
Fmean_squared_error/assert_broadcastable/AssertGuard/control_dependencyIdentity<mean_squared_error/assert_broadcastable/AssertGuard/switch_t9^mean_squared_error/assert_broadcastable/AssertGuard/NoOp*
T0
*O
_classE
CAloc:@mean_squared_error/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
ш
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_0Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
╧
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_1Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
╩
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_2Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*
valueB B	truediv:0*
dtype0*
_output_shapes
: 
╬
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_4Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ч
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_5Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*7
value.B, B&mean_squared_error/SquaredDifference:0*
dtype0*
_output_shapes
: 
╦
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_7Const=^mean_squared_error/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Н
:mean_squared_error/assert_broadcastable/AssertGuard/AssertAssertAmean_squared_error/assert_broadcastable/AssertGuard/Assert/SwitchAmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_0Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_1Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_2Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_1Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_4Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_5Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_2Amean_squared_error/assert_broadcastable/AssertGuard/Assert/data_7Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
║
Amean_squared_error/assert_broadcastable/AssertGuard/Assert/SwitchSwitch<mean_squared_error/assert_broadcastable/is_valid_shape/Merge;mean_squared_error/assert_broadcastable/AssertGuard/pred_id*
T0
*O
_classE
CAloc:@mean_squared_error/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
╢
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_1Switch5mean_squared_error/assert_broadcastable/weights/shape;mean_squared_error/assert_broadcastable/AssertGuard/pred_id*
T0*H
_class>
<:loc:@mean_squared_error/assert_broadcastable/weights/shape* 
_output_shapes
::
┤
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_2Switch4mean_squared_error/assert_broadcastable/values/shape;mean_squared_error/assert_broadcastable/AssertGuard/pred_id*
T0*G
_class=
;9loc:@mean_squared_error/assert_broadcastable/values/shape* 
_output_shapes
::
ж
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_3Switch1mean_squared_error/assert_broadcastable/is_scalar;mean_squared_error/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*D
_class:
86loc:@mean_squared_error/assert_broadcastable/is_scalar
┴
Hmean_squared_error/assert_broadcastable/AssertGuard/control_dependency_1Identity<mean_squared_error/assert_broadcastable/AssertGuard/switch_f;^mean_squared_error/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*O
_classE
CAloc:@mean_squared_error/assert_broadcastable/AssertGuard/switch_f
А
9mean_squared_error/assert_broadcastable/AssertGuard/MergeMergeHmean_squared_error/assert_broadcastable/AssertGuard/control_dependency_1Fmean_squared_error/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
║
mean_squared_error/MulMul$mean_squared_error/SquaredDifferencetruediv:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
T0*'
_output_shapes
:         
е
mean_squared_error/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB"       *
dtype0*
_output_shapes
:
Н
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
з
&mean_squared_error/num_present/Equal/yConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
$mean_squared_error/num_present/EqualEqualtruediv&mean_squared_error/num_present/Equal/y*'
_output_shapes
:         *
T0
н
)mean_squared_error/num_present/zeros_like	ZerosLiketruediv:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
T0*'
_output_shapes
:         
▒
.mean_squared_error/num_present/ones_like/ShapeShapetruediv:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
п
.mean_squared_error/num_present/ones_like/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╘
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*'
_output_shapes
:         
▄
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
T0*'
_output_shapes
:         
╕
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeShape%mean_squared_error/num_present/Select*
T0*
out_type0*
_output_shapes
:
╨
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
value	B :
Є
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
╧
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 
╧
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar/xConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
value	B : 
а
Omean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalarEqualQmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar/xRmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
к
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchOmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalarOmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

щ
]mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentity]mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
ч
]mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentity[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
┌
\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityOmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
Э
]mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchOmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*b
_classX
VTloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
▒
{mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualВmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchДmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
╟
Вmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchQmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rank\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*d
_classZ
XVloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
╦
Дmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchRmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rank\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
Ь
umean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch{mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank{mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Э
wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitywmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

Ы
wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityumean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

а
vmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity{mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Р
Оmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
ў
Кmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsХmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Оmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
р
Сmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchRmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
╝
Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchСmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchvmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*e
_class[
YWloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ч
Пmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
И
Пmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ё
Йmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillПmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeПmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Д
Лmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
°
Жmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2Кmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsЙmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeЛmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
Т
Рmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
         
¤
Мmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsЧmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Рmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
ф
Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchSmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*f
_class\
ZXloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
┴
Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchУmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchvmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*f
_class\
ZXloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
─
Шmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationМmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1Жmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:         :         :*
set_operationa-b*
T0*
validate_indices(
ч
Рmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeЪmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
·
Бmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConst:^mean_squared_error/assert_broadcastable/AssertGuard/Mergex^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
└
mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualБmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xРmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
н
wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch{mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*С
_classЖ
ГАloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
г
tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergewmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
ц
Zmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergetmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
я
Kmean_squared_error/num_present/broadcast_weights/assert_broadcastable/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
╪
Mmean_squared_error/num_present/broadcast_weights/assert_broadcastable/Const_1Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ё
Mmean_squared_error/num_present/broadcast_weights/assert_broadcastable/Const_2Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*8
value/B- B'mean_squared_error/num_present/Select:0*
dtype0*
_output_shapes
: 
╫
Mmean_squared_error/num_present/broadcast_weights/assert_broadcastable/Const_3Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ё
Mmean_squared_error/num_present/broadcast_weights/assert_broadcastable/Const_4Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*7
value.B, B&mean_squared_error/SquaredDifference:0*
dtype0*
_output_shapes
: 
╘
Mmean_squared_error/num_present/broadcast_weights/assert_broadcastable/Const_5Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
╜
Xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
у
Zmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
с
Zmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityXmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
т
Ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
ў
Vmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOp:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
╡
dmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tW^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*m
_classc
a_loc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
р
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
╟
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
р
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'mean_squared_error/num_present/Select:0*
dtype0*
_output_shapes
: 
╞
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
▀
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*7
value.B, B&mean_squared_error/SquaredDifference:0*
dtype0*
_output_shapes
: 
├
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge[^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
╫
Xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssert_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
▓
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeYmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*m
_classc
a_loc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
о
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchSmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeYmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*f
_class\
ZXloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
м
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchRmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeYmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*e
_class[
YWloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ю
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchOmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalarYmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*b
_classX
VTloc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
╣
fmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityZmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fY^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*m
_classc
a_loc:@mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
┌
Wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergefmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1dmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
║
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifference:^mean_squared_error/assert_broadcastable/AssertGuard/MergeX^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ы
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/MergeX^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  А?
К
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:         
╠
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:         
▒
$mean_squared_error/num_present/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB"       *
dtype0*
_output_shapes
:
╗
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Щ
mean_squared_error/Const_1Const:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
С
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Э
mean_squared_error/Greater/yConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
Д
mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
T0*
_output_shapes
: 
Ы
mean_squared_error/Equal/yConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
T0*
_output_shapes
: 
б
"mean_squared_error/ones_like/ShapeConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
г
"mean_squared_error/ones_like/ConstConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Я
mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ь
mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
T0*
_output_shapes
: 
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
Ю
mean_squared_error/zeros_likeConst:^mean_squared_error/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
Ц
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
_output_shapes
: *
T0
л
AddNAddN+conv2d/kernel/Regularizer/l1_l2_regularizer)conv2d/bias/Regularizer/l1_l2_regularizer-conv2d_1/kernel/Regularizer/l1_l2_regularizer+conv2d_1/bias/Regularizer/l1_l2_regularizer-conv2d_2/kernel/Regularizer/l1_l2_regularizer+conv2d_2/bias/Regularizer/l1_l2_regularizer-conv2d_3/kernel/Regularizer/l1_l2_regularizer+conv2d_3/bias/Regularizer/l1_l2_regularizer-conv2d_4/kernel/Regularizer/l1_l2_regularizer+conv2d_4/bias/Regularizer/l1_l2_regularizer+conv2d_5/bias/Regularizer/l1_l2_regularizer*
T0*
N*
_output_shapes
: 
M
add_1Addmean_squared_error/valueAddN*
T0*
_output_shapes
: 
Ц
gradients/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
Ь
gradients/grad_ys_0Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *  А?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
В
%gradients/add_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Fill
╡
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_1_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╖
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
╗
2gradients/mean_squared_error/value_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
╪
.gradients/mean_squared_error/value_grad/SelectSelectmean_squared_error/Greater-gradients/add_1_grad/tuple/control_dependency2gradients/mean_squared_error/value_grad/zeros_like*
T0*
_output_shapes
: 
┌
0gradients/mean_squared_error/value_grad/Select_1Selectmean_squared_error/Greater2gradients/mean_squared_error/value_grad/zeros_like-gradients/add_1_grad/tuple/control_dependency*
T0*
_output_shapes
: 
ш
8gradients/mean_squared_error/value_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1/^gradients/mean_squared_error/value_grad/Select1^gradients/mean_squared_error/value_grad/Select_1
Ы
@gradients/mean_squared_error/value_grad/tuple/control_dependencyIdentity.gradients/mean_squared_error/value_grad/Select9^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/mean_squared_error/value_grad/Select*
_output_shapes
: 
б
Bgradients/mean_squared_error/value_grad/tuple/control_dependency_1Identity0gradients/mean_squared_error/value_grad/Select_19^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/mean_squared_error/value_grad/Select_1*
_output_shapes
: 
в
$gradients/AddN_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_10^gradients/add_1_grad/tuple/control_dependency_1
╘
,gradients/AddN_grad/tuple/control_dependencyIdentity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
╓
.gradients/AddN_grad/tuple/control_dependency_1Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╓
.gradients/AddN_grad/tuple/control_dependency_2Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
╓
.gradients/AddN_grad/tuple/control_dependency_3Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╓
.gradients/AddN_grad/tuple/control_dependency_4Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╓
.gradients/AddN_grad/tuple/control_dependency_5Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╓
.gradients/AddN_grad/tuple/control_dependency_6Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
╓
.gradients/AddN_grad/tuple/control_dependency_7Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
╓
.gradients/AddN_grad/tuple/control_dependency_8Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╓
.gradients/AddN_grad/tuple/control_dependency_9Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
╫
/gradients/AddN_grad/tuple/control_dependency_10Identity/gradients/add_1_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
▓
+gradients/mean_squared_error/div_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
┤
-gradients/mean_squared_error/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
э
;gradients/mean_squared_error/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/div_grad/Shape-gradients/mean_squared_error/div_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╢
-gradients/mean_squared_error/div_grad/RealDivRealDiv@gradients/mean_squared_error/value_grad/tuple/control_dependencymean_squared_error/Select*
_output_shapes
: *
T0
┌
)gradients/mean_squared_error/div_grad/SumSum-gradients/mean_squared_error/div_grad/RealDiv;gradients/mean_squared_error/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
┐
-gradients/mean_squared_error/div_grad/ReshapeReshape)gradients/mean_squared_error/div_grad/Sum+gradients/mean_squared_error/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0
п
)gradients/mean_squared_error/div_grad/NegNegmean_squared_error/Sum_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
б
/gradients/mean_squared_error/div_grad/RealDiv_1RealDiv)gradients/mean_squared_error/div_grad/Negmean_squared_error/Select*
T0*
_output_shapes
: 
з
/gradients/mean_squared_error/div_grad/RealDiv_2RealDiv/gradients/mean_squared_error/div_grad/RealDiv_1mean_squared_error/Select*
T0*
_output_shapes
: 
─
)gradients/mean_squared_error/div_grad/mulMul@gradients/mean_squared_error/value_grad/tuple/control_dependency/gradients/mean_squared_error/div_grad/RealDiv_2*
T0*
_output_shapes
: 
┌
+gradients/mean_squared_error/div_grad/Sum_1Sum)gradients/mean_squared_error/div_grad/mul=gradients/mean_squared_error/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
┼
/gradients/mean_squared_error/div_grad/Reshape_1Reshape+gradients/mean_squared_error/div_grad/Sum_1-gradients/mean_squared_error/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ф
6gradients/mean_squared_error/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/mean_squared_error/div_grad/Reshape0^gradients/mean_squared_error/div_grad/Reshape_1
Х
>gradients/mean_squared_error/div_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/div_grad/Reshape7^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/div_grad/Reshape*
_output_shapes
: 
Ы
@gradients/mean_squared_error/div_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/div_grad/Reshape_17^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/div_grad/Reshape_1*
_output_shapes
: 
╚
>gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulMul,gradients/AddN_grad/tuple/control_dependency2conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
╔
@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul,gradients/AddN_grad/tuple/control_dependency1conv2d/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
Ы
Kgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
ч
Ugradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╞
<gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_10conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
╟
>gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_1/conv2d/bias/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
Х
Igradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1=^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul?^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
┘
Qgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity<gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/MulJ^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
▀
Sgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity>gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1J^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╬
@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_24conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
╧
Bgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_23conv2d_1/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
б
Mgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1A^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
щ
Ugradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
я
Wgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
╩
>gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_32conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╦
@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_31conv2d_1/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
Ы
Kgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
ч
Ugradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╬
@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_44conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
╧
Bgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_43conv2d_2/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
б
Mgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1A^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
щ
Ugradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul
я
Wgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
╩
>gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_52conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
╦
@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_51conv2d_2/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
Ы
Kgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
ч
Ugradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
╬
@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_64conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╧
Bgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_63conv2d_3/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
б
Mgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1A^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
щ
Ugradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
я
Wgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
╩
>gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_72conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╦
@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_71conv2d_3/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
Ы
Kgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
ч
Ugradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
╬
@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_84conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╧
Bgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_83conv2d_4/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
б
Mgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1A^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
щ
Ugradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
я
Wgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╩
>gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_92conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╦
@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_91conv2d_4/bias/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
Ы
Kgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
ч
Ugradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╦
>gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulMul/gradients/AddN_grad/tuple/control_dependency_102conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╠
@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul/gradients/AddN_grad/tuple/control_dependency_101conv2d_5/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
Ы
Kgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
с
Sgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul
ч
Ugradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
╝
5gradients/mean_squared_error/Sum_1_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
р
/gradients/mean_squared_error/Sum_1_grad/ReshapeReshape>gradients/mean_squared_error/div_grad/tuple/control_dependency5gradients/mean_squared_error/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0
┤
-gradients/mean_squared_error/Sum_1_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
╟
,gradients/mean_squared_error/Sum_1_grad/TileTile/gradients/mean_squared_error/Sum_1_grad/Reshape-gradients/mean_squared_error/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
ш
Egradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d/kernel/readUgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: 
╓
Cgradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d/bias/readSgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
ю
Ggradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_1/kernel/readWgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: 0
▄
Egradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_1/bias/readUgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:0
ю
Ggradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_2/kernel/readWgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*&
_output_shapes
:0@*
T0
▄
Egradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_2/bias/readUgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@
я
Ggradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_3/kernel/readWgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:@О
▌
Egradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_3/bias/readUgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
_output_shapes	
:О*
T0
Ё
Ggradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_4/kernel/readWgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*(
_output_shapes
:ОА*
T0
▌
Egradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_4/bias/readUgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
▄
Egradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_5/bias/readUgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
╚
3gradients/mean_squared_error/Sum_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB"      *
dtype0*
_output_shapes
:
╥
-gradients/mean_squared_error/Sum_grad/ReshapeReshape,gradients/mean_squared_error/Sum_1_grad/Tile3gradients/mean_squared_error/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
┼
+gradients/mean_squared_error/Sum_grad/ShapeShapemean_squared_error/Mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╥
*gradients/mean_squared_error/Sum_grad/TileTile-gradients/mean_squared_error/Sum_grad/Reshape+gradients/mean_squared_error/Sum_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:         
╙
+gradients/mean_squared_error/Mul_grad/ShapeShape$mean_squared_error/SquaredDifference$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╕
-gradients/mean_squared_error/Mul_grad/Shape_1Shapetruediv$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
э
;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/Mul_grad/Shape-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Ч
)gradients/mean_squared_error/Mul_grad/MulMul*gradients/mean_squared_error/Sum_grad/Tiletruediv*
T0*'
_output_shapes
:         
╪
)gradients/mean_squared_error/Mul_grad/SumSum)gradients/mean_squared_error/Mul_grad/Mul;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╨
-gradients/mean_squared_error/Mul_grad/ReshapeReshape)gradients/mean_squared_error/Mul_grad/Sum+gradients/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
╢
+gradients/mean_squared_error/Mul_grad/Mul_1Mul$mean_squared_error/SquaredDifference*gradients/mean_squared_error/Sum_grad/Tile*
T0*'
_output_shapes
:         
▐
+gradients/mean_squared_error/Mul_grad/Sum_1Sum+gradients/mean_squared_error/Mul_grad/Mul_1=gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╓
/gradients/mean_squared_error/Mul_grad/Reshape_1Reshape+gradients/mean_squared_error/Mul_grad/Sum_1-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
ф
6gradients/mean_squared_error/Mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/mean_squared_error/Mul_grad/Reshape0^gradients/mean_squared_error/Mul_grad/Reshape_1
ж
>gradients/mean_squared_error/Mul_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/Mul_grad/Reshape7^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/Mul_grad/Reshape*'
_output_shapes
:         
м
@gradients/mean_squared_error/Mul_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/Mul_grad/Reshape_17^gradients/mean_squared_error/Mul_grad/tuple/group_deps*'
_output_shapes
:         *
T0*B
_class8
64loc:@gradients/mean_squared_error/Mul_grad/Reshape_1
╩
9gradients/mean_squared_error/SquaredDifference_grad/ShapeShapestrided_slice$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
─
;gradients/mean_squared_error/SquaredDifference_grad/Shape_1Shapelabel$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Ч
Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/mean_squared_error/SquaredDifference_grad/Shape;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Д
:gradients/mean_squared_error/SquaredDifference_grad/scalarConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
ь
7gradients/mean_squared_error/SquaredDifference_grad/mulMul:gradients/mean_squared_error/SquaredDifference_grad/scalar>gradients/mean_squared_error/Mul_grad/tuple/control_dependency*'
_output_shapes
:         *
T0
Л
7gradients/mean_squared_error/SquaredDifference_grad/subSubstrided_slicelabel$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:         
ф
9gradients/mean_squared_error/SquaredDifference_grad/mul_1Mul7gradients/mean_squared_error/SquaredDifference_grad/mul7gradients/mean_squared_error/SquaredDifference_grad/sub*
T0*'
_output_shapes
:         
Д
7gradients/mean_squared_error/SquaredDifference_grad/SumSum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
·
;gradients/mean_squared_error/SquaredDifference_grad/ReshapeReshape7gradients/mean_squared_error/SquaredDifference_grad/Sum9gradients/mean_squared_error/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
И
9gradients/mean_squared_error/SquaredDifference_grad/Sum_1Sum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Kgradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
А
=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1Reshape9gradients/mean_squared_error/SquaredDifference_grad/Sum_1;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
п
7gradients/mean_squared_error/SquaredDifference_grad/NegNeg=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:         
И
Dgradients/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_18^gradients/mean_squared_error/SquaredDifference_grad/Neg<^gradients/mean_squared_error/SquaredDifference_grad/Reshape
▐
Lgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentity;gradients/mean_squared_error/SquaredDifference_grad/ReshapeE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape*'
_output_shapes
:         
╪
Ngradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1Identity7gradients/mean_squared_error/SquaredDifference_grad/NegE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/mean_squared_error/SquaredDifference_grad/Neg*'
_output_shapes
:         
к
"gradients/strided_slice_grad/ShapeShapeprob$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
│
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2Lgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*A
_output_shapes/
-:+                           
Я
gradients/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
б
gradients/mul_grad/Shape_1Shapesub$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Э
gradients/mul_grad/MulMul-gradients/strided_slice_grad/StridedSliceGradsub*A
_output_shapes/
-:+                           *
T0
Я
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ж
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
б
gradients/mul_grad/Mul_1Mulmul/x-gradients/strided_slice_grad/StridedSliceGrad*
T0*A
_output_shapes/
-:+                           
е
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╖
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                           
л
#gradients/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╔
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
: 
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*A
_output_shapes/
-:+                           *
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
г
gradients/sub_grad/ShapeShapeSigmoid$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
б
gradients/sub_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╢
gradients/sub_grad/SumSum-gradients/mul_grad/tuple/control_dependency_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
▒
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           
║
gradients/sub_grad/Sum_1Sum-gradients/mul_grad/tuple/control_dependency_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
К
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
л
#gradients/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ї
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*A
_output_shapes/
-:+                           *
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
╧
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
_output_shapes
: *
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
│
"gradients/Sigmoid_grad/SigmoidGradSigmoidGradSigmoid+gradients/sub_grad/tuple/control_dependency*A
_output_shapes/
-:+                           *
T0
Ъ
+gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:
╧
0gradients/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1#^gradients/Sigmoid_grad/SigmoidGrad,^gradients/conv2d_5/BiasAdd_grad/BiasAddGrad
Ю
8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/Sigmoid_grad/SigmoidGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*A
_output_shapes/
-:+                           *
T0*5
_class+
)'loc:@gradients/Sigmoid_grad/SigmoidGrad
Л
:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_5/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
у
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNdropout_4/cond/Mergeconv2d_5/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
№
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/kernel/read8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*B
_output_shapes0
.:,                           А*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
х
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_4/cond/Merge'gradients/conv2d_5/Conv2D_grad/ShapeN:18gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:А*
	dilations

ц
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_14^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
╜
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
ж
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:А
б
gradients/AddNAddNEgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
:
╩
-gradients/dropout_4/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencydropout_4/cond/pred_id*p
_output_shapes^
\:,                           А:,                           А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
░
4gradients/dropout_4/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/dropout_4/cond/Merge_grad/cond_grad
┬
<gradients/dropout_4/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_4/cond/Merge_grad/cond_grad5^gradients/dropout_4/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,                           А
╞
>gradients/dropout_4/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_4/cond/Merge_grad/cond_grad:15^gradients/dropout_4/cond/Merge_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
═
/gradients/dropout_4/cond/dropout/mul_grad/ShapeShapedropout_4/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╤
1gradients/dropout_4/cond/dropout/mul_grad/Shape_1Shapedropout_4/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
∙
?gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_4/cond/dropout/mul_grad/Shape1gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▀
-gradients/dropout_4/cond/dropout/mul_grad/MulMul>gradients/dropout_4/cond/Merge_grad/tuple/control_dependency_1dropout_4/cond/dropout/Floor*
T0*B
_output_shapes0
.:,                           А
ф
-gradients/dropout_4/cond/dropout/mul_grad/SumSum-gradients/dropout_4/cond/dropout/mul_grad/Mul?gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ў
1gradients/dropout_4/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_4/cond/dropout/mul_grad/Sum/gradients/dropout_4/cond/dropout/mul_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           А
▀
/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Muldropout_4/cond/dropout/div>gradients/dropout_4/cond/Merge_grad/tuple/control_dependency_1*B
_output_shapes0
.:,                           А*
T0
ъ
/gradients/dropout_4/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Agradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¤
3gradients/dropout_4/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_4/cond/dropout/mul_grad/Sum_11gradients/dropout_4/cond/dropout/mul_grad/Shape_1*B
_output_shapes0
.:,                           А*
T0*
Tshape0
Ё
:gradients/dropout_4/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_4/cond/dropout/mul_grad/Reshape4^gradients/dropout_4/cond/dropout/mul_grad/Reshape_1
╤
Bgradients/dropout_4/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_4/cond/dropout/mul_grad/Reshape;^gradients/dropout_4/cond/dropout/mul_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*D
_class:
86loc:@gradients/dropout_4/cond/dropout/mul_grad/Reshape
╫
Dgradients/dropout_4/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_4/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_4/cond/dropout/mul_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*F
_class<
:8loc:@gradients/dropout_4/cond/dropout/mul_grad/Reshape_1
Е
gradients/SwitchSwitchconv2d_4/LeakyReludropout_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,                           А:,                           А
c
gradients/Shape_1Shapegradients/Switch:1*
T0*
out_type0*
_output_shapes
:
▒
gradients/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch*
valueB
 *    *
dtype0*
_output_shapes
: 
а
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*B
_output_shapes0
.:,                           А*
T0*

index_type0
ч
7gradients/dropout_4/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_4/cond/Merge_grad/tuple/control_dependencygradients/zeros*
T0*
N*D
_output_shapes2
0:,                           А: 
╪
/gradients/dropout_4/cond/dropout/div_grad/ShapeShape%dropout_4/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
╕
1gradients/dropout_4/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
∙
?gradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_4/cond/dropout/div_grad/Shape1gradients/dropout_4/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
я
1gradients/dropout_4/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_4/cond/dropout/mul_grad/tuple/control_dependency dropout_4/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,                           А
ш
-gradients/dropout_4/cond/dropout/div_grad/SumSum1gradients/dropout_4/cond/dropout/div_grad/RealDiv?gradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ў
1gradients/dropout_4/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_4/cond/dropout/div_grad/Sum/gradients/dropout_4/cond/dropout/div_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           А
ь
-gradients/dropout_4/cond/dropout/div_grad/NegNeg%dropout_4/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*B
_output_shapes0
.:,                           А
▄
3gradients/dropout_4/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_4/cond/dropout/div_grad/Neg dropout_4/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,                           А
т
3gradients/dropout_4/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_4/cond/dropout/div_grad/RealDiv_1 dropout_4/cond/dropout/keep_prob*B
_output_shapes0
.:,                           А*
T0
·
-gradients/dropout_4/cond/dropout/div_grad/mulMulBgradients/dropout_4/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_4/cond/dropout/div_grad/RealDiv_2*
T0*B
_output_shapes0
.:,                           А
ш
/gradients/dropout_4/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_4/cond/dropout/div_grad/mulAgradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╤
3gradients/dropout_4/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_4/cond/dropout/div_grad/Sum_11gradients/dropout_4/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ё
:gradients/dropout_4/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_4/cond/dropout/div_grad/Reshape4^gradients/dropout_4/cond/dropout/div_grad/Reshape_1
╤
Bgradients/dropout_4/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_4/cond/dropout/div_grad/Reshape;^gradients/dropout_4/cond/dropout/div_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*D
_class:
86loc:@gradients/dropout_4/cond/dropout/div_grad/Reshape
л
Dgradients/dropout_4/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_4/cond/dropout/div_grad/Reshape_1;^gradients/dropout_4/cond/dropout/div_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_4/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
З
gradients/Switch_1Switchconv2d_4/LeakyReludropout_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*p
_output_shapes^
\:,                           А:,                           А*
T0
c
gradients/Shape_2Shapegradients/Switch_1*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_1/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_1*
valueB
 *    *
dtype0*
_output_shapes
: 
д
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*

index_type0*B
_output_shapes0
.:,                           А
Ї
<gradients/dropout_4/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_1Bgradients/dropout_4/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*D
_output_shapes2
0:,                           А: 
▒
gradients/AddN_1AddN7gradients/dropout_4/cond/Identity/Switch_grad/cond_grad<gradients/dropout_4/cond/dropout/Shape/Switch_grad/cond_grad*
N*B
_output_shapes0
.:,                           А*
T0*J
_class@
><loc:@gradients/dropout_4/cond/Identity/Switch_grad/cond_grad
┴
'gradients/conv2d_4/LeakyRelu_grad/ShapeShapeconv2d_4/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
╜
)gradients/conv2d_4/LeakyRelu_grad/Shape_1Shapeconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
y
)gradients/conv2d_4/LeakyRelu_grad/Shape_2Shapegradients/AddN_1*
T0*
out_type0*
_output_shapes
:
╢
-gradients/conv2d_4/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
ш
'gradients/conv2d_4/LeakyRelu_grad/zerosFill)gradients/conv2d_4/LeakyRelu_grad/Shape_2-gradients/conv2d_4/LeakyRelu_grad/zeros/Const*
T0*

index_type0*B
_output_shapes0
.:,                           А
∙
.gradients/conv2d_4/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_4/LeakyRelu/mulconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*B
_output_shapes0
.:,                           А
с
7gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_4/LeakyRelu_grad/Shape)gradients/conv2d_4/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ъ
(gradients/conv2d_4/LeakyRelu_grad/SelectSelect.gradients/conv2d_4/LeakyRelu_grad/GreaterEqualgradients/AddN_1'gradients/conv2d_4/LeakyRelu_grad/zeros*
T0*B
_output_shapes0
.:,                           А
ь
*gradients/conv2d_4/LeakyRelu_grad/Select_1Select.gradients/conv2d_4/LeakyRelu_grad/GreaterEqual'gradients/conv2d_4/LeakyRelu_grad/zerosgradients/AddN_1*B
_output_shapes0
.:,                           А*
T0
╧
%gradients/conv2d_4/LeakyRelu_grad/SumSum(gradients/conv2d_4/LeakyRelu_grad/Select7gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
▀
)gradients/conv2d_4/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_4/LeakyRelu_grad/Sum'gradients/conv2d_4/LeakyRelu_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           А
╒
'gradients/conv2d_4/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_4/LeakyRelu_grad/Select_19gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
х
+gradients/conv2d_4/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_4/LeakyRelu_grad/Sum_1)gradients/conv2d_4/LeakyRelu_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,                           А
╪
2gradients/conv2d_4/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*^gradients/conv2d_4/LeakyRelu_grad/Reshape,^gradients/conv2d_4/LeakyRelu_grad/Reshape_1
▒
:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_4/LeakyRelu_grad/Reshape3^gradients/conv2d_4/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape*B
_output_shapes0
.:,                           А
╖
<gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/LeakyRelu_grad/Reshape_13^gradients/conv2d_4/LeakyRelu_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1
▓
+gradients/conv2d_4/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
┴
-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1Shapeconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
э
;gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_4/LeakyRelu/mul_grad/Shape-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
)gradients/conv2d_4/LeakyRelu/mul_grad/MulMul:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependencyconv2d_4/BiasAdd*B
_output_shapes0
.:,                           А*
T0
╪
)gradients/conv2d_4/LeakyRelu/mul_grad/SumSum)gradients/conv2d_4/LeakyRelu/mul_grad/Mul;gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
┐
-gradients/conv2d_4/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_4/LeakyRelu/mul_grad/Sum+gradients/conv2d_4/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╒
+gradients/conv2d_4/LeakyRelu/mul_grad/Mul_1Mulconv2d_4/LeakyRelu/alpha:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency*
T0*B
_output_shapes0
.:,                           А
▐
+gradients/conv2d_4/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_4/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
/gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_4/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1*B
_output_shapes0
.:,                           А*
T0*
Tshape0
ф
6gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/conv2d_4/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_4/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_4/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
╟
@gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1*B
_output_shapes0
.:,                           А
о
gradients/AddN_2AddN<gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependency_1*
N*B
_output_shapes0
.:,                           А*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1
Й
+gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
data_formatNHWC*
_output_shapes	
:А*
T0
╜
0gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/AddN_2,^gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_21^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*B
_output_shapes0
.:,                           А*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1
М
:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
у
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNdropout_3/cond/Mergeconv2d_4/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
№
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/kernel/read8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*B
_output_shapes0
.:,                           О*
	dilations
*
T0
ц
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_3/cond/Merge'gradients/conv2d_4/Conv2D_grad/ShapeN:18gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:ОА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ц
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_14^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput
╜
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput
з
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:ОА
д
gradients/AddN_3AddNEgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes	
:А
╩
-gradients/dropout_3/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencydropout_3/cond/pred_id*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*p
_output_shapes^
\:,                           О:,                           О
░
4gradients/dropout_3/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/dropout_3/cond/Merge_grad/cond_grad
┬
<gradients/dropout_3/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_3/cond/Merge_grad/cond_grad5^gradients/dropout_3/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,                           О
╞
>gradients/dropout_3/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_3/cond/Merge_grad/cond_grad:15^gradients/dropout_3/cond/Merge_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput
┤
gradients/AddN_4AddNGgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*(
_output_shapes
:ОА
═
/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╤
1gradients/dropout_3/cond/dropout/mul_grad/Shape_1Shapedropout_3/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
∙
?gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_3/cond/dropout/mul_grad/Shape1gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▀
-gradients/dropout_3/cond/dropout/mul_grad/MulMul>gradients/dropout_3/cond/Merge_grad/tuple/control_dependency_1dropout_3/cond/dropout/Floor*B
_output_shapes0
.:,                           О*
T0
ф
-gradients/dropout_3/cond/dropout/mul_grad/SumSum-gradients/dropout_3/cond/dropout/mul_grad/Mul?gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ў
1gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_3/cond/dropout/mul_grad/Sum/gradients/dropout_3/cond/dropout/mul_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           О
▀
/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Muldropout_3/cond/dropout/div>gradients/dropout_3/cond/Merge_grad/tuple/control_dependency_1*
T0*B
_output_shapes0
.:,                           О
ъ
/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Agradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¤
3gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_3/cond/dropout/mul_grad/Sum_11gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,                           О
Ё
:gradients/dropout_3/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_3/cond/dropout/mul_grad/Reshape4^gradients/dropout_3/cond/dropout/mul_grad/Reshape_1
╤
Bgradients/dropout_3/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_3/cond/dropout/mul_grad/Reshape;^gradients/dropout_3/cond/dropout/mul_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*D
_class:
86loc:@gradients/dropout_3/cond/dropout/mul_grad/Reshape
╫
Dgradients/dropout_3/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_3/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_3/cond/dropout/mul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_3/cond/dropout/mul_grad/Reshape_1*B
_output_shapes0
.:,                           О
Х
gradients/Switch_2Switch batch_normalization_3/cond/Mergedropout_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,                           О:,                           О
e
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_2/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_2*
dtype0*
_output_shapes
: *
valueB
 *    
д
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*

index_type0*B
_output_shapes0
.:,                           О
щ
7gradients/dropout_3/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_3/cond/Merge_grad/tuple/control_dependencygradients/zeros_2*
T0*
N*D
_output_shapes2
0:,                           О: 
╪
/gradients/dropout_3/cond/dropout/div_grad/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╕
1gradients/dropout_3/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
∙
?gradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_3/cond/dropout/div_grad/Shape1gradients/dropout_3/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
я
1gradients/dropout_3/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_3/cond/dropout/mul_grad/tuple/control_dependency dropout_3/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,                           О
ш
-gradients/dropout_3/cond/dropout/div_grad/SumSum1gradients/dropout_3/cond/dropout/div_grad/RealDiv?gradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ў
1gradients/dropout_3/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_3/cond/dropout/div_grad/Sum/gradients/dropout_3/cond/dropout/div_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           О
ь
-gradients/dropout_3/cond/dropout/div_grad/NegNeg%dropout_3/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*B
_output_shapes0
.:,                           О*
T0
▄
3gradients/dropout_3/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_3/cond/dropout/div_grad/Neg dropout_3/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,                           О
т
3gradients/dropout_3/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_3/cond/dropout/div_grad/RealDiv_1 dropout_3/cond/dropout/keep_prob*B
_output_shapes0
.:,                           О*
T0
·
-gradients/dropout_3/cond/dropout/div_grad/mulMulBgradients/dropout_3/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_3/cond/dropout/div_grad/RealDiv_2*
T0*B
_output_shapes0
.:,                           О
ш
/gradients/dropout_3/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_3/cond/dropout/div_grad/mulAgradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╤
3gradients/dropout_3/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_3/cond/dropout/div_grad/Sum_11gradients/dropout_3/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ё
:gradients/dropout_3/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_3/cond/dropout/div_grad/Reshape4^gradients/dropout_3/cond/dropout/div_grad/Reshape_1
╤
Bgradients/dropout_3/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_3/cond/dropout/div_grad/Reshape;^gradients/dropout_3/cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_3/cond/dropout/div_grad/Reshape*B
_output_shapes0
.:,                           О
л
Dgradients/dropout_3/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_3/cond/dropout/div_grad/Reshape_1;^gradients/dropout_3/cond/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*F
_class<
:8loc:@gradients/dropout_3/cond/dropout/div_grad/Reshape_1
Х
gradients/Switch_3Switch batch_normalization_3/cond/Mergedropout_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,                           О:,                           О
c
gradients/Shape_4Shapegradients/Switch_3*
_output_shapes
:*
T0*
out_type0
╡
gradients/zeros_3/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_3*
valueB
 *    *
dtype0*
_output_shapes
: 
д
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*

index_type0*B
_output_shapes0
.:,                           О
Ї
<gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_3Bgradients/dropout_3/cond/dropout/div_grad/tuple/control_dependency*
N*D
_output_shapes2
0:,                           О: *
T0
▒
gradients/AddN_5AddN7gradients/dropout_3/cond/Identity/Switch_grad/cond_grad<gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_grad*
T0*J
_class@
><loc:@gradients/dropout_3/cond/Identity/Switch_grad/cond_grad*
N*B
_output_shapes0
.:,                           О
└
9gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitchgradients/AddN_5"batch_normalization_3/cond/pred_id*
T0*J
_class@
><loc:@gradients/dropout_3/cond/Identity/Switch_grad/cond_grad*p
_output_shapes^
\:,                           О:,                           О
╚
@gradients/batch_normalization_3/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1:^gradients/batch_normalization_3/cond/Merge_grad/cond_grad
ы
Hgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_3/cond/Merge_grad/cond_gradA^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_3/cond/Identity/Switch_grad/cond_grad*B
_output_shapes0
.:,                           О
я
Jgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_3/cond/Identity/Switch_grad/cond_grad*B
_output_shapes0
.:,                           О
║
gradients/zeros_like	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes	
:О*
T0
╝
gradients/zeros_like_1	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:О
╝
gradients/zeros_like_2	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:О
╝
gradients/zeros_like_3	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:О
и
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,                           О:О:О:О:О*
epsilon%oГ:*
T0
ч
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1N^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
л
Sgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
И
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes	
:О
И
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes	
:О*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
║
gradients/zeros_like_4	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes	
:О*
T0
║
gradients/zeros_like_5	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes	
:О*
T0
║
gradients/zeros_like_6	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:О
║
gradients/zeros_like_7	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes	
:О*
T0
Р
Kgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_12batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:1+batch_normalization_3/cond/FusedBatchNorm:3+batch_normalization_3/cond/FusedBatchNorm:4*
T0*
data_formatNHWC*
is_training(*X
_output_shapesF
D:,                           О:О:О: : *
epsilon%oГ:
у
Igradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1L^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
г
Qgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*B
_output_shapes0
.:,                           О
А
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes	
:О*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
А
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes	
:О
¤
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
¤
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
У
gradients/Switch_4Switchconv2d_3/LeakyRelu"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,                           О:,                           О
e
gradients/Shape_5Shapegradients/Switch_4:1*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_4/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_4*
valueB
 *    *
dtype0*
_output_shapes
: 
д
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*B
_output_shapes0
.:,                           О*
T0*

index_type0
Ф
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_4*
T0*
N*D
_output_shapes2
0:,                           О: 
╙
gradients/Switch_5Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*"
_output_shapes
:О:О
e
gradients/Shape_6Shapegradients/Switch_5:1*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_5/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_5*
valueB
 *    *
dtype0*
_output_shapes
: 
}
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
T0*

index_type0*
_output_shapes	
:О
ё
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_5*
T0*
N*
_output_shapes
	:О: 
╥
gradients/Switch_6Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*"
_output_shapes
:О:О
e
gradients/Shape_7Shapegradients/Switch_6:1*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_6/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_6*
valueB
 *    *
dtype0*
_output_shapes
: 
}
gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*
T0*

index_type0*
_output_shapes	
:О
ё
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_6*
T0*
N*
_output_shapes
	:О: 
У
gradients/Switch_7Switchconv2d_3/LeakyRelu"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,                           О:,                           О
c
gradients/Shape_8Shapegradients/Switch_7*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_7/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_7*
valueB
 *    *
dtype0*
_output_shapes
: 
д
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*
T0*

index_type0*B
_output_shapes0
.:,                           О
Р
Igradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_7Qgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*D
_output_shapes2
0:,                           О: 
╙
gradients/Switch_8Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*"
_output_shapes
:О:О
c
gradients/Shape_9Shapegradients/Switch_8*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_8/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_8*
dtype0*
_output_shapes
: *
valueB
 *    
}
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*
T0*

index_type0*
_output_shapes	
:О
э
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_8Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes
	:О: 
╥
gradients/Switch_9Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*"
_output_shapes
:О:О*
T0
d
gradients/Shape_10Shapegradients/Switch_9*
T0*
out_type0*
_output_shapes
:
╡
gradients/zeros_9/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_9*
valueB
 *    *
dtype0*
_output_shapes
: 
~
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*
_output_shapes	
:О*
T0*

index_type0
э
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_9Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*
N*
_output_shapes
	:О: 
ц
gradients/AddN_6AddNKgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*B
_output_shapes0
.:,                           О*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_grad
┴
'gradients/conv2d_3/LeakyRelu_grad/ShapeShapeconv2d_3/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╜
)gradients/conv2d_3/LeakyRelu_grad/Shape_1Shapeconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
y
)gradients/conv2d_3/LeakyRelu_grad/Shape_2Shapegradients/AddN_6*
T0*
out_type0*
_output_shapes
:
╢
-gradients/conv2d_3/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
ш
'gradients/conv2d_3/LeakyRelu_grad/zerosFill)gradients/conv2d_3/LeakyRelu_grad/Shape_2-gradients/conv2d_3/LeakyRelu_grad/zeros/Const*B
_output_shapes0
.:,                           О*
T0*

index_type0
∙
.gradients/conv2d_3/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_3/LeakyRelu/mulconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*B
_output_shapes0
.:,                           О*
T0
с
7gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_3/LeakyRelu_grad/Shape)gradients/conv2d_3/LeakyRelu_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ъ
(gradients/conv2d_3/LeakyRelu_grad/SelectSelect.gradients/conv2d_3/LeakyRelu_grad/GreaterEqualgradients/AddN_6'gradients/conv2d_3/LeakyRelu_grad/zeros*
T0*B
_output_shapes0
.:,                           О
ь
*gradients/conv2d_3/LeakyRelu_grad/Select_1Select.gradients/conv2d_3/LeakyRelu_grad/GreaterEqual'gradients/conv2d_3/LeakyRelu_grad/zerosgradients/AddN_6*
T0*B
_output_shapes0
.:,                           О
╧
%gradients/conv2d_3/LeakyRelu_grad/SumSum(gradients/conv2d_3/LeakyRelu_grad/Select7gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
▀
)gradients/conv2d_3/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_3/LeakyRelu_grad/Sum'gradients/conv2d_3/LeakyRelu_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,                           О
╒
'gradients/conv2d_3/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_3/LeakyRelu_grad/Select_19gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
х
+gradients/conv2d_3/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_3/LeakyRelu_grad/Sum_1)gradients/conv2d_3/LeakyRelu_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,                           О
╪
2gradients/conv2d_3/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*^gradients/conv2d_3/LeakyRelu_grad/Reshape,^gradients/conv2d_3/LeakyRelu_grad/Reshape_1
▒
:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_3/LeakyRelu_grad/Reshape3^gradients/conv2d_3/LeakyRelu_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*<
_class2
0.loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape
╖
<gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/LeakyRelu_grad/Reshape_13^gradients/conv2d_3/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1*B
_output_shapes0
.:,                           О
┼
gradients/AddN_7AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
N*
_output_shapes	
:О*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad
┼
gradients/AddN_8AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes	
:О
▓
+gradients/conv2d_3/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
┴
-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1Shapeconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
э
;gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_3/LeakyRelu/mul_grad/Shape-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╦
)gradients/conv2d_3/LeakyRelu/mul_grad/MulMul:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependencyconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,                           О
╪
)gradients/conv2d_3/LeakyRelu/mul_grad/SumSum)gradients/conv2d_3/LeakyRelu/mul_grad/Mul;gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
┐
-gradients/conv2d_3/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_3/LeakyRelu/mul_grad/Sum+gradients/conv2d_3/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╒
+gradients/conv2d_3/LeakyRelu/mul_grad/Mul_1Mulconv2d_3/LeakyRelu/alpha:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency*
T0*B
_output_shapes0
.:,                           О
▐
+gradients/conv2d_3/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_3/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
/gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_3/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1*B
_output_shapes0
.:,                           О*
T0*
Tshape0
ф
6gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/conv2d_3/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_3/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_3/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
╟
@gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1*B
_output_shapes0
.:,                           О
о
gradients/AddN_9AddN<gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependency_1*
N*B
_output_shapes0
.:,                           О*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1
Й
+gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC*
_output_shapes	
:О
╜
0gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/AddN_9,^gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_91^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*B
_output_shapes0
.:,                           О*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1
М
:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:О*
T0*>
_class4
20loc:@gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
у
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNdropout_2/cond/Mergeconv2d_3/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
√
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/read8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           @
х
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_2/cond/Merge'gradients/conv2d_3/Conv2D_grad/ShapeN:18gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingVALID*'
_output_shapes
:@О*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ц
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_14^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
╝
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           @
ж
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@О
е
gradients/AddN_10AddNEgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes	
:О
╚
-gradients/dropout_2/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencydropout_2/cond/pred_id*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*n
_output_shapes\
Z:+                           @:+                           @
░
4gradients/dropout_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/dropout_2/cond/Merge_grad/cond_grad
┴
<gradients/dropout_2/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_2/cond/Merge_grad/cond_grad5^gradients/dropout_2/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           @
┼
>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_2/cond/Merge_grad/cond_grad:15^gradients/dropout_2/cond/Merge_grad/tuple/group_deps*A
_output_shapes/
-:+                           @*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
┤
gradients/AddN_11AddNGgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
N*'
_output_shapes
:@О*
T0*Z
_classP
NLloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul
═
/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╤
1gradients/dropout_2/cond/dropout/mul_grad/Shape_1Shapedropout_2/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
∙
?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/mul_grad/Shape1gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▐
-gradients/dropout_2/cond/dropout/mul_grad/MulMul>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1dropout_2/cond/dropout/Floor*
T0*A
_output_shapes/
-:+                           @
ф
-gradients/dropout_2/cond/dropout/mul_grad/SumSum-gradients/dropout_2/cond/dropout/mul_grad/Mul?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
1gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/mul_grad/Sum/gradients/dropout_2/cond/dropout/mul_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           @
▐
/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/dropout/div>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1*
T0*A
_output_shapes/
-:+                           @
ъ
/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Agradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
№
3gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/mul_grad/Sum_11gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                           @
Ё
:gradients/dropout_2/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_2/cond/dropout/mul_grad/Reshape4^gradients/dropout_2/cond/dropout/mul_grad/Reshape_1
╨
Bgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_2/cond/dropout/mul_grad/Reshape;^gradients/dropout_2/cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_2/cond/dropout/mul_grad/Reshape*A
_output_shapes/
-:+                           @
╓
Dgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_2/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_2/cond/dropout/mul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_2/cond/dropout/mul_grad/Reshape_1*A
_output_shapes/
-:+                           @
Ф
gradients/Switch_10Switch batch_normalization_2/cond/Mergedropout_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           @:+                           @
g
gradients/Shape_11Shapegradients/Switch_10:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_10/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_10*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*
T0*

index_type0*A
_output_shapes/
-:+                           @
щ
7gradients/dropout_2/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_2/cond/Merge_grad/tuple/control_dependencygradients/zeros_10*
T0*
N*C
_output_shapes1
/:+                           @: 
╪
/gradients/dropout_2/cond/dropout/div_grad/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
╕
1gradients/dropout_2/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
∙
?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/div_grad/Shape1gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ю
1gradients/dropout_2/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency dropout_2/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           @
ш
-gradients/dropout_2/cond/dropout/div_grad/SumSum1gradients/dropout_2/cond/dropout/div_grad/RealDiv?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
1gradients/dropout_2/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/div_grad/Sum/gradients/dropout_2/cond/dropout/div_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           @
ы
-gradients/dropout_2/cond/dropout/div_grad/NegNeg%dropout_2/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+                           @
█
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_2/cond/dropout/div_grad/Neg dropout_2/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           @
с
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1 dropout_2/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           @
∙
-gradients/dropout_2/cond/dropout/div_grad/mulMulBgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2*A
_output_shapes/
-:+                           @*
T0
ш
/gradients/dropout_2/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_2/cond/dropout/div_grad/mulAgradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╤
3gradients/dropout_2/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/div_grad/Sum_11gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ё
:gradients/dropout_2/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_2/cond/dropout/div_grad/Reshape4^gradients/dropout_2/cond/dropout/div_grad/Reshape_1
╨
Bgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_2/cond/dropout/div_grad/Reshape;^gradients/dropout_2/cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_2/cond/dropout/div_grad/Reshape*A
_output_shapes/
-:+                           @
л
Dgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_2/cond/dropout/div_grad/Reshape_1;^gradients/dropout_2/cond/dropout/div_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_2/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
Ф
gradients/Switch_11Switch batch_normalization_2/cond/Mergedropout_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           @:+                           @
e
gradients/Shape_12Shapegradients/Switch_11*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_11/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_11*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*
T0*

index_type0*A
_output_shapes/
-:+                           @
Ї
<gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_11Bgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependency*
N*C
_output_shapes1
/:+                           @: *
T0
▒
gradients/AddN_12AddN7gradients/dropout_2/cond/Identity/Switch_grad/cond_grad<gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_grad*
T0*J
_class@
><loc:@gradients/dropout_2/cond/Identity/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                           @
┐
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitchgradients/AddN_12"batch_normalization_2/cond/pred_id*n
_output_shapes\
Z:+                           @:+                           @*
T0*J
_class@
><loc:@gradients/dropout_2/cond/Identity/Switch_grad/cond_grad
╚
@gradients/batch_normalization_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1:^gradients/batch_normalization_2/cond/Merge_grad/cond_grad
ъ
Hgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_2/cond/Merge_grad/cond_gradA^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_2/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+                           @
ю
Jgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_2/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+                           @
╗
gradients/zeros_like_8	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:@*
T0
╗
gradients/zeros_like_9	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:@
╝
gradients/zeros_like_10	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:@
╝
gradients/zeros_like_11	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:@
г
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                           @:@:@:@:@
ч
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1N^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
к
Sgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*A
_output_shapes/
-:+                           @*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:@
З
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:@
║
gradients/zeros_like_12	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:@*
T0
║
gradients/zeros_like_13	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:@
║
gradients/zeros_like_14	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:@*
T0
║
gradients/zeros_like_15	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:@*
T0
Н
Kgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_12batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:1+batch_normalization_2/cond/FusedBatchNorm:3+batch_normalization_2/cond/FusedBatchNorm:4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+                           @:@:@: : 
у
Igradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1L^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
в
Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*A
_output_shapes/
-:+                           @*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
 
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
 
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
¤
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
¤
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
Т
gradients/Switch_12Switchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           @:+                           @
g
gradients/Shape_13Shapegradients/Switch_12:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_12/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_12*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*A
_output_shapes/
-:+                           @*
T0*

index_type0
Ф
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_12*
T0*
N*C
_output_shapes1
/:+                           @: 
╥
gradients/Switch_13Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
g
gradients/Shape_14Shapegradients/Switch_13:1*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_13/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_13*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*
T0*

index_type0*
_output_shapes
:@
ё
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_13*
T0*
N*
_output_shapes

:@: 
╤
gradients/Switch_14Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1* 
_output_shapes
:@:@*
T0
g
gradients/Shape_15Shapegradients/Switch_14:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_14/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_14*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*
T0*

index_type0*
_output_shapes
:@
ё
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_14*
N*
_output_shapes

:@: *
T0
Т
gradients/Switch_15Switchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           @:+                           @
e
gradients/Shape_16Shapegradients/Switch_15*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_15/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_15*
dtype0*
_output_shapes
: *
valueB
 *    
ж
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*
T0*

index_type0*A
_output_shapes/
-:+                           @
Р
Igradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_15Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+                           @: 
╥
gradients/Switch_16Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_17Shapegradients/Switch_16*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_16/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_16*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_16Fillgradients/Shape_17gradients/zeros_16/Const*
T0*

index_type0*
_output_shapes
:@
э
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_16Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes

:@: 
╤
gradients/Switch_17Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_18Shapegradients/Switch_17*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_17/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_17*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_17Fillgradients/Shape_18gradients/zeros_17/Const*
T0*

index_type0*
_output_shapes
:@
э
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_17Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
N*
_output_shapes

:@: *
T0
ц
gradients/AddN_13AddNKgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                           @
┴
'gradients/conv2d_2/LeakyRelu_grad/ShapeShapeconv2d_2/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╜
)gradients/conv2d_2/LeakyRelu_grad/Shape_1Shapeconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
z
)gradients/conv2d_2/LeakyRelu_grad/Shape_2Shapegradients/AddN_13*
T0*
out_type0*
_output_shapes
:
╢
-gradients/conv2d_2/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
'gradients/conv2d_2/LeakyRelu_grad/zerosFill)gradients/conv2d_2/LeakyRelu_grad/Shape_2-gradients/conv2d_2/LeakyRelu_grad/zeros/Const*
T0*

index_type0*A
_output_shapes/
-:+                           @
°
.gradients/conv2d_2/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_2/LeakyRelu/mulconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+                           @
с
7gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_2/LeakyRelu_grad/Shape)gradients/conv2d_2/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ъ
(gradients/conv2d_2/LeakyRelu_grad/SelectSelect.gradients/conv2d_2/LeakyRelu_grad/GreaterEqualgradients/AddN_13'gradients/conv2d_2/LeakyRelu_grad/zeros*A
_output_shapes/
-:+                           @*
T0
ь
*gradients/conv2d_2/LeakyRelu_grad/Select_1Select.gradients/conv2d_2/LeakyRelu_grad/GreaterEqual'gradients/conv2d_2/LeakyRelu_grad/zerosgradients/AddN_13*
T0*A
_output_shapes/
-:+                           @
╧
%gradients/conv2d_2/LeakyRelu_grad/SumSum(gradients/conv2d_2/LeakyRelu_grad/Select7gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
▐
)gradients/conv2d_2/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_2/LeakyRelu_grad/Sum'gradients/conv2d_2/LeakyRelu_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           @
╒
'gradients/conv2d_2/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_2/LeakyRelu_grad/Select_19gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ф
+gradients/conv2d_2/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_2/LeakyRelu_grad/Sum_1)gradients/conv2d_2/LeakyRelu_grad/Shape_1*A
_output_shapes/
-:+                           @*
T0*
Tshape0
╪
2gradients/conv2d_2/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*^gradients/conv2d_2/LeakyRelu_grad/Reshape,^gradients/conv2d_2/LeakyRelu_grad/Reshape_1
░
:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_2/LeakyRelu_grad/Reshape3^gradients/conv2d_2/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+                           @
╢
<gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/LeakyRelu_grad/Reshape_13^gradients/conv2d_2/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+                           @
┼
gradients/AddN_14AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:@
┼
gradients/AddN_15AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
N*
_output_shapes
:@*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad
▓
+gradients/conv2d_2/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
┴
-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1Shapeconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
э
;gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_2/LeakyRelu/mul_grad/Shape-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
)gradients/conv2d_2/LeakyRelu/mul_grad/MulMul:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependencyconv2d_2/BiasAdd*A
_output_shapes/
-:+                           @*
T0
╪
)gradients/conv2d_2/LeakyRelu/mul_grad/SumSum)gradients/conv2d_2/LeakyRelu/mul_grad/Mul;gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
┐
-gradients/conv2d_2/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_2/LeakyRelu/mul_grad/Sum+gradients/conv2d_2/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╘
+gradients/conv2d_2/LeakyRelu/mul_grad/Mul_1Mulconv2d_2/LeakyRelu/alpha:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency*
T0*A
_output_shapes/
-:+                           @
▐
+gradients/conv2d_2/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_2/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ё
/gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_2/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                           @
ф
6gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/conv2d_2/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_2/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_2/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
╞
@gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_deps*A
_output_shapes/
-:+                           @*
T0*B
_class8
64loc:@gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1
о
gradients/AddN_16AddN<gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1*
N*A
_output_shapes/
-:+                           @
Й
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_16*
T0*
data_formatNHWC*
_output_shapes
:@
╛
0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/AddN_16,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_161^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*A
_output_shapes/
-:+                           @*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1
Л
:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
у
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNdropout_1/cond/Mergeconv2d_2/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
√
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*A
_output_shapes/
-:+                           0*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ф
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_1/cond/Merge'gradients/conv2d_2/Conv2D_grad/ShapeN:18gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:0@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
ц
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_14^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
╝
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*A
_output_shapes/
-:+                           0*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
е
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0@
д
gradients/AddN_17AddNEgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes
:@*
T0*X
_classN
LJloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul
╚
-gradients/dropout_1/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencydropout_1/cond/pred_id*n
_output_shapes\
Z:+                           0:+                           0*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
░
4gradients/dropout_1/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/dropout_1/cond/Merge_grad/cond_grad
┴
<gradients/dropout_1/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_1/cond/Merge_grad/cond_grad5^gradients/dropout_1/cond/Merge_grad/tuple/group_deps*A
_output_shapes/
-:+                           0*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
┼
>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_1/cond/Merge_grad/cond_grad:15^gradients/dropout_1/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           0
│
gradients/AddN_18AddNGgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
:0@
═
/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
╤
1gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
∙
?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/mul_grad/Shape1gradients/dropout_1/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
▐
-gradients/dropout_1/cond/dropout/mul_grad/MulMul>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1dropout_1/cond/dropout/Floor*
T0*A
_output_shapes/
-:+                           0
ф
-gradients/dropout_1/cond/dropout/mul_grad/SumSum-gradients/dropout_1/cond/dropout/mul_grad/Mul?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
1gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/mul_grad/Sum/gradients/dropout_1/cond/dropout/mul_grad/Shape*A
_output_shapes/
-:+                           0*
T0*
Tshape0
▐
/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/dropout/div>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1*
T0*A
_output_shapes/
-:+                           0
ъ
/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Agradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
№
3gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/mul_grad/Sum_11gradients/dropout_1/cond/dropout/mul_grad/Shape_1*A
_output_shapes/
-:+                           0*
T0*
Tshape0
Ё
:gradients/dropout_1/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_1/cond/dropout/mul_grad/Reshape4^gradients/dropout_1/cond/dropout/mul_grad/Reshape_1
╨
Bgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_1/cond/dropout/mul_grad/Reshape;^gradients/dropout_1/cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_1/cond/dropout/mul_grad/Reshape*A
_output_shapes/
-:+                           0
╓
Dgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_1/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_1/cond/dropout/mul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_1/cond/dropout/mul_grad/Reshape_1*A
_output_shapes/
-:+                           0
Ф
gradients/Switch_18Switch batch_normalization_1/cond/Mergedropout_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           0:+                           0
g
gradients/Shape_19Shapegradients/Switch_18:1*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_18/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_18*
dtype0*
_output_shapes
: *
valueB
 *    
ж
gradients/zeros_18Fillgradients/Shape_19gradients/zeros_18/Const*
T0*

index_type0*A
_output_shapes/
-:+                           0
щ
7gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_1/cond/Merge_grad/tuple/control_dependencygradients/zeros_18*
N*C
_output_shapes1
/:+                           0: *
T0
╪
/gradients/dropout_1/cond/dropout/div_grad/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╕
1gradients/dropout_1/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
∙
?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/div_grad/Shape1gradients/dropout_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ю
1gradients/dropout_1/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency dropout_1/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           0
ш
-gradients/dropout_1/cond/dropout/div_grad/SumSum1gradients/dropout_1/cond/dropout/div_grad/RealDiv?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ў
1gradients/dropout_1/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/div_grad/Sum/gradients/dropout_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           0
ы
-gradients/dropout_1/cond/dropout/div_grad/NegNeg%dropout_1/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+                           0
█
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_1/cond/dropout/div_grad/Neg dropout_1/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           0
с
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1 dropout_1/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                           0
∙
-gradients/dropout_1/cond/dropout/div_grad/mulMulBgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2*
T0*A
_output_shapes/
-:+                           0
ш
/gradients/dropout_1/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_1/cond/dropout/div_grad/mulAgradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
╤
3gradients/dropout_1/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/div_grad/Sum_11gradients/dropout_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ё
:gradients/dropout_1/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/dropout_1/cond/dropout/div_grad/Reshape4^gradients/dropout_1/cond/dropout/div_grad/Reshape_1
╨
Bgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_1/cond/dropout/div_grad/Reshape;^gradients/dropout_1/cond/dropout/div_grad/tuple/group_deps*A
_output_shapes/
-:+                           0*
T0*D
_class:
86loc:@gradients/dropout_1/cond/dropout/div_grad/Reshape
л
Dgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_1/cond/dropout/div_grad/Reshape_1;^gradients/dropout_1/cond/dropout/div_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_1/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
Ф
gradients/Switch_19Switch batch_normalization_1/cond/Mergedropout_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           0:+                           0
e
gradients/Shape_20Shapegradients/Switch_19*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_19/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_19*
dtype0*
_output_shapes
: *
valueB
 *    
ж
gradients/zeros_19Fillgradients/Shape_20gradients/zeros_19/Const*A
_output_shapes/
-:+                           0*
T0*

index_type0
Ї
<gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_19Bgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+                           0: 
▒
gradients/AddN_19AddN7gradients/dropout_1/cond/Identity/Switch_grad/cond_grad<gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*
T0*J
_class@
><loc:@gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                           0
┐
9gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitchgradients/AddN_19"batch_normalization_1/cond/pred_id*
T0*J
_class@
><loc:@gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*n
_output_shapes\
Z:+                           0:+                           0
╚
@gradients/batch_normalization_1/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1:^gradients/batch_normalization_1/cond/Merge_grad/cond_grad
ъ
Hgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_1/cond/Merge_grad/cond_gradA^gradients/batch_normalization_1/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+                           0
ю
Jgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_1/cond/Merge_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+                           0
╝
gradients/zeros_like_16	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
╝
gradients/zeros_like_17	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
╝
gradients/zeros_like_18	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:0*
T0
╝
gradients/zeros_like_19	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
г
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency2batch_normalization_1/cond/FusedBatchNorm_1/Switch4batch_normalization_1/cond/FusedBatchNorm_1/Switch_14batch_normalization_1/cond/FusedBatchNorm_1/Switch_34batch_normalization_1/cond/FusedBatchNorm_1/Switch_4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                           0:0:0:0:0
ч
Kgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1N^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
к
Sgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*A
_output_shapes/
-:+                           0*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:0*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:0
║
gradients/zeros_like_20	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
║
gradients/zeros_like_21	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:0*
T0
║
gradients/zeros_like_22	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
║
gradients/zeros_like_23	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
:0
Н
Kgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency_12batch_normalization_1/cond/FusedBatchNorm/Switch:14batch_normalization_1/cond/FusedBatchNorm/Switch_1:1+batch_normalization_1/cond/FusedBatchNorm:3+batch_normalization_1/cond/FusedBatchNorm:4*
T0*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+                           0:0:0: : *
epsilon%oГ:
у
Igradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1L^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
в
Qgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad*A
_output_shapes/
-:+                           0
 
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:0
 
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:0
¤
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
¤
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Т
gradients/Switch_20Switchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*n
_output_shapes\
Z:+                           0:+                           0*
T0
g
gradients/Shape_21Shapegradients/Switch_20:1*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_20/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_20*
dtype0*
_output_shapes
: *
valueB
 *    
ж
gradients/zeros_20Fillgradients/Shape_21gradients/zeros_20/Const*
T0*

index_type0*A
_output_shapes/
-:+                           0
Ф
Kgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_20*
N*C
_output_shapes1
/:+                           0: *
T0
╥
gradients/Switch_21Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1* 
_output_shapes
:0:0*
T0
g
gradients/Shape_22Shapegradients/Switch_21:1*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_21/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_21*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_21Fillgradients/Shape_22gradients/zeros_21/Const*
_output_shapes
:0*
T0*

index_type0
ё
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_21*
T0*
N*
_output_shapes

:0: 
╤
gradients/Switch_22Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
g
gradients/Shape_23Shapegradients/Switch_22:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_22/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_22*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_22Fillgradients/Shape_23gradients/zeros_22/Const*
_output_shapes
:0*
T0*

index_type0
ё
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_22*
T0*
N*
_output_shapes

:0: 
Т
gradients/Switch_23Switchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                           0:+                           0
e
gradients/Shape_24Shapegradients/Switch_23*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_23/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_23*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_23Fillgradients/Shape_24gradients/zeros_23/Const*
T0*

index_type0*A
_output_shapes/
-:+                           0
Р
Igradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_23Qgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+                           0: 
╥
gradients/Switch_24Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
e
gradients/Shape_25Shapegradients/Switch_24*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_24/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_24*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_24Fillgradients/Shape_25gradients/zeros_24/Const*
_output_shapes
:0*
T0*

index_type0
э
Kgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_24Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
N*
_output_shapes

:0: *
T0
╤
gradients/Switch_25Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
e
gradients/Shape_26Shapegradients/Switch_25*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_25/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_25*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_25Fillgradients/Shape_26gradients/zeros_25/Const*
T0*

index_type0*
_output_shapes
:0
э
Kgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_25Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*
N*
_output_shapes

:0: 
ц
gradients/AddN_20AddNKgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                           0*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_grad
┴
'gradients/conv2d_1/LeakyRelu_grad/ShapeShapeconv2d_1/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╜
)gradients/conv2d_1/LeakyRelu_grad/Shape_1Shapeconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
z
)gradients/conv2d_1/LeakyRelu_grad/Shape_2Shapegradients/AddN_20*
_output_shapes
:*
T0*
out_type0
╢
-gradients/conv2d_1/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
'gradients/conv2d_1/LeakyRelu_grad/zerosFill)gradients/conv2d_1/LeakyRelu_grad/Shape_2-gradients/conv2d_1/LeakyRelu_grad/zeros/Const*
T0*

index_type0*A
_output_shapes/
-:+                           0
°
.gradients/conv2d_1/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_1/LeakyRelu/mulconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+                           0
с
7gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_1/LeakyRelu_grad/Shape)gradients/conv2d_1/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ъ
(gradients/conv2d_1/LeakyRelu_grad/SelectSelect.gradients/conv2d_1/LeakyRelu_grad/GreaterEqualgradients/AddN_20'gradients/conv2d_1/LeakyRelu_grad/zeros*A
_output_shapes/
-:+                           0*
T0
ь
*gradients/conv2d_1/LeakyRelu_grad/Select_1Select.gradients/conv2d_1/LeakyRelu_grad/GreaterEqual'gradients/conv2d_1/LeakyRelu_grad/zerosgradients/AddN_20*A
_output_shapes/
-:+                           0*
T0
╧
%gradients/conv2d_1/LeakyRelu_grad/SumSum(gradients/conv2d_1/LeakyRelu_grad/Select7gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
▐
)gradients/conv2d_1/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_1/LeakyRelu_grad/Sum'gradients/conv2d_1/LeakyRelu_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                           0
╒
'gradients/conv2d_1/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_1/LeakyRelu_grad/Select_19gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ф
+gradients/conv2d_1/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_1/LeakyRelu_grad/Sum_1)gradients/conv2d_1/LeakyRelu_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                           0
╪
2gradients/conv2d_1/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*^gradients/conv2d_1/LeakyRelu_grad/Reshape,^gradients/conv2d_1/LeakyRelu_grad/Reshape_1
░
:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_1/LeakyRelu_grad/Reshape3^gradients/conv2d_1/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+                           0
╢
<gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/LeakyRelu_grad/Reshape_13^gradients/conv2d_1/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+                           0
┼
gradients/AddN_21AddNMgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:0
┼
gradients/AddN_22AddNMgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:0
▓
+gradients/conv2d_1/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
┴
-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1Shapeconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
э
;gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_1/LeakyRelu/mul_grad/Shape-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
)gradients/conv2d_1/LeakyRelu/mul_grad/MulMul:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependencyconv2d_1/BiasAdd*A
_output_shapes/
-:+                           0*
T0
╪
)gradients/conv2d_1/LeakyRelu/mul_grad/SumSum)gradients/conv2d_1/LeakyRelu/mul_grad/Mul;gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
┐
-gradients/conv2d_1/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_1/LeakyRelu/mul_grad/Sum+gradients/conv2d_1/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╘
+gradients/conv2d_1/LeakyRelu/mul_grad/Mul_1Mulconv2d_1/LeakyRelu/alpha:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency*
T0*A
_output_shapes/
-:+                           0
▐
+gradients/conv2d_1/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_1/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ё
/gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_1/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                           0
ф
6gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1.^gradients/conv2d_1/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_1/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_1/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
╞
@gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1*A
_output_shapes/
-:+                           0
о
gradients/AddN_23AddN<gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependency_1*
N*A
_output_shapes/
-:+                           0*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1
Й
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_23*
data_formatNHWC*
_output_shapes
:0*
T0
╛
0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/AddN_23,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_231^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+                           0
Л
:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:0*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
с
%gradients/conv2d_1/Conv2D_grad/ShapeNShapeNdropout/cond/Mergeconv2d_1/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
√
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*A
_output_shapes/
-:+                            *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
т
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/cond/Merge'gradients/conv2d_1/Conv2D_grad/ShapeN:18gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
: 0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ц
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_14^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
╝
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
е
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 0
д
gradients/AddN_24AddNEgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes
:0*
T0*X
_classN
LJloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul
─
+gradients/dropout/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencydropout/cond/pred_id*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*n
_output_shapes\
Z:+                            :+                            
м
2gradients/dropout/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1,^gradients/dropout/cond/Merge_grad/cond_grad
╗
:gradients/dropout/cond/Merge_grad/tuple/control_dependencyIdentity+gradients/dropout/cond/Merge_grad/cond_grad3^gradients/dropout/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
┐
<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1Identity-gradients/dropout/cond/Merge_grad/cond_grad:13^gradients/dropout/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                            
│
gradients/AddN_25AddNGgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
: 0
╔
-gradients/dropout/cond/dropout/mul_grad/ShapeShapedropout/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
═
/gradients/dropout/cond/dropout/mul_grad/Shape_1Shapedropout/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
є
=gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout/cond/dropout/mul_grad/Shape/gradients/dropout/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╪
+gradients/dropout/cond/dropout/mul_grad/MulMul<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1dropout/cond/dropout/Floor*
T0*A
_output_shapes/
-:+                            
▐
+gradients/dropout/cond/dropout/mul_grad/SumSum+gradients/dropout/cond/dropout/mul_grad/Mul=gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ё
/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape+gradients/dropout/cond/dropout/mul_grad/Sum-gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                            
╪
-gradients/dropout/cond/dropout/mul_grad/Mul_1Muldropout/cond/dropout/div<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1*A
_output_shapes/
-:+                            *
T0
ф
-gradients/dropout/cond/dropout/mul_grad/Sum_1Sum-gradients/dropout/cond/dropout/mul_grad/Mul_1?gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
1gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape-gradients/dropout/cond/dropout/mul_grad/Sum_1/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                            
ъ
8gradients/dropout/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_10^gradients/dropout/cond/dropout/mul_grad/Reshape2^gradients/dropout/cond/dropout/mul_grad/Reshape_1
╚
@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/dropout/cond/dropout/mul_grad/Reshape9^gradients/dropout/cond/dropout/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/dropout/cond/dropout/mul_grad/Reshape*A
_output_shapes/
-:+                            
╬
Bgradients/dropout/cond/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/dropout/cond/dropout/mul_grad/Reshape_19^gradients/dropout/cond/dropout/mul_grad/tuple/group_deps*A
_output_shapes/
-:+                            *
T0*D
_class:
86loc:@gradients/dropout/cond/dropout/mul_grad/Reshape_1
Р
gradients/Switch_26Switchbatch_normalization/cond/Mergedropout/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                            :+                            
g
gradients/Shape_27Shapegradients/Switch_26:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_26/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_26*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_26Fillgradients/Shape_27gradients/zeros_26/Const*
T0*

index_type0*A
_output_shapes/
-:+                            
х
5gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge:gradients/dropout/cond/Merge_grad/tuple/control_dependencygradients/zeros_26*
T0*
N*C
_output_shapes1
/:+                            : 
╘
-gradients/dropout/cond/dropout/div_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
╢
/gradients/dropout/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
є
=gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout/cond/dropout/div_grad/Shape/gradients/dropout/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ш
/gradients/dropout/cond/dropout/div_grad/RealDivRealDiv@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependencydropout/cond/dropout/keep_prob*A
_output_shapes/
-:+                            *
T0
т
+gradients/dropout/cond/dropout/div_grad/SumSum/gradients/dropout/cond/dropout/div_grad/RealDiv=gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ё
/gradients/dropout/cond/dropout/div_grad/ReshapeReshape+gradients/dropout/cond/dropout/div_grad/Sum-gradients/dropout/cond/dropout/div_grad/Shape*A
_output_shapes/
-:+                            *
T0*
Tshape0
ч
+gradients/dropout/cond/dropout/div_grad/NegNeg#dropout/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+                            
╒
1gradients/dropout/cond/dropout/div_grad/RealDiv_1RealDiv+gradients/dropout/cond/dropout/div_grad/Negdropout/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                            
█
1gradients/dropout/cond/dropout/div_grad/RealDiv_2RealDiv1gradients/dropout/cond/dropout/div_grad/RealDiv_1dropout/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+                            
є
+gradients/dropout/cond/dropout/div_grad/mulMul@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependency1gradients/dropout/cond/dropout/div_grad/RealDiv_2*
T0*A
_output_shapes/
-:+                            
т
-gradients/dropout/cond/dropout/div_grad/Sum_1Sum+gradients/dropout/cond/dropout/div_grad/mul?gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
╦
1gradients/dropout/cond/dropout/div_grad/Reshape_1Reshape-gradients/dropout/cond/dropout/div_grad/Sum_1/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ъ
8gradients/dropout/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_10^gradients/dropout/cond/dropout/div_grad/Reshape2^gradients/dropout/cond/dropout/div_grad/Reshape_1
╚
@gradients/dropout/cond/dropout/div_grad/tuple/control_dependencyIdentity/gradients/dropout/cond/dropout/div_grad/Reshape9^gradients/dropout/cond/dropout/div_grad/tuple/group_deps*A
_output_shapes/
-:+                            *
T0*B
_class8
64loc:@gradients/dropout/cond/dropout/div_grad/Reshape
г
Bgradients/dropout/cond/dropout/div_grad/tuple/control_dependency_1Identity1gradients/dropout/cond/dropout/div_grad/Reshape_19^gradients/dropout/cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
Р
gradients/Switch_27Switchbatch_normalization/cond/Mergedropout/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                            :+                            
e
gradients/Shape_28Shapegradients/Switch_27*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_27/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_27*
dtype0*
_output_shapes
: *
valueB
 *    
ж
gradients/zeros_27Fillgradients/Shape_28gradients/zeros_27/Const*
T0*

index_type0*A
_output_shapes/
-:+                            
Ё
:gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_27@gradients/dropout/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+                            : 
л
gradients/AddN_26AddN5gradients/dropout/cond/Identity/Switch_grad/cond_grad:gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                            
╣
7gradients/batch_normalization/cond/Merge_grad/cond_gradSwitchgradients/AddN_26 batch_normalization/cond/pred_id*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*n
_output_shapes\
Z:+                            :+                            
─
>gradients/batch_normalization/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_18^gradients/batch_normalization/cond/Merge_grad/cond_grad
т
Fgradients/batch_normalization/cond/Merge_grad/tuple/control_dependencyIdentity7gradients/batch_normalization/cond/Merge_grad/cond_grad?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+                            
ц
Hgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_1Identity9gradients/batch_normalization/cond/Merge_grad/cond_grad:1?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*A
_output_shapes/
-:+                            *
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad
║
gradients/zeros_like_24	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
: *
T0
║
gradients/zeros_like_25	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
║
gradients/zeros_like_26	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
║
gradients/zeros_like_27	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
: *
T0
Ч
Kgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradFgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+                            : : : : *
epsilon%oГ:*
T0
у
Igradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1L^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
в
Qgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityKgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradJ^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*A
_output_shapes/
-:+                            
 
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
: 
 
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
: 
╕
gradients/zeros_like_28	ZerosLike)batch_normalization/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
╕
gradients/zeros_like_29	ZerosLike)batch_normalization/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
╕
gradients/zeros_like_30	ZerosLike)batch_normalization/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
: *
T0
╕
gradients/zeros_like_31	ZerosLike)batch_normalization/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes
: 
Б
Igradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_10batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:1)batch_normalization/cond/FusedBatchNorm:3)batch_normalization/cond/FusedBatchNorm:4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+                            : : : : 
▀
Ggradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1J^gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Ъ
Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*A
_output_shapes/
-:+                            *
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
ў
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
ў
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
ї
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
ї
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
О
gradients/Switch_28Switchconv2d/LeakyRelu batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                            :+                            
g
gradients/Shape_29Shapegradients/Switch_28:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_28/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_28*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_28Fillgradients/Shape_29gradients/zeros_28/Const*
T0*

index_type0*A
_output_shapes/
-:+                            
Р
Igradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_28*
T0*
N*C
_output_shapes1
/:+                            : 
╬
gradients/Switch_29Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
g
gradients/Shape_30Shapegradients/Switch_29:1*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_29/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_29*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_29Fillgradients/Shape_30gradients/zeros_29/Const*
T0*

index_type0*
_output_shapes
: 
э
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_29*
T0*
N*
_output_shapes

: : 
═
gradients/Switch_30Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1* 
_output_shapes
: : *
T0
g
gradients/Shape_31Shapegradients/Switch_30:1*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_30/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_30*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_30Fillgradients/Shape_31gradients/zeros_30/Const*
T0*

index_type0*
_output_shapes
: 
э
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_30*
T0*
N*
_output_shapes

: : 
О
gradients/Switch_31Switchconv2d/LeakyRelu batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+                            :+                            
e
gradients/Shape_32Shapegradients/Switch_31*
_output_shapes
:*
T0*
out_type0
╖
gradients/zeros_31/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_31*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
gradients/zeros_31Fillgradients/Shape_32gradients/zeros_31/Const*A
_output_shapes/
-:+                            *
T0*

index_type0
М
Ggradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_31Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+                            : 
╬
gradients/Switch_32Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
e
gradients/Shape_33Shapegradients/Switch_32*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_32/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_32*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_32Fillgradients/Shape_33gradients/zeros_32/Const*
T0*

index_type0*
_output_shapes
: 
щ
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_32Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes

: : 
═
gradients/Switch_33Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1* 
_output_shapes
: : *
T0
e
gradients/Shape_34Shapegradients/Switch_33*
T0*
out_type0*
_output_shapes
:
╖
gradients/zeros_33/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/Switch_33*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_33Fillgradients/Shape_34gradients/zeros_33/Const*
T0*

index_type0*
_output_shapes
: 
щ
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_33Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*
N*
_output_shapes

: : 
р
gradients/AddN_27AddNIgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradGgradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+                            *
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_grad
╜
%gradients/conv2d/LeakyRelu_grad/ShapeShapeconv2d/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
╣
'gradients/conv2d/LeakyRelu_grad/Shape_1Shapeconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
x
'gradients/conv2d/LeakyRelu_grad/Shape_2Shapegradients/AddN_27*
T0*
out_type0*
_output_shapes
:
┤
+gradients/conv2d/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
с
%gradients/conv2d/LeakyRelu_grad/zerosFill'gradients/conv2d/LeakyRelu_grad/Shape_2+gradients/conv2d/LeakyRelu_grad/zeros/Const*
T0*

index_type0*A
_output_shapes/
-:+                            
Є
,gradients/conv2d/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d/LeakyRelu/mulconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*A
_output_shapes/
-:+                            *
T0
█
5gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/conv2d/LeakyRelu_grad/Shape'gradients/conv2d/LeakyRelu_grad/Shape_1*2
_output_shapes 
:         :         *
T0
ф
&gradients/conv2d/LeakyRelu_grad/SelectSelect,gradients/conv2d/LeakyRelu_grad/GreaterEqualgradients/AddN_27%gradients/conv2d/LeakyRelu_grad/zeros*A
_output_shapes/
-:+                            *
T0
ц
(gradients/conv2d/LeakyRelu_grad/Select_1Select,gradients/conv2d/LeakyRelu_grad/GreaterEqual%gradients/conv2d/LeakyRelu_grad/zerosgradients/AddN_27*
T0*A
_output_shapes/
-:+                            
╔
#gradients/conv2d/LeakyRelu_grad/SumSum&gradients/conv2d/LeakyRelu_grad/Select5gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╪
'gradients/conv2d/LeakyRelu_grad/ReshapeReshape#gradients/conv2d/LeakyRelu_grad/Sum%gradients/conv2d/LeakyRelu_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+                            
╧
%gradients/conv2d/LeakyRelu_grad/Sum_1Sum(gradients/conv2d/LeakyRelu_grad/Select_17gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
▐
)gradients/conv2d/LeakyRelu_grad/Reshape_1Reshape%gradients/conv2d/LeakyRelu_grad/Sum_1'gradients/conv2d/LeakyRelu_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+                            
╥
0gradients/conv2d/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1(^gradients/conv2d/LeakyRelu_grad/Reshape*^gradients/conv2d/LeakyRelu_grad/Reshape_1
и
8gradients/conv2d/LeakyRelu_grad/tuple/control_dependencyIdentity'gradients/conv2d/LeakyRelu_grad/Reshape1^gradients/conv2d/LeakyRelu_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/conv2d/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+                            
о
:gradients/conv2d/LeakyRelu_grad/tuple/control_dependency_1Identity)gradients/conv2d/LeakyRelu_grad/Reshape_11^gradients/conv2d/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+                            
┐
gradients/AddN_28AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
: 
┐
gradients/AddN_29AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
: 
░
)gradients/conv2d/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
╜
+gradients/conv2d/LeakyRelu/mul_grad/Shape_1Shapeconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
ч
9gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/conv2d/LeakyRelu/mul_grad/Shape+gradients/conv2d/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
'gradients/conv2d/LeakyRelu/mul_grad/MulMul8gradients/conv2d/LeakyRelu_grad/tuple/control_dependencyconv2d/BiasAdd*
T0*A
_output_shapes/
-:+                            
╥
'gradients/conv2d/LeakyRelu/mul_grad/SumSum'gradients/conv2d/LeakyRelu/mul_grad/Mul9gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
╣
+gradients/conv2d/LeakyRelu/mul_grad/ReshapeReshape'gradients/conv2d/LeakyRelu/mul_grad/Sum)gradients/conv2d/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╬
)gradients/conv2d/LeakyRelu/mul_grad/Mul_1Mulconv2d/LeakyRelu/alpha8gradients/conv2d/LeakyRelu_grad/tuple/control_dependency*A
_output_shapes/
-:+                            *
T0
╪
)gradients/conv2d/LeakyRelu/mul_grad/Sum_1Sum)gradients/conv2d/LeakyRelu/mul_grad/Mul_1;gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ъ
-gradients/conv2d/LeakyRelu/mul_grad/Reshape_1Reshape)gradients/conv2d/LeakyRelu/mul_grad/Sum_1+gradients/conv2d/LeakyRelu/mul_grad/Shape_1*A
_output_shapes/
-:+                            *
T0*
Tshape0
▐
4gradients/conv2d/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1,^gradients/conv2d/LeakyRelu/mul_grad/Reshape.^gradients/conv2d/LeakyRelu/mul_grad/Reshape_1
Н
<gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependencyIdentity+gradients/conv2d/LeakyRelu/mul_grad/Reshape5^gradients/conv2d/LeakyRelu/mul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
╛
>gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependency_1Identity-gradients/conv2d/LeakyRelu/mul_grad/Reshape_15^gradients/conv2d/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d/LeakyRelu/mul_grad/Reshape_1*A
_output_shapes/
-:+                            
и
gradients/AddN_30AddN:gradients/conv2d/LeakyRelu_grad/tuple/control_dependency_1>gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*
N*A
_output_shapes/
-:+                            
З
)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_30*
data_formatNHWC*
_output_shapes
: *
T0
║
.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^gradients/AddN_30*^gradients/conv2d/BiasAdd_grad/BiasAddGrad
Р
6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_30/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+                            
Г
8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
╨
#gradients/conv2d/Conv2D_grad/ShapeNShapeNimageconv2d/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
є
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+                           *
	dilations
*
T0
╧
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterimage%gradients/conv2d/Conv2D_grad/ShapeN:16gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
р
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_12^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
┤
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+                           
Э
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
Ю
gradients/AddN_31AddNCgradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
: 
н
gradients/AddN_32AddNEgradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
: 
Л
beta1_power/initial_valueConst*
valueB
 *fff?*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
Ь
beta1_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
╗
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
w
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
Л
beta2_power/initial_valueConst*
valueB
 *w╛?*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
Ь
beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
╗
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta2_power/readIdentitybeta2_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
л
$conv2d/kernel/Adam/Initializer/zerosConst*%
valueB *    * 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 
╕
conv2d/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
┘
conv2d/kernel/Adam/AssignAssignconv2d/kernel/Adam$conv2d/kernel/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
К
conv2d/kernel/Adam/readIdentityconv2d/kernel/Adam*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
н
&conv2d/kernel/Adam_1/Initializer/zerosConst*
dtype0*&
_output_shapes
: *%
valueB *    * 
_class
loc:@conv2d/kernel
║
conv2d/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
▀
conv2d/kernel/Adam_1/AssignAssignconv2d/kernel/Adam_1&conv2d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
О
conv2d/kernel/Adam_1/readIdentityconv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
П
"conv2d/bias/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ь
conv2d/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
┼
conv2d/bias/Adam/AssignAssignconv2d/bias/Adam"conv2d/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
x
conv2d/bias/Adam/readIdentityconv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
С
$conv2d/bias/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ю
conv2d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
╦
conv2d/bias/Adam_1/AssignAssignconv2d/bias/Adam_1$conv2d/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
|
conv2d/bias/Adam_1/readIdentityconv2d/bias/Adam_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
л
0batch_normalization/gamma/Adam/Initializer/zerosConst*
valueB *    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
╕
batch_normalization/gamma/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *,
_class"
 loc:@batch_normalization/gamma
¤
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
в
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
н
2batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueB *    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
║
 batch_normalization/gamma/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
Г
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
ж
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
й
/batch_normalization/beta/Adam/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
╢
batch_normalization/beta/Adam
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
∙
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
Я
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
л
1batch_normalization/beta/Adam_1/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
╕
batch_normalization/beta/Adam_1
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
 
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
г
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
│
6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
√
&conv2d_1/kernel/Adam/Initializer/zerosFill6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_1/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: 0*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel
╝
conv2d_1/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: 0*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 0
с
conv2d_1/kernel/Adam/AssignAssignconv2d_1/kernel/Adam&conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
Р
conv2d_1/kernel/Adam/readIdentityconv2d_1/kernel/Adam*&
_output_shapes
: 0*
T0*"
_class
loc:@conv2d_1/kernel
╡
8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Б
(conv2d_1/kernel/Adam_1/Initializer/zerosFill8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
╛
conv2d_1/kernel/Adam_1
VariableV2*
	container *
shape: 0*
dtype0*&
_output_shapes
: 0*
shared_name *"
_class
loc:@conv2d_1/kernel
ч
conv2d_1/kernel/Adam_1/AssignAssignconv2d_1/kernel/Adam_1(conv2d_1/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0*
use_locking(
Ф
conv2d_1/kernel/Adam_1/readIdentityconv2d_1/kernel/Adam_1*&
_output_shapes
: 0*
T0*"
_class
loc:@conv2d_1/kernel
У
$conv2d_1/bias/Adam/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
а
conv2d_1/bias/Adam
VariableV2*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias
═
conv2d_1/bias/Adam/AssignAssignconv2d_1/bias/Adam$conv2d_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
~
conv2d_1/bias/Adam/readIdentityconv2d_1/bias/Adam*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:0
Х
&conv2d_1/bias/Adam_1/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
в
conv2d_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape:0
╙
conv2d_1/bias/Adam_1/AssignAssignconv2d_1/bias/Adam_1&conv2d_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
В
conv2d_1/bias/Adam_1/readIdentityconv2d_1/bias/Adam_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:0
п
2batch_normalization_1/gamma/Adam/Initializer/zerosConst*
valueB0*    *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:0
╝
 batch_normalization_1/gamma/Adam
VariableV2*
shape:0*
dtype0*
_output_shapes
:0*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container 
Е
'batch_normalization_1/gamma/Adam/AssignAssign batch_normalization_1/gamma/Adam2batch_normalization_1/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
и
%batch_normalization_1/gamma/Adam/readIdentity batch_normalization_1/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:0
▒
4batch_normalization_1/gamma/Adam_1/Initializer/zerosConst*
valueB0*    *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:0
╛
"batch_normalization_1/gamma/Adam_1
VariableV2*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma
Л
)batch_normalization_1/gamma/Adam_1/AssignAssign"batch_normalization_1/gamma/Adam_14batch_normalization_1/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
м
'batch_normalization_1/gamma/Adam_1/readIdentity"batch_normalization_1/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:0
н
1batch_normalization_1/beta/Adam/Initializer/zerosConst*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:0
║
batch_normalization_1/beta/Adam
VariableV2*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name *-
_class#
!loc:@batch_normalization_1/beta
Б
&batch_normalization_1/beta/Adam/AssignAssignbatch_normalization_1/beta/Adam1batch_normalization_1/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
е
$batch_normalization_1/beta/Adam/readIdentitybatch_normalization_1/beta/Adam*
_output_shapes
:0*
T0*-
_class#
!loc:@batch_normalization_1/beta
п
3batch_normalization_1/beta/Adam_1/Initializer/zerosConst*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:0
╝
!batch_normalization_1/beta/Adam_1
VariableV2*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name *-
_class#
!loc:@batch_normalization_1/beta
З
(batch_normalization_1/beta/Adam_1/AssignAssign!batch_normalization_1/beta/Adam_13batch_normalization_1/beta/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
й
&batch_normalization_1/beta/Adam_1/readIdentity!batch_normalization_1/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:0
│
6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel
Х
,conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
√
&conv2d_2/kernel/Adam/Initializer/zerosFill6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
╝
conv2d_2/kernel/Adam
VariableV2*
	container *
shape:0@*
dtype0*&
_output_shapes
:0@*
shared_name *"
_class
loc:@conv2d_2/kernel
с
conv2d_2/kernel/Adam/AssignAssignconv2d_2/kernel/Adam&conv2d_2/kernel/Adam/Initializer/zeros*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
Р
conv2d_2/kernel/Adam/readIdentityconv2d_2/kernel/Adam*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
╡
8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Б
(conv2d_2/kernel/Adam_1/Initializer/zerosFill8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
╛
conv2d_2/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:0@*
dtype0*&
_output_shapes
:0@
ч
conv2d_2/kernel/Adam_1/AssignAssignconv2d_2/kernel/Adam_1(conv2d_2/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
Ф
conv2d_2/kernel/Adam_1/readIdentityconv2d_2/kernel/Adam_1*&
_output_shapes
:0@*
T0*"
_class
loc:@conv2d_2/kernel
У
$conv2d_2/bias/Adam/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
а
conv2d_2/bias/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container 
═
conv2d_2/bias/Adam/AssignAssignconv2d_2/bias/Adam$conv2d_2/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
~
conv2d_2/bias/Adam/readIdentityconv2d_2/bias/Adam*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
Х
&conv2d_2/bias/Adam_1/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
в
conv2d_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@
╙
conv2d_2/bias/Adam_1/AssignAssignconv2d_2/bias/Adam_1&conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
В
conv2d_2/bias/Adam_1/readIdentityconv2d_2/bias/Adam_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
п
2batch_normalization_2/gamma/Adam/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
╝
 batch_normalization_2/gamma/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container 
Е
'batch_normalization_2/gamma/Adam/AssignAssign batch_normalization_2/gamma/Adam2batch_normalization_2/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
и
%batch_normalization_2/gamma/Adam/readIdentity batch_normalization_2/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
▒
4batch_normalization_2/gamma/Adam_1/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
╛
"batch_normalization_2/gamma/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
Л
)batch_normalization_2/gamma/Adam_1/AssignAssign"batch_normalization_2/gamma/Adam_14batch_normalization_2/gamma/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
м
'batch_normalization_2/gamma/Adam_1/readIdentity"batch_normalization_2/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
н
1batch_normalization_2/beta/Adam/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
║
batch_normalization_2/beta/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@
Б
&batch_normalization_2/beta/Adam/AssignAssignbatch_normalization_2/beta/Adam1batch_normalization_2/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
е
$batch_normalization_2/beta/Adam/readIdentitybatch_normalization_2/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
п
3batch_normalization_2/beta/Adam_1/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
╝
!batch_normalization_2/beta/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@
З
(batch_normalization_2/beta/Adam_1/AssignAssign!batch_normalization_2/beta/Adam_13batch_normalization_2/beta/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
й
&batch_normalization_2/beta/Adam_1/readIdentity!batch_normalization_2/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
│
6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
№
&conv2d_3/kernel/Adam/Initializer/zerosFill6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
╛
conv2d_3/kernel/Adam
VariableV2*
shape:@О*
dtype0*'
_output_shapes
:@О*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container 
т
conv2d_3/kernel/Adam/AssignAssignconv2d_3/kernel/Adam&conv2d_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
С
conv2d_3/kernel/Adam/readIdentityconv2d_3/kernel/Adam*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
╡
8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
В
(conv2d_3/kernel/Adam_1/Initializer/zerosFill8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
└
conv2d_3/kernel/Adam_1
VariableV2*
dtype0*'
_output_shapes
:@О*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@О
ш
conv2d_3/kernel/Adam_1/AssignAssignconv2d_3/kernel/Adam_1(conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
Х
conv2d_3/kernel/Adam_1/readIdentityconv2d_3/kernel/Adam_1*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
Х
$conv2d_3/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    * 
_class
loc:@conv2d_3/bias
в
conv2d_3/bias/Adam
VariableV2*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:О*
dtype0*
_output_shapes	
:О
╬
conv2d_3/bias/Adam/AssignAssignconv2d_3/bias/Adam$conv2d_3/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О

conv2d_3/bias/Adam/readIdentityconv2d_3/bias/Adam*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:О
Ч
&conv2d_3/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    * 
_class
loc:@conv2d_3/bias
д
conv2d_3/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:О*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:О
╘
conv2d_3/bias/Adam_1/AssignAssignconv2d_3/bias/Adam_1&conv2d_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
Г
conv2d_3/bias/Adam_1/readIdentityconv2d_3/bias/Adam_1*
_output_shapes	
:О*
T0* 
_class
loc:@conv2d_3/bias
▒
2batch_normalization_3/gamma/Adam/Initializer/zerosConst*
valueBО*    *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:О
╛
 batch_normalization_3/gamma/Adam
VariableV2*
shape:О*
dtype0*
_output_shapes	
:О*
shared_name *.
_class$
" loc:@batch_normalization_3/gamma*
	container 
Ж
'batch_normalization_3/gamma/Adam/AssignAssign batch_normalization_3/gamma/Adam2batch_normalization_3/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
й
%batch_normalization_3/gamma/Adam/readIdentity batch_normalization_3/gamma/Adam*
_output_shapes	
:О*
T0*.
_class$
" loc:@batch_normalization_3/gamma
│
4batch_normalization_3/gamma/Adam_1/Initializer/zerosConst*
valueBО*    *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes	
:О
└
"batch_normalization_3/gamma/Adam_1
VariableV2*.
_class$
" loc:@batch_normalization_3/gamma*
	container *
shape:О*
dtype0*
_output_shapes	
:О*
shared_name 
М
)batch_normalization_3/gamma/Adam_1/AssignAssign"batch_normalization_3/gamma/Adam_14batch_normalization_3/gamma/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma
н
'batch_normalization_3/gamma/Adam_1/readIdentity"batch_normalization_3/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:О
п
1batch_normalization_3/beta/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    *-
_class#
!loc:@batch_normalization_3/beta
╝
batch_normalization_3/beta/Adam
VariableV2*
dtype0*
_output_shapes	
:О*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
	container *
shape:О
В
&batch_normalization_3/beta/Adam/AssignAssignbatch_normalization_3/beta/Adam1batch_normalization_3/beta/Adam/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О*
use_locking(
ж
$batch_normalization_3/beta/Adam/readIdentitybatch_normalization_3/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:О
▒
3batch_normalization_3/beta/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    *-
_class#
!loc:@batch_normalization_3/beta
╛
!batch_normalization_3/beta/Adam_1
VariableV2*
	container *
shape:О*
dtype0*
_output_shapes	
:О*
shared_name *-
_class#
!loc:@batch_normalization_3/beta
И
(batch_normalization_3/beta/Adam_1/AssignAssign!batch_normalization_3/beta/Adam_13batch_normalization_3/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
к
&batch_normalization_3/beta/Adam_1/readIdentity!batch_normalization_3/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:О
│
6conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
¤
&conv2d_4/kernel/Adam/Initializer/zerosFill6conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
└
conv2d_4/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape:ОА*
dtype0*(
_output_shapes
:ОА
у
conv2d_4/kernel/Adam/AssignAssignconv2d_4/kernel/Adam&conv2d_4/kernel/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:ОА*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel
Т
conv2d_4/kernel/Adam/readIdentityconv2d_4/kernel/Adam*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
╡
8conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_4/kernel
Г
(conv2d_4/kernel/Adam_1/Initializer/zerosFill8conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_4/kernel/Adam_1/Initializer/zeros/Const*(
_output_shapes
:ОА*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel
┬
conv2d_4/kernel/Adam_1
VariableV2*
	container *
shape:ОА*
dtype0*(
_output_shapes
:ОА*
shared_name *"
_class
loc:@conv2d_4/kernel
щ
conv2d_4/kernel/Adam_1/AssignAssignconv2d_4/kernel/Adam_1(conv2d_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
Ц
conv2d_4/kernel/Adam_1/readIdentityconv2d_4/kernel/Adam_1*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
Х
$conv2d_4/bias/Adam/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:А
в
conv2d_4/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@conv2d_4/bias
╬
conv2d_4/bias/Adam/AssignAssignconv2d_4/bias/Adam$conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А

conv2d_4/bias/Adam/readIdentityconv2d_4/bias/Adam*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:А
Ч
&conv2d_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    * 
_class
loc:@conv2d_4/bias
д
conv2d_4/bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
╘
conv2d_4/bias/Adam_1/AssignAssignconv2d_4/bias/Adam_1&conv2d_4/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias
Г
conv2d_4/bias/Adam_1/readIdentityconv2d_4/bias/Adam_1*
_output_shapes	
:А*
T0* 
_class
loc:@conv2d_4/bias
▒
&conv2d_5/kernel/Adam/Initializer/zerosConst*&
valueBА*    *"
_class
loc:@conv2d_5/kernel*
dtype0*'
_output_shapes
:А
╛
conv2d_5/kernel/Adam
VariableV2*
dtype0*'
_output_shapes
:А*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А
т
conv2d_5/kernel/Adam/AssignAssignconv2d_5/kernel/Adam&conv2d_5/kernel/Adam/Initializer/zeros*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
С
conv2d_5/kernel/Adam/readIdentityconv2d_5/kernel/Adam*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
│
(conv2d_5/kernel/Adam_1/Initializer/zerosConst*&
valueBА*    *"
_class
loc:@conv2d_5/kernel*
dtype0*'
_output_shapes
:А
└
conv2d_5/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А*
dtype0*'
_output_shapes
:А
ш
conv2d_5/kernel/Adam_1/AssignAssignconv2d_5/kernel/Adam_1(conv2d_5/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
Х
conv2d_5/kernel/Adam_1/readIdentityconv2d_5/kernel/Adam_1*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
У
$conv2d_5/bias/Adam/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
а
conv2d_5/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:
═
conv2d_5/bias/Adam/AssignAssignconv2d_5/bias/Adam$conv2d_5/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
~
conv2d_5/bias/Adam/readIdentityconv2d_5/bias/Adam*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:
Х
&conv2d_5/bias/Adam_1/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
в
conv2d_5/bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
:
╙
conv2d_5/bias/Adam_1/AssignAssignconv2d_5/bias/Adam_1&conv2d_5/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
В
conv2d_5/bias/Adam_1/readIdentityconv2d_5/bias/Adam_1*
_output_shapes
:*
T0* 
_class
loc:@conv2d_5/bias
Ь
train/learning_rateConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
Ф
train/beta1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ф
train/beta2Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
Ц
train/epsilonConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *w╠+2
┘
$train/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_32*
T0* 
_class
loc:@conv2d/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
├
"train/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_31*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*
_class
loc:@conv2d/bias
Й
0train/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_28*
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( *
_output_shapes
: *
use_locking( 
Д
/train/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_29*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( *
_output_shapes
: 
у
&train/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_25*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: 0
═
$train/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_24*
T0* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
:0*
use_locking( 
У
2train/update_batch_normalization_1/gamma/ApplyAdam	ApplyAdambatch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_21*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_1/gamma*
use_nesterov( *
_output_shapes
:0
О
1train/update_batch_normalization_1/beta/ApplyAdam	ApplyAdambatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_22*
T0*-
_class#
!loc:@batch_normalization_1/beta*
use_nesterov( *
_output_shapes
:0*
use_locking( 
у
&train/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_18*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *&
_output_shapes
:0@
═
$train/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_17*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
У
2train/update_batch_normalization_2/gamma/ApplyAdam	ApplyAdambatch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_14*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_2/gamma
О
1train/update_batch_normalization_2/beta/ApplyAdam	ApplyAdambatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_15*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_2/beta*
use_nesterov( *
_output_shapes
:@
ф
&train/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_11*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@О
╬
$train/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_10*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
_output_shapes	
:О
У
2train/update_batch_normalization_3/gamma/ApplyAdam	ApplyAdambatch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_7*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
use_nesterov( *
_output_shapes	
:О*
use_locking( 
О
1train/update_batch_normalization_3/beta/ApplyAdam	ApplyAdambatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_8*
T0*-
_class#
!loc:@batch_normalization_3/beta*
use_nesterov( *
_output_shapes	
:О*
use_locking( 
ф
&train/update_conv2d_4/kernel/ApplyAdam	ApplyAdamconv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_4*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:ОА
═
$train/update_conv2d_4/bias/ApplyAdam	ApplyAdamconv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_3*
use_locking( *
T0* 
_class
loc:@conv2d_4/bias*
use_nesterov( *
_output_shapes	
:А
М
&train/update_conv2d_5/kernel/ApplyAdam	ApplyAdamconv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_5/kernel*
use_nesterov( *'
_output_shapes
:А
╩
$train/update_conv2d_5/bias/ApplyAdam	ApplyAdamconv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN*
use_locking( *
T0* 
_class
loc:@conv2d_5/bias*
use_nesterov( *
_output_shapes
:
∙
	train/mulMulbeta1_power/readtrain/beta10^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam2^train/update_batch_normalization_3/beta/ApplyAdam3^train/update_batch_normalization_3/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
е
train/AssignAssignbeta1_power	train/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
√
train/mul_1Mulbeta2_power/readtrain/beta20^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam2^train/update_batch_normalization_3/beta/ApplyAdam3^train/update_batch_normalization_3/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
й
train/Assign_1Assignbeta2_powertrain/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta
э	
trainNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1^train/Assign^train/Assign_10^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam2^train/update_batch_normalization_3/beta/ApplyAdam3^train/update_batch_normalization_3/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ф
save/SaveV2/tensor_namesConst*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:F
Є
save/SaveV2/shape_and_slicesConst*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
▒
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1batch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1conv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1conv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1conv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1conv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1*T
dtypesJ
H2F
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
ч
save/RestoreV2/tensor_namesConst*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:F
ї
save/RestoreV2/shape_and_slicesConst*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
ь
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*T
dtypesJ
H2F*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
║
save/AssignAssignbatch_normalization/betasave/RestoreV2*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
├
save/Assign_1Assignbatch_normalization/beta/Adamsave/RestoreV2:1*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
┼
save/Assign_2Assignbatch_normalization/beta/Adam_1save/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
└
save/Assign_3Assignbatch_normalization/gammasave/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
┼
save/Assign_4Assignbatch_normalization/gamma/Adamsave/RestoreV2:4*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
╟
save/Assign_5Assign batch_normalization/gamma/Adam_1save/RestoreV2:5*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
╠
save/Assign_6Assignbatch_normalization/moving_meansave/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
╘
save/Assign_7Assign#batch_normalization/moving_variancesave/RestoreV2:7*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
┬
save/Assign_8Assignbatch_normalization_1/betasave/RestoreV2:8*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
╟
save/Assign_9Assignbatch_normalization_1/beta/Adamsave/RestoreV2:9*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
╦
save/Assign_10Assign!batch_normalization_1/beta/Adam_1save/RestoreV2:10*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
╞
save/Assign_11Assignbatch_normalization_1/gammasave/RestoreV2:11*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma
╦
save/Assign_12Assign batch_normalization_1/gamma/Adamsave/RestoreV2:12*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
═
save/Assign_13Assign"batch_normalization_1/gamma/Adam_1save/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╥
save/Assign_14Assign!batch_normalization_1/moving_meansave/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
┌
save/Assign_15Assign%batch_normalization_1/moving_variancesave/RestoreV2:15*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0
─
save/Assign_16Assignbatch_normalization_2/betasave/RestoreV2:16*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
╔
save/Assign_17Assignbatch_normalization_2/beta/Adamsave/RestoreV2:17*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
╦
save/Assign_18Assign!batch_normalization_2/beta/Adam_1save/RestoreV2:18*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta
╞
save/Assign_19Assignbatch_normalization_2/gammasave/RestoreV2:19*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
╦
save/Assign_20Assign batch_normalization_2/gamma/Adamsave/RestoreV2:20*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
═
save/Assign_21Assign"batch_normalization_2/gamma/Adam_1save/RestoreV2:21*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
╥
save/Assign_22Assign!batch_normalization_2/moving_meansave/RestoreV2:22*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
┌
save/Assign_23Assign%batch_normalization_2/moving_variancesave/RestoreV2:23*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
┼
save/Assign_24Assignbatch_normalization_3/betasave/RestoreV2:24*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
╩
save/Assign_25Assignbatch_normalization_3/beta/Adamsave/RestoreV2:25*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta
╠
save/Assign_26Assign!batch_normalization_3/beta/Adam_1save/RestoreV2:26*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta
╟
save/Assign_27Assignbatch_normalization_3/gammasave/RestoreV2:27*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
╠
save/Assign_28Assign batch_normalization_3/gamma/Adamsave/RestoreV2:28*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
╬
save/Assign_29Assign"batch_normalization_3/gamma/Adam_1save/RestoreV2:29*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
╙
save/Assign_30Assign!batch_normalization_3/moving_meansave/RestoreV2:30*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
█
save/Assign_31Assign%batch_normalization_3/moving_variancesave/RestoreV2:31*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:О*
use_locking(
п
save/Assign_32Assignbeta1_powersave/RestoreV2:32*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
п
save/Assign_33Assignbeta2_powersave/RestoreV2:33*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
ж
save/Assign_34Assignconv2d/biassave/RestoreV2:34*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
л
save/Assign_35Assignconv2d/bias/Adamsave/RestoreV2:35*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
н
save/Assign_36Assignconv2d/bias/Adam_1save/RestoreV2:36*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
╢
save/Assign_37Assignconv2d/kernelsave/RestoreV2:37*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╗
save/Assign_38Assignconv2d/kernel/Adamsave/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
╜
save/Assign_39Assignconv2d/kernel/Adam_1save/RestoreV2:39*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
к
save/Assign_40Assignconv2d_1/biassave/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
п
save/Assign_41Assignconv2d_1/bias/Adamsave/RestoreV2:41*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
▒
save/Assign_42Assignconv2d_1/bias/Adam_1save/RestoreV2:42*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
║
save/Assign_43Assignconv2d_1/kernelsave/RestoreV2:43*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
┐
save/Assign_44Assignconv2d_1/kernel/Adamsave/RestoreV2:44*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
┴
save/Assign_45Assignconv2d_1/kernel/Adam_1save/RestoreV2:45*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0*
use_locking(
к
save/Assign_46Assignconv2d_2/biassave/RestoreV2:46*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
п
save/Assign_47Assignconv2d_2/bias/Adamsave/RestoreV2:47*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
▒
save/Assign_48Assignconv2d_2/bias/Adam_1save/RestoreV2:48*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
║
save/Assign_49Assignconv2d_2/kernelsave/RestoreV2:49*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
┐
save/Assign_50Assignconv2d_2/kernel/Adamsave/RestoreV2:50*
validate_shape(*&
_output_shapes
:0@*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
┴
save/Assign_51Assignconv2d_2/kernel/Adam_1save/RestoreV2:51*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
л
save/Assign_52Assignconv2d_3/biassave/RestoreV2:52*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
░
save/Assign_53Assignconv2d_3/bias/Adamsave/RestoreV2:53*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
▓
save/Assign_54Assignconv2d_3/bias/Adam_1save/RestoreV2:54*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
╗
save/Assign_55Assignconv2d_3/kernelsave/RestoreV2:55*
validate_shape(*'
_output_shapes
:@О*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
└
save/Assign_56Assignconv2d_3/kernel/Adamsave/RestoreV2:56*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О*
use_locking(
┬
save/Assign_57Assignconv2d_3/kernel/Adam_1save/RestoreV2:57*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
л
save/Assign_58Assignconv2d_4/biassave/RestoreV2:58*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
░
save/Assign_59Assignconv2d_4/bias/Adamsave/RestoreV2:59*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
▓
save/Assign_60Assignconv2d_4/bias/Adam_1save/RestoreV2:60*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
╝
save/Assign_61Assignconv2d_4/kernelsave/RestoreV2:61*
validate_shape(*(
_output_shapes
:ОА*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel
┴
save/Assign_62Assignconv2d_4/kernel/Adamsave/RestoreV2:62*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
├
save/Assign_63Assignconv2d_4/kernel/Adam_1save/RestoreV2:63*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА*
use_locking(
к
save/Assign_64Assignconv2d_5/biassave/RestoreV2:64*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:*
use_locking(
п
save/Assign_65Assignconv2d_5/bias/Adamsave/RestoreV2:65*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
▒
save/Assign_66Assignconv2d_5/bias/Adam_1save/RestoreV2:66*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
╗
save/Assign_67Assignconv2d_5/kernelsave/RestoreV2:67*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
└
save/Assign_68Assignconv2d_5/kernel/Adamsave/RestoreV2:68*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
┬
save/Assign_69Assignconv2d_5/kernel/Adam_1save/RestoreV2:69*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
▓	
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_8^save/Assign_9
╛
initNoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign'^batch_normalization_1/beta/Adam/Assign)^batch_normalization_1/beta/Adam_1/Assign"^batch_normalization_1/beta/Assign(^batch_normalization_1/gamma/Adam/Assign*^batch_normalization_1/gamma/Adam_1/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign'^batch_normalization_2/beta/Adam/Assign)^batch_normalization_2/beta/Adam_1/Assign"^batch_normalization_2/beta/Assign(^batch_normalization_2/gamma/Adam/Assign*^batch_normalization_2/gamma/Adam_1/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign'^batch_normalization_3/beta/Adam/Assign)^batch_normalization_3/beta/Adam_1/Assign"^batch_normalization_3/beta/Assign(^batch_normalization_3/gamma/Adam/Assign*^batch_normalization_3/gamma/Adam_1/Assign#^batch_normalization_3/gamma/Assign)^batch_normalization_3/moving_mean/Assign-^batch_normalization_3/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/bias/Adam/Assign^conv2d/bias/Adam_1/Assign^conv2d/bias/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d/kernel/Assign^conv2d_1/bias/Adam/Assign^conv2d_1/bias/Adam_1/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Adam/Assign^conv2d_2/bias/Adam_1/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Adam/Assign^conv2d_2/kernel/Adam_1/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Adam/Assign^conv2d_3/bias/Adam_1/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Adam/Assign^conv2d_3/kernel/Adam_1/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Adam/Assign^conv2d_4/bias/Adam_1/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Adam/Assign^conv2d_4/kernel/Adam_1/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Adam/Assign^conv2d_5/bias/Adam_1/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Adam/Assign^conv2d_5/kernel/Adam_1/Assign^conv2d_5/kernel/Assign

init_1NoOp
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ц
save_1/SaveV2/tensor_namesConst*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:F
Ї
save_1/SaveV2/shape_and_slicesConst*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
╣
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1batch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1conv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1conv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1conv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1conv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1*T
dtypesJ
H2F
Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_1/Const
щ
save_1/RestoreV2/tensor_namesConst*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:F
ў
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:F*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ї
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F
╛
save_1/AssignAssignbatch_normalization/betasave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
╟
save_1/Assign_1Assignbatch_normalization/beta/Adamsave_1/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
╔
save_1/Assign_2Assignbatch_normalization/beta/Adam_1save_1/RestoreV2:2*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
─
save_1/Assign_3Assignbatch_normalization/gammasave_1/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
╔
save_1/Assign_4Assignbatch_normalization/gamma/Adamsave_1/RestoreV2:4*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
╦
save_1/Assign_5Assign batch_normalization/gamma/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
╨
save_1/Assign_6Assignbatch_normalization/moving_meansave_1/RestoreV2:6*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
╪
save_1/Assign_7Assign#batch_normalization/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: 
╞
save_1/Assign_8Assignbatch_normalization_1/betasave_1/RestoreV2:8*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
╦
save_1/Assign_9Assignbatch_normalization_1/beta/Adamsave_1/RestoreV2:9*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
╧
save_1/Assign_10Assign!batch_normalization_1/beta/Adam_1save_1/RestoreV2:10*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
╩
save_1/Assign_11Assignbatch_normalization_1/gammasave_1/RestoreV2:11*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╧
save_1/Assign_12Assign batch_normalization_1/gamma/Adamsave_1/RestoreV2:12*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╤
save_1/Assign_13Assign"batch_normalization_1/gamma/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╓
save_1/Assign_14Assign!batch_normalization_1/moving_meansave_1/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
▐
save_1/Assign_15Assign%batch_normalization_1/moving_variancesave_1/RestoreV2:15*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0*
use_locking(
╚
save_1/Assign_16Assignbatch_normalization_2/betasave_1/RestoreV2:16*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
═
save_1/Assign_17Assignbatch_normalization_2/beta/Adamsave_1/RestoreV2:17*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
╧
save_1/Assign_18Assign!batch_normalization_2/beta/Adam_1save_1/RestoreV2:18*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
╩
save_1/Assign_19Assignbatch_normalization_2/gammasave_1/RestoreV2:19*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
╧
save_1/Assign_20Assign batch_normalization_2/gamma/Adamsave_1/RestoreV2:20*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
╤
save_1/Assign_21Assign"batch_normalization_2/gamma/Adam_1save_1/RestoreV2:21*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
╓
save_1/Assign_22Assign!batch_normalization_2/moving_meansave_1/RestoreV2:22*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@
▐
save_1/Assign_23Assign%batch_normalization_2/moving_variancesave_1/RestoreV2:23*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
╔
save_1/Assign_24Assignbatch_normalization_3/betasave_1/RestoreV2:24*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
╬
save_1/Assign_25Assignbatch_normalization_3/beta/Adamsave_1/RestoreV2:25*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
╨
save_1/Assign_26Assign!batch_normalization_3/beta/Adam_1save_1/RestoreV2:26*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О*
use_locking(
╦
save_1/Assign_27Assignbatch_normalization_3/gammasave_1/RestoreV2:27*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О*
use_locking(
╨
save_1/Assign_28Assign batch_normalization_3/gamma/Adamsave_1/RestoreV2:28*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О*
use_locking(
╥
save_1/Assign_29Assign"batch_normalization_3/gamma/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
╫
save_1/Assign_30Assign!batch_normalization_3/moving_meansave_1/RestoreV2:30*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:О
▀
save_1/Assign_31Assign%batch_normalization_3/moving_variancesave_1/RestoreV2:31*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:О
│
save_1/Assign_32Assignbeta1_powersave_1/RestoreV2:32*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
│
save_1/Assign_33Assignbeta2_powersave_1/RestoreV2:33*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
к
save_1/Assign_34Assignconv2d/biassave_1/RestoreV2:34*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
п
save_1/Assign_35Assignconv2d/bias/Adamsave_1/RestoreV2:35*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
▒
save_1/Assign_36Assignconv2d/bias/Adam_1save_1/RestoreV2:36*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
║
save_1/Assign_37Assignconv2d/kernelsave_1/RestoreV2:37*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
┐
save_1/Assign_38Assignconv2d/kernel/Adamsave_1/RestoreV2:38*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
┴
save_1/Assign_39Assignconv2d/kernel/Adam_1save_1/RestoreV2:39*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
о
save_1/Assign_40Assignconv2d_1/biassave_1/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
│
save_1/Assign_41Assignconv2d_1/bias/Adamsave_1/RestoreV2:41*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
╡
save_1/Assign_42Assignconv2d_1/bias/Adam_1save_1/RestoreV2:42*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
╛
save_1/Assign_43Assignconv2d_1/kernelsave_1/RestoreV2:43*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
├
save_1/Assign_44Assignconv2d_1/kernel/Adamsave_1/RestoreV2:44*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
┼
save_1/Assign_45Assignconv2d_1/kernel/Adam_1save_1/RestoreV2:45*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
о
save_1/Assign_46Assignconv2d_2/biassave_1/RestoreV2:46*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
│
save_1/Assign_47Assignconv2d_2/bias/Adamsave_1/RestoreV2:47*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
╡
save_1/Assign_48Assignconv2d_2/bias/Adam_1save_1/RestoreV2:48*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╛
save_1/Assign_49Assignconv2d_2/kernelsave_1/RestoreV2:49*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
├
save_1/Assign_50Assignconv2d_2/kernel/Adamsave_1/RestoreV2:50*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
┼
save_1/Assign_51Assignconv2d_2/kernel/Adam_1save_1/RestoreV2:51*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
п
save_1/Assign_52Assignconv2d_3/biassave_1/RestoreV2:52*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
┤
save_1/Assign_53Assignconv2d_3/bias/Adamsave_1/RestoreV2:53*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
╢
save_1/Assign_54Assignconv2d_3/bias/Adam_1save_1/RestoreV2:54*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
┐
save_1/Assign_55Assignconv2d_3/kernelsave_1/RestoreV2:55*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
─
save_1/Assign_56Assignconv2d_3/kernel/Adamsave_1/RestoreV2:56*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
╞
save_1/Assign_57Assignconv2d_3/kernel/Adam_1save_1/RestoreV2:57*
validate_shape(*'
_output_shapes
:@О*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
п
save_1/Assign_58Assignconv2d_4/biassave_1/RestoreV2:58*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
┤
save_1/Assign_59Assignconv2d_4/bias/Adamsave_1/RestoreV2:59*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
╢
save_1/Assign_60Assignconv2d_4/bias/Adam_1save_1/RestoreV2:60*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
└
save_1/Assign_61Assignconv2d_4/kernelsave_1/RestoreV2:61*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА*
use_locking(
┼
save_1/Assign_62Assignconv2d_4/kernel/Adamsave_1/RestoreV2:62*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
╟
save_1/Assign_63Assignconv2d_4/kernel/Adam_1save_1/RestoreV2:63*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
о
save_1/Assign_64Assignconv2d_5/biassave_1/RestoreV2:64*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
│
save_1/Assign_65Assignconv2d_5/bias/Adamsave_1/RestoreV2:65*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
╡
save_1/Assign_66Assignconv2d_5/bias/Adam_1save_1/RestoreV2:66*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
┐
save_1/Assign_67Assignconv2d_5/kernelsave_1/RestoreV2:67*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
─
save_1/Assign_68Assignconv2d_5/kernel/Adamsave_1/RestoreV2:68*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
╞
save_1/Assign_69Assignconv2d_5/kernel/Adam_1save_1/RestoreV2:69*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
└

save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
└
init_2NoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign'^batch_normalization_1/beta/Adam/Assign)^batch_normalization_1/beta/Adam_1/Assign"^batch_normalization_1/beta/Assign(^batch_normalization_1/gamma/Adam/Assign*^batch_normalization_1/gamma/Adam_1/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign'^batch_normalization_2/beta/Adam/Assign)^batch_normalization_2/beta/Adam_1/Assign"^batch_normalization_2/beta/Assign(^batch_normalization_2/gamma/Adam/Assign*^batch_normalization_2/gamma/Adam_1/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign'^batch_normalization_3/beta/Adam/Assign)^batch_normalization_3/beta/Adam_1/Assign"^batch_normalization_3/beta/Assign(^batch_normalization_3/gamma/Adam/Assign*^batch_normalization_3/gamma/Adam_1/Assign#^batch_normalization_3/gamma/Assign)^batch_normalization_3/moving_mean/Assign-^batch_normalization_3/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/bias/Adam/Assign^conv2d/bias/Adam_1/Assign^conv2d/bias/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d/kernel/Assign^conv2d_1/bias/Adam/Assign^conv2d_1/bias/Adam_1/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Adam/Assign^conv2d_2/bias/Adam_1/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Adam/Assign^conv2d_2/kernel/Adam_1/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Adam/Assign^conv2d_3/bias/Adam_1/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Adam/Assign^conv2d_3/kernel/Adam_1/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Adam/Assign^conv2d_4/bias/Adam_1/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Adam/Assign^conv2d_4/kernel/Adam_1/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Adam/Assign^conv2d_5/bias/Adam_1/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Adam/Assign^conv2d_5/kernel/Adam_1/Assign^conv2d_5/kernel/Assign

init_3NoOp
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_55de9eab0b824e77ab41470e376fc9a9/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
ц
save_2/SaveV2/tensor_namesConst*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:F
Ї
save_2/SaveV2/shape_and_slicesConst*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
├
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/beta/Adam!batch_normalization_3/beta/Adam_1batch_normalization_3/gamma batch_normalization_3/gamma/Adam"batch_normalization_3/gamma/Adam_1!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1conv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1conv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1conv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1conv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1*T
dtypesJ
H2F
Щ
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_2/ShardedFilename
г
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
В
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
щ
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:F*Ч
valueНBКFBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/beta/AdamB!batch_normalization_3/beta/Adam_1Bbatch_normalization_3/gammaB batch_normalization_3/gamma/AdamB"batch_normalization_3/gamma/Adam_1B!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1
ў
!save_2/RestoreV2/shape_and_slicesConst*б
valueЧBФFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
Ї
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F
╛
save_2/AssignAssignbatch_normalization/betasave_2/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
╟
save_2/Assign_1Assignbatch_normalization/beta/Adamsave_2/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
╔
save_2/Assign_2Assignbatch_normalization/beta/Adam_1save_2/RestoreV2:2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
─
save_2/Assign_3Assignbatch_normalization/gammasave_2/RestoreV2:3*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
╔
save_2/Assign_4Assignbatch_normalization/gamma/Adamsave_2/RestoreV2:4*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
╦
save_2/Assign_5Assign batch_normalization/gamma/Adam_1save_2/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
╨
save_2/Assign_6Assignbatch_normalization/moving_meansave_2/RestoreV2:6*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
╪
save_2/Assign_7Assign#batch_normalization/moving_variancesave_2/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: 
╞
save_2/Assign_8Assignbatch_normalization_1/betasave_2/RestoreV2:8*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
╦
save_2/Assign_9Assignbatch_normalization_1/beta/Adamsave_2/RestoreV2:9*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
╧
save_2/Assign_10Assign!batch_normalization_1/beta/Adam_1save_2/RestoreV2:10*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
╩
save_2/Assign_11Assignbatch_normalization_1/gammasave_2/RestoreV2:11*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0*
use_locking(
╧
save_2/Assign_12Assign batch_normalization_1/gamma/Adamsave_2/RestoreV2:12*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╤
save_2/Assign_13Assign"batch_normalization_1/gamma/Adam_1save_2/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
╓
save_2/Assign_14Assign!batch_normalization_1/moving_meansave_2/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
▐
save_2/Assign_15Assign%batch_normalization_1/moving_variancesave_2/RestoreV2:15*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0
╚
save_2/Assign_16Assignbatch_normalization_2/betasave_2/RestoreV2:16*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
═
save_2/Assign_17Assignbatch_normalization_2/beta/Adamsave_2/RestoreV2:17*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
╧
save_2/Assign_18Assign!batch_normalization_2/beta/Adam_1save_2/RestoreV2:18*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta
╩
save_2/Assign_19Assignbatch_normalization_2/gammasave_2/RestoreV2:19*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
╧
save_2/Assign_20Assign batch_normalization_2/gamma/Adamsave_2/RestoreV2:20*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
╤
save_2/Assign_21Assign"batch_normalization_2/gamma/Adam_1save_2/RestoreV2:21*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
╓
save_2/Assign_22Assign!batch_normalization_2/moving_meansave_2/RestoreV2:22*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
▐
save_2/Assign_23Assign%batch_normalization_2/moving_variancesave_2/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
╔
save_2/Assign_24Assignbatch_normalization_3/betasave_2/RestoreV2:24*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
╬
save_2/Assign_25Assignbatch_normalization_3/beta/Adamsave_2/RestoreV2:25*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О*
use_locking(
╨
save_2/Assign_26Assign!batch_normalization_3/beta/Adam_1save_2/RestoreV2:26*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:О
╦
save_2/Assign_27Assignbatch_normalization_3/gammasave_2/RestoreV2:27*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:О
╨
save_2/Assign_28Assign batch_normalization_3/gamma/Adamsave_2/RestoreV2:28*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma
╥
save_2/Assign_29Assign"batch_normalization_3/gamma/Adam_1save_2/RestoreV2:29*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma
╫
save_2/Assign_30Assign!batch_normalization_3/moving_meansave_2/RestoreV2:30*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:О
▀
save_2/Assign_31Assign%batch_normalization_3/moving_variancesave_2/RestoreV2:31*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
│
save_2/Assign_32Assignbeta1_powersave_2/RestoreV2:32*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
│
save_2/Assign_33Assignbeta2_powersave_2/RestoreV2:33*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
к
save_2/Assign_34Assignconv2d/biassave_2/RestoreV2:34*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
п
save_2/Assign_35Assignconv2d/bias/Adamsave_2/RestoreV2:35*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
▒
save_2/Assign_36Assignconv2d/bias/Adam_1save_2/RestoreV2:36*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
║
save_2/Assign_37Assignconv2d/kernelsave_2/RestoreV2:37*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
┐
save_2/Assign_38Assignconv2d/kernel/Adamsave_2/RestoreV2:38*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
┴
save_2/Assign_39Assignconv2d/kernel/Adam_1save_2/RestoreV2:39*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
о
save_2/Assign_40Assignconv2d_1/biassave_2/RestoreV2:40*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
│
save_2/Assign_41Assignconv2d_1/bias/Adamsave_2/RestoreV2:41*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
╡
save_2/Assign_42Assignconv2d_1/bias/Adam_1save_2/RestoreV2:42*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
╛
save_2/Assign_43Assignconv2d_1/kernelsave_2/RestoreV2:43*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0*
use_locking(
├
save_2/Assign_44Assignconv2d_1/kernel/Adamsave_2/RestoreV2:44*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
┼
save_2/Assign_45Assignconv2d_1/kernel/Adam_1save_2/RestoreV2:45*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0*
use_locking(
о
save_2/Assign_46Assignconv2d_2/biassave_2/RestoreV2:46*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
│
save_2/Assign_47Assignconv2d_2/bias/Adamsave_2/RestoreV2:47*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
╡
save_2/Assign_48Assignconv2d_2/bias/Adam_1save_2/RestoreV2:48*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
╛
save_2/Assign_49Assignconv2d_2/kernelsave_2/RestoreV2:49*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
├
save_2/Assign_50Assignconv2d_2/kernel/Adamsave_2/RestoreV2:50*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
┼
save_2/Assign_51Assignconv2d_2/kernel/Adam_1save_2/RestoreV2:51*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
п
save_2/Assign_52Assignconv2d_3/biassave_2/RestoreV2:52*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
┤
save_2/Assign_53Assignconv2d_3/bias/Adamsave_2/RestoreV2:53*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
╢
save_2/Assign_54Assignconv2d_3/bias/Adam_1save_2/RestoreV2:54*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
┐
save_2/Assign_55Assignconv2d_3/kernelsave_2/RestoreV2:55*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
─
save_2/Assign_56Assignconv2d_3/kernel/Adamsave_2/RestoreV2:56*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О*
use_locking(
╞
save_2/Assign_57Assignconv2d_3/kernel/Adam_1save_2/RestoreV2:57*
validate_shape(*'
_output_shapes
:@О*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
п
save_2/Assign_58Assignconv2d_4/biassave_2/RestoreV2:58*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
┤
save_2/Assign_59Assignconv2d_4/bias/Adamsave_2/RestoreV2:59*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
╢
save_2/Assign_60Assignconv2d_4/bias/Adam_1save_2/RestoreV2:60*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
└
save_2/Assign_61Assignconv2d_4/kernelsave_2/RestoreV2:61*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
┼
save_2/Assign_62Assignconv2d_4/kernel/Adamsave_2/RestoreV2:62*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА*
use_locking(
╟
save_2/Assign_63Assignconv2d_4/kernel/Adam_1save_2/RestoreV2:63*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
о
save_2/Assign_64Assignconv2d_5/biassave_2/RestoreV2:64*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
│
save_2/Assign_65Assignconv2d_5/bias/Adamsave_2/RestoreV2:65*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
╡
save_2/Assign_66Assignconv2d_5/bias/Adam_1save_2/RestoreV2:66*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
┐
save_2/Assign_67Assignconv2d_5/kernelsave_2/RestoreV2:67*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
─
save_2/Assign_68Assignconv2d_5/kernel/Adamsave_2/RestoreV2:68*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
╞
save_2/Assign_69Assignconv2d_5/kernel/Adam_1save_2/RestoreV2:69*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
┬

save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_4^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49^save_2/Assign_5^save_2/Assign_50^save_2/Assign_51^save_2/Assign_52^save_2/Assign_53^save_2/Assign_54^save_2/Assign_55^save_2/Assign_56^save_2/Assign_57^save_2/Assign_58^save_2/Assign_59^save_2/Assign_6^save_2/Assign_60^save_2/Assign_61^save_2/Assign_62^save_2/Assign_63^save_2/Assign_64^save_2/Assign_65^save_2/Assign_66^save_2/Assign_67^save_2/Assign_68^save_2/Assign_69^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shardэЗ
Ўq
╜
/tf_data_structured_function_wrapper_sQDCgbB8YDo
arg0

arg1_0!
random_flip_left_right_select
arg12DWrapper for passing nested structures to and from tf.data functions.ИD
random_flip_left_right/ShapeShapearg0*
T0*
out_type0V
,random_flip_left_right/assert_positive/ConstConst*
value	B : *
dtype0ж
7random_flip_left_right/assert_positive/assert_less/LessLess5random_flip_left_right/assert_positive/Const:output:0%random_flip_left_right/Shape:output:0*
T0f
8random_flip_left_right/assert_positive/assert_less/ConstConst*
valueB: *
dtype0┌
6random_flip_left_right/assert_positive/assert_less/AllAll;random_flip_left_right/assert_positive/assert_less/Less:z:0Arandom_flip_left_right/assert_positive/assert_less/Const:output:0*
	keep_dims( *

Tidx0О
?random_flip_left_right/assert_positive/assert_less/Assert/ConstConst*
dtype0*7
value.B, B&all dims of 'image.shape' must be > 0.Ц
Grandom_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0Const*7
value.B, B&all dims of 'image.shape' must be > 0.*
dtype0·
@random_flip_left_right/assert_positive/assert_less/Assert/AssertAssert?random_flip_left_right/assert_positive/assert_less/All:output:0Prandom_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0:output:0*

T
2*
	summarizeа
)random_flip_left_right/control_dependencyIdentityarg0A^random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T0*
_class
	loc:@arg0t
random_flip_left_right/Shape_1Shape2random_flip_left_right/control_dependency:output:0*
T0*
out_type0X
*random_flip_left_right/strided_slice/stackConst*
valueB: *
dtype0Z
,random_flip_left_right/strided_slice/stack_1Const*
valueB:*
dtype0Z
,random_flip_left_right/strided_slice/stack_2Const*
dtype0*
valueB:·
$random_flip_left_right/strided_sliceStridedSlice'random_flip_left_right/Shape_1:output:03random_flip_left_right/strided_slice/stack:output:05random_flip_left_right/strided_slice/stack_1:output:05random_flip_left_right/strided_slice/stack_2:output:0*
end_mask *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask А
+random_flip_left_right/random_uniform/shapePack-random_flip_left_right/strided_slice:output:0*
T0*

axis *
NV
)random_flip_left_right/random_uniform/minConst*
valueB
 *    *
dtype0V
)random_flip_left_right/random_uniform/maxConst*
valueB
 *  А?*
dtype0й
3random_flip_left_right/random_uniform/RandomUniformRandomUniform4random_flip_left_right/random_uniform/shape:output:0*

seed *
T0*
dtype0*
seed2 б
)random_flip_left_right/random_uniform/subSub2random_flip_left_right/random_uniform/max:output:02random_flip_left_right/random_uniform/min:output:0*
T0ж
)random_flip_left_right/random_uniform/mulMul<random_flip_left_right/random_uniform/RandomUniform:output:0-random_flip_left_right/random_uniform/sub:z:0*
T0Ш
%random_flip_left_right/random_uniformAdd-random_flip_left_right/random_uniform/mul:z:02random_flip_left_right/random_uniform/min:output:0*
T0J
random_flip_left_right/Less/yConst*
valueB
 *   ?*
dtype0
random_flip_left_right/LessLess)random_flip_left_right/random_uniform:z:0&random_flip_left_right/Less/y:output:0*
T0v
 random_flip_left_right/map/ShapeShape2random_flip_left_right/control_dependency:output:0*
T0*
out_type0\
.random_flip_left_right/map/strided_slice/stackConst*
valueB: *
dtype0^
0random_flip_left_right/map/strided_slice/stack_1Const*
valueB:*
dtype0^
0random_flip_left_right/map/strided_slice/stack_2Const*
valueB:*
dtype0М
(random_flip_left_right/map/strided_sliceStridedSlice)random_flip_left_right/map/Shape:output:07random_flip_left_right/map/strided_slice/stack:output:09random_flip_left_right/map/strided_slice/stack_1:output:09random_flip_left_right/map/strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask є
&random_flip_left_right/map/TensorArrayTensorArrayV31random_flip_left_right/map/strided_slice:output:0*
tensor_array_name *
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(Й
3random_flip_left_right/map/TensorArrayUnstack/ShapeShape2random_flip_left_right/control_dependency:output:0*
T0*
out_type0o
Arandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0q
Crandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0q
Crandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0ы
;random_flip_left_right/map/TensorArrayUnstack/strided_sliceStridedSlice<random_flip_left_right/map/TensorArrayUnstack/Shape:output:0Jrandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stack:output:0Lrandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stack_1:output:0Lrandom_flip_left_right/map/TensorArrayUnstack/strided_slice/stack_2:output:0*
end_mask *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask c
9random_flip_left_right/map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0c
9random_flip_left_right/map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0Ц
3random_flip_left_right/map/TensorArrayUnstack/rangeRangeBrandom_flip_left_right/map/TensorArrayUnstack/range/start:output:0Drandom_flip_left_right/map/TensorArrayUnstack/strided_slice:output:0Brandom_flip_left_right/map/TensorArrayUnstack/range/delta:output:0*

Tidx0с
Urandom_flip_left_right/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3/random_flip_left_right/map/TensorArray:handle:0<random_flip_left_right/map/TensorArrayUnstack/range:output:02random_flip_left_right/control_dependency:output:0-random_flip_left_right/map/TensorArray:flow:0*
T0*
_class
	loc:@arg0J
 random_flip_left_right/map/ConstConst*
dtype0*
value	B : ї
(random_flip_left_right/map/TensorArray_1TensorArrayV31random_flip_left_right/map/strided_slice:output:0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0\
2random_flip_left_right/map/while/iteration_counterConst*
value	B : *
dtype0у
&random_flip_left_right/map/while/EnterEnter;random_flip_left_right/map/while/iteration_counter:output:0*
T0*
is_constant( *
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_context╙
(random_flip_left_right/map/while/Enter_1Enter)random_flip_left_right/map/Const:output:0*
T0*
is_constant( *
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_context┘
(random_flip_left_right/map/while/Enter_2Enter/random_flip_left_right/map/TensorArray_1:flow:0*
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_context*
T0*
is_constant( л
&random_flip_left_right/map/while/MergeMerge/random_flip_left_right/map/while/Enter:output:07random_flip_left_right/map/while/NextIteration:output:0*
T0*
N▒
(random_flip_left_right/map/while/Merge_1Merge1random_flip_left_right/map/while/Enter_1:output:09random_flip_left_right/map/while/NextIteration_1:output:0*
T0*
N▒
(random_flip_left_right/map/while/Merge_2Merge1random_flip_left_right/map/while/Enter_2:output:09random_flip_left_right/map/while/NextIteration_2:output:0*
T0*
NЭ
%random_flip_left_right/map/while/LessLess/random_flip_left_right/map/while/Merge:output:04random_flip_left_right/map/while/Less/Enter:output:0*
T0▐
+random_flip_left_right/map/while/Less/EnterEnter1random_flip_left_right/map/strided_slice:output:0*
T0*
is_constant(*
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_contextб
'random_flip_left_right/map/while/Less_1Less1random_flip_left_right/map/while/Merge_1:output:04random_flip_left_right/map/while/Less/Enter:output:0*
T0С
+random_flip_left_right/map/while/LogicalAnd
LogicalAnd)random_flip_left_right/map/while/Less:z:0+random_flip_left_right/map/while/Less_1:z:0f
)random_flip_left_right/map/while/LoopCondLoopCond/random_flip_left_right/map/while/LogicalAnd:z:0┌
'random_flip_left_right/map/while/SwitchSwitch/random_flip_left_right/map/while/Merge:output:02random_flip_left_right/map/while/LoopCond:output:0*
T0*9
_class/
-+loc:@random_flip_left_right/map/while/Mergeр
)random_flip_left_right/map/while/Switch_1Switch1random_flip_left_right/map/while/Merge_1:output:02random_flip_left_right/map/while/LoopCond:output:0*
T0*;
_class1
/-loc:@random_flip_left_right/map/while/Merge_1р
)random_flip_left_right/map/while/Switch_2Switch1random_flip_left_right/map/while/Merge_2:output:02random_flip_left_right/map/while/LoopCond:output:0*
T0*;
_class1
/-loc:@random_flip_left_right/map/while/Merge_2u
)random_flip_left_right/map/while/IdentityIdentity5random_flip_left_right/map/while/Switch:output_true:0*
T0y
+random_flip_left_right/map/while/Identity_1Identity7random_flip_left_right/map/while/Switch_1:output_true:0*
T0y
+random_flip_left_right/map/while/Identity_2Identity7random_flip_left_right/map/while/Switch_2:output_true:0*
T0|
&random_flip_left_right/map/while/add/yConst*^random_flip_left_right/map/while/Identity*
value	B :*
dtype0Щ
$random_flip_left_right/map/while/addAdd2random_flip_left_right/map/while/Identity:output:0/random_flip_left_right/map/while/add/y:output:0*
T0Т
2random_flip_left_right/map/while/TensorArrayReadV3TensorArrayReadV3Arandom_flip_left_right/map/while/TensorArrayReadV3/Enter:output:04random_flip_left_right/map/while/Identity_1:output:0Crandom_flip_left_right/map/while/TensorArrayReadV3/Enter_1:output:0*
dtype0щ
8random_flip_left_right/map/while/TensorArrayReadV3/EnterEnter/random_flip_left_right/map/TensorArray:handle:0*
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_context*
T0*
is_constant(Ь
:random_flip_left_right/map/while/TensorArrayReadV3/Enter_1Enter`random_flip_left_right/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:flow_out:0*
T0*
is_constant(*
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_contextЙ
/random_flip_left_right/map/while/ReverseV2/axisConst*^random_flip_left_right/map/while/Identity*
valueB:*
dtype0┬
*random_flip_left_right/map/while/ReverseV2	ReverseV2:random_flip_left_right/map/while/TensorArrayReadV3:value:08random_flip_left_right/map/while/ReverseV2/axis:output:0*
T0*

Tidx0Ш
Drandom_flip_left_right/map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Srandom_flip_left_right/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:output:04random_flip_left_right/map/while/Identity_1:output:03random_flip_left_right/map/while/ReverseV2:output:04random_flip_left_right/map/while/Identity_2:output:0*
T0*=
_class3
1/loc:@random_flip_left_right/map/while/ReverseV2╝
Jrandom_flip_left_right/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter1random_flip_left_right/map/TensorArray_1:handle:0*
T0*=
_class3
1/loc:@random_flip_left_right/map/while/ReverseV2*
is_constant(*
parallel_iterations
*>

frame_name0.random_flip_left_right/map/while/while_context~
(random_flip_left_right/map/while/add_1/yConst*^random_flip_left_right/map/while/Identity*
value	B :*
dtype0Я
&random_flip_left_right/map/while/add_1Add4random_flip_left_right/map/while/Identity_1:output:01random_flip_left_right/map/while/add_1/y:output:0*
T0r
.random_flip_left_right/map/while/NextIterationNextIteration(random_flip_left_right/map/while/add:z:0*
T0v
0random_flip_left_right/map/while/NextIteration_1NextIteration*random_flip_left_right/map/while/add_1:z:0*
T0Ы
0random_flip_left_right/map/while/NextIteration_2NextIterationOrandom_flip_left_right/map/while/TensorArrayWrite/TensorArrayWriteV3:flow_out:0*
T0n
%random_flip_left_right/map/while/ExitExit6random_flip_left_right/map/while/Switch:output_false:0*
T0r
'random_flip_left_right/map/while/Exit_1Exit8random_flip_left_right/map/while/Switch_1:output_false:0*
T0r
'random_flip_left_right/map/while/Exit_2Exit8random_flip_left_right/map/while/Switch_2:output_false:0*
T0Ї
=random_flip_left_right/map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV31random_flip_left_right/map/TensorArray_1:handle:00random_flip_left_right/map/while/Exit_2:output:0*;
_class1
/-loc:@random_flip_left_right/map/TensorArray_1Ю
7random_flip_left_right/map/TensorArrayStack/range/startConst*
dtype0*;
_class1
/-loc:@random_flip_left_right/map/TensorArray_1*
value	B : Ю
7random_flip_left_right/map/TensorArrayStack/range/deltaConst*;
_class1
/-loc:@random_flip_left_right/map/TensorArray_1*
value	B :*
dtype0═
1random_flip_left_right/map/TensorArrayStack/rangeRange@random_flip_left_right/map/TensorArrayStack/range/start:output:0Drandom_flip_left_right/map/TensorArrayStack/TensorArraySizeV3:size:0@random_flip_left_right/map/TensorArrayStack/range/delta:output:0*

Tidx0*;
_class1
/-loc:@random_flip_left_right/map/TensorArray_1Ї
?random_flip_left_right/map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV31random_flip_left_right/map/TensorArray_1:handle:0:random_flip_left_right/map/TensorArrayStack/range:output:00random_flip_left_right/map/while/Exit_2:output:0*;
_class1
/-loc:@random_flip_left_right/map/TensorArray_1*
dtype0*1
element_shape :                  ╬
random_flip_left_right/SelectSelectrandom_flip_left_right/Less:z:02random_flip_left_right/control_dependency:output:0Grandom_flip_left_right/map/TensorArrayStack/TensorArrayGatherV3:value:0*
T0"G
random_flip_left_right_select&random_flip_left_right/Select:output:0"
arg1arg1_0
─
Ъ
/tf_data_structured_function_wrapper_JI6URYcldEI
arg0
generatordataset2DWrapper for passing nested structures to and from tf.data functions.Иї
GeneratorDatasetGeneratorDatasetarg0*
output_shapes

::*D
finalize_func3R1
/tf_data_structured_function_wrapper_HhCq5QBrKIE*@
	init_func3R1
/tf_data_structured_function_wrapper_5YnSgF6i8fs*
output_types
2*
Tinit_func_args
2*@
	next_func3R1
/tf_data_structured_function_wrapper_taj1uqPpISk*
Tnext_func_args
 *
Tfinalize_func_args
 "-
generatordatasetGeneratorDataset:handle:0
№
Ъ
/tf_data_structured_function_wrapper_aoQHyWIdOYc
arg0
generatordataset2DWrapper for passing nested structures to and from tf.data functions.Ин
GeneratorDatasetGeneratorDatasetarg0*
Tnext_func_args
 *@
	next_func3R1
/tf_data_structured_function_wrapper_QuRPHQzwrSI*
Tfinalize_func_args
 *S
output_shapesB
@:+                           :         *D
finalize_func3R1
/tf_data_structured_function_wrapper_kg80UwQpOBc*@
	init_func3R1
/tf_data_structured_function_wrapper_Tta15XzToHE*
output_types
2*
Tinit_func_args
2"-
generatordatasetGeneratorDataset:handle:0
∙
Р
/tf_data_structured_function_wrapper_kg80UwQpOBc
arg0	

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.ИI
PyFuncPyFuncarg0*
Tin
2	*
Tout
2	*
token	pyfunc_80"
pyfuncPyFunc:output:0
е
Ю
/tf_data_structured_function_wrapper_QuRPHQzwrSI
arg0	

pyfunc
pyfunc_02DWrapper for passing nested structures to and from tf.data functions.ИJ
PyFuncPyFuncarg0*
Tin
2	*
Tout
2*
token	pyfunc_79"
pyfuncPyFunc:output:0"
pyfunc_0PyFunc:output:1
Ё
Р
/tf_data_structured_function_wrapper_5YnSgF6i8fs
arg0

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.И@
PyFuncPyFunc*	
Tin
 *
Tout
2	*
token	pyfunc_81"
pyfuncPyFunc:output:0
Ё
Р
/tf_data_structured_function_wrapper_Tta15XzToHE
arg0

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.И@
PyFuncPyFunc*	
Tin
 *
Tout
2	*
token	pyfunc_78"
pyfuncPyFunc:output:0
е
Ю
/tf_data_structured_function_wrapper_taj1uqPpISk
arg0	

pyfunc
pyfunc_02DWrapper for passing nested structures to and from tf.data functions.ИJ
PyFuncPyFuncarg0*
Tout
2*
token	pyfunc_82*
Tin
2	"
pyfunc_0PyFunc:output:1"
pyfuncPyFunc:output:0
∙
Р
/tf_data_structured_function_wrapper_HhCq5QBrKIE
arg0	

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.ИI
PyFuncPyFuncarg0*
Tin
2	*
Tout
2	*
token	pyfunc_83"
pyfuncPyFunc:output:0"B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"
train_op	

train"╬

update_ops┐
╝
#batch_normalization/AssignMovingAvg
%batch_normalization/AssignMovingAvg_1
%batch_normalization_1/AssignMovingAvg
'batch_normalization_1/AssignMovingAvg_1
%batch_normalization_2/AssignMovingAvg
'batch_normalization_2/AssignMovingAvg_1
%batch_normalization_3/AssignMovingAvg
'batch_normalization_3/AssignMovingAvg_1"░∙
cond_contextЮ∙Ъ∙
К
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *Ш
batch_normalization/beta/read:0
 batch_normalization/cond/Const:0
"batch_normalization/cond/Const_1:0
0batch_normalization/cond/FusedBatchNorm/Switch:1
2batch_normalization/cond/FusedBatchNorm/Switch_1:1
2batch_normalization/cond/FusedBatchNorm/Switch_2:1
)batch_normalization/cond/FusedBatchNorm:0
)batch_normalization/cond/FusedBatchNorm:1
)batch_normalization/cond/FusedBatchNorm:2
)batch_normalization/cond/FusedBatchNorm:3
)batch_normalization/cond/FusedBatchNorm:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
 batch_normalization/gamma/read:0
conv2d/LeakyRelu:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0V
 batch_normalization/gamma/read:02batch_normalization/cond/FusedBatchNorm/Switch_1:1U
batch_normalization/beta/read:02batch_normalization/cond/FusedBatchNorm/Switch_2:1F
conv2d/LeakyRelu:00batch_normalization/cond/FusedBatchNorm/Switch:1
▐

$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*ь	
batch_normalization/beta/read:0
2batch_normalization/cond/FusedBatchNorm_1/Switch:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_1:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_2:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_3:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_4:0
+batch_normalization/cond/FusedBatchNorm_1:0
+batch_normalization/cond/FusedBatchNorm_1:1
+batch_normalization/cond/FusedBatchNorm_1:2
+batch_normalization/cond/FusedBatchNorm_1:3
+batch_normalization/cond/FusedBatchNorm_1:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
 batch_normalization/gamma/read:0
&batch_normalization/moving_mean/read:0
*batch_normalization/moving_variance/read:0
conv2d/LeakyRelu:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0H
conv2d/LeakyRelu:02batch_normalization/cond/FusedBatchNorm_1/Switch:0^
&batch_normalization/moving_mean/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_3:0b
*batch_normalization/moving_variance/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_4:0X
 batch_normalization/gamma/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_1:0W
batch_normalization/beta/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_2:0
╖
$batch_normalization/cond_1/cond_text$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_t:0 *┐
"batch_normalization/cond_1/Const:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_t:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
╣
&batch_normalization/cond_1/cond_text_1$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_f:0*┴
$batch_normalization/cond_1/Const_1:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_f:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
√
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *н
 batch_normalization/cond/Merge:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:0G
 batch_normalization/cond/Merge:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
╨
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*В
 batch_normalization/cond/Merge:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0B
 batch_normalization/cond/Merge:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0
╛
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *╞
!batch_normalization_1/beta/read:0
"batch_normalization_1/cond/Const:0
$batch_normalization_1/cond/Const_1:0
2batch_normalization_1/cond/FusedBatchNorm/Switch:1
4batch_normalization_1/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_1/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_1/cond/FusedBatchNorm:0
+batch_normalization_1/cond/FusedBatchNorm:1
+batch_normalization_1/cond/FusedBatchNorm:2
+batch_normalization_1/cond/FusedBatchNorm:3
+batch_normalization_1/cond/FusedBatchNorm:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0
"batch_normalization_1/gamma/read:0
conv2d_1/LeakyRelu:0Z
"batch_normalization_1/gamma/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_1:1L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0Y
!batch_normalization_1/beta/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_2:1J
conv2d_1/LeakyRelu:02batch_normalization_1/cond/FusedBatchNorm/Switch:1
Ю
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*ж

!batch_normalization_1/beta/read:0
4batch_normalization_1/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_1/cond/FusedBatchNorm_1:0
-batch_normalization_1/cond/FusedBatchNorm_1:1
-batch_normalization_1/cond/FusedBatchNorm_1:2
-batch_normalization_1/cond/FusedBatchNorm_1:3
-batch_normalization_1/cond/FusedBatchNorm_1:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
conv2d_1/LeakyRelu:0\
"batch_normalization_1/gamma/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_1:0[
!batch_normalization_1/beta/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_2:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0L
conv2d_1/LeakyRelu:04batch_normalization_1/cond/FusedBatchNorm_1/Switch:0b
(batch_normalization_1/moving_mean/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_3:0f
,batch_normalization_1/moving_variance/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_4:0
╟
&batch_normalization_1/cond_1/cond_text&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_t:0 *╔
$batch_normalization_1/cond_1/Const:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_t:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
╔
(batch_normalization_1/cond_1/cond_text_1&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_f:0*╦
&batch_normalization_1/cond_1/Const_1:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_f:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
й
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *╒
"batch_normalization_1/cond/Merge:0
dropout_1/cond/dropout/Floor:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/div:0
"dropout_1/cond/dropout/keep_prob:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0K
"batch_normalization_1/cond/Merge:0%dropout_1/cond/dropout/Shape/Switch:1
ш
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*Ф
"batch_normalization_1/cond/Merge:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0F
"batch_normalization_1/cond/Merge:0 dropout_1/cond/Identity/Switch:0
╛
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *╞
!batch_normalization_2/beta/read:0
"batch_normalization_2/cond/Const:0
$batch_normalization_2/cond/Const_1:0
2batch_normalization_2/cond/FusedBatchNorm/Switch:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_2/cond/FusedBatchNorm:0
+batch_normalization_2/cond/FusedBatchNorm:1
+batch_normalization_2/cond/FusedBatchNorm:2
+batch_normalization_2/cond/FusedBatchNorm:3
+batch_normalization_2/cond/FusedBatchNorm:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0
"batch_normalization_2/gamma/read:0
conv2d_2/LeakyRelu:0Y
!batch_normalization_2/beta/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_2:1L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0J
conv2d_2/LeakyRelu:02batch_normalization_2/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_2/gamma/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_1:1
Ю
&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*ж

!batch_normalization_2/beta/read:0
4batch_normalization_2/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_2/cond/FusedBatchNorm_1:0
-batch_normalization_2/cond/FusedBatchNorm_1:1
-batch_normalization_2/cond/FusedBatchNorm_1:2
-batch_normalization_2/cond/FusedBatchNorm_1:3
-batch_normalization_2/cond/FusedBatchNorm_1:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
"batch_normalization_2/gamma/read:0
(batch_normalization_2/moving_mean/read:0
,batch_normalization_2/moving_variance/read:0
conv2d_2/LeakyRelu:0f
,batch_normalization_2/moving_variance/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0b
(batch_normalization_2/moving_mean/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0L
conv2d_2/LeakyRelu:04batch_normalization_2/cond/FusedBatchNorm_1/Switch:0[
!batch_normalization_2/beta/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0\
"batch_normalization_2/gamma/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0
╟
&batch_normalization_2/cond_1/cond_text&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_t:0 *╔
$batch_normalization_2/cond_1/Const:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_t:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
╔
(batch_normalization_2/cond_1/cond_text_1&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_f:0*╦
&batch_normalization_2/cond_1/Const_1:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_f:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
й
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *╒
"batch_normalization_2/cond/Merge:0
dropout_2/cond/dropout/Floor:0
%dropout_2/cond/dropout/Shape/Switch:1
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/add:0
dropout_2/cond/dropout/div:0
"dropout_2/cond/dropout/keep_prob:0
dropout_2/cond/dropout/mul:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:0K
"batch_normalization_2/cond/Merge:0%dropout_2/cond/dropout/Shape/Switch:14
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
ш
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*Ф
"batch_normalization_2/cond/Merge:0
 dropout_2/cond/Identity/Switch:0
dropout_2/cond/Identity:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0F
"batch_normalization_2/cond/Merge:0 dropout_2/cond/Identity/Switch:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
╛
$batch_normalization_3/cond/cond_text$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_t:0 *╞
!batch_normalization_3/beta/read:0
"batch_normalization_3/cond/Const:0
$batch_normalization_3/cond/Const_1:0
2batch_normalization_3/cond/FusedBatchNorm/Switch:1
4batch_normalization_3/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_3/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_3/cond/FusedBatchNorm:0
+batch_normalization_3/cond/FusedBatchNorm:1
+batch_normalization_3/cond/FusedBatchNorm:2
+batch_normalization_3/cond/FusedBatchNorm:3
+batch_normalization_3/cond/FusedBatchNorm:4
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_t:0
"batch_normalization_3/gamma/read:0
conv2d_3/LeakyRelu:0J
conv2d_3/LeakyRelu:02batch_normalization_3/cond/FusedBatchNorm/Switch:1L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0Z
"batch_normalization_3/gamma/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_1:1Y
!batch_normalization_3/beta/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_2:1
Ю
&batch_normalization_3/cond/cond_text_1$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_f:0*ж

!batch_normalization_3/beta/read:0
4batch_normalization_3/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_3/cond/FusedBatchNorm_1:0
-batch_normalization_3/cond/FusedBatchNorm_1:1
-batch_normalization_3/cond/FusedBatchNorm_1:2
-batch_normalization_3/cond/FusedBatchNorm_1:3
-batch_normalization_3/cond/FusedBatchNorm_1:4
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_f:0
"batch_normalization_3/gamma/read:0
(batch_normalization_3/moving_mean/read:0
,batch_normalization_3/moving_variance/read:0
conv2d_3/LeakyRelu:0f
,batch_normalization_3/moving_variance/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_4:0b
(batch_normalization_3/moving_mean/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_3:0\
"batch_normalization_3/gamma/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_1:0L
conv2d_3/LeakyRelu:04batch_normalization_3/cond/FusedBatchNorm_1/Switch:0L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0[
!batch_normalization_3/beta/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_2:0
╟
&batch_normalization_3/cond_1/cond_text&batch_normalization_3/cond_1/pred_id:0'batch_normalization_3/cond_1/switch_t:0 *╔
$batch_normalization_3/cond_1/Const:0
&batch_normalization_3/cond_1/pred_id:0
'batch_normalization_3/cond_1/switch_t:0P
&batch_normalization_3/cond_1/pred_id:0&batch_normalization_3/cond_1/pred_id:0
╔
(batch_normalization_3/cond_1/cond_text_1&batch_normalization_3/cond_1/pred_id:0'batch_normalization_3/cond_1/switch_f:0*╦
&batch_normalization_3/cond_1/Const_1:0
&batch_normalization_3/cond_1/pred_id:0
'batch_normalization_3/cond_1/switch_f:0P
&batch_normalization_3/cond_1/pred_id:0&batch_normalization_3/cond_1/pred_id:0
й
dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *╒
"batch_normalization_3/cond/Merge:0
dropout_3/cond/dropout/Floor:0
%dropout_3/cond/dropout/Shape/Switch:1
dropout_3/cond/dropout/Shape:0
dropout_3/cond/dropout/add:0
dropout_3/cond/dropout/div:0
"dropout_3/cond/dropout/keep_prob:0
dropout_3/cond/dropout/mul:0
5dropout_3/cond/dropout/random_uniform/RandomUniform:0
+dropout_3/cond/dropout/random_uniform/max:0
+dropout_3/cond/dropout/random_uniform/min:0
+dropout_3/cond/dropout/random_uniform/mul:0
+dropout_3/cond/dropout/random_uniform/sub:0
'dropout_3/cond/dropout/random_uniform:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_t:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0K
"batch_normalization_3/cond/Merge:0%dropout_3/cond/dropout/Shape/Switch:1
ш
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*Ф
"batch_normalization_3/cond/Merge:0
 dropout_3/cond/Identity/Switch:0
dropout_3/cond/Identity:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0F
"batch_normalization_3/cond/Merge:0 dropout_3/cond/Identity/Switch:0
Н
dropout_4/cond/cond_textdropout_4/cond/pred_id:0dropout_4/cond/switch_t:0 *╣
conv2d_4/LeakyRelu:0
dropout_4/cond/dropout/Floor:0
%dropout_4/cond/dropout/Shape/Switch:1
dropout_4/cond/dropout/Shape:0
dropout_4/cond/dropout/add:0
dropout_4/cond/dropout/div:0
"dropout_4/cond/dropout/keep_prob:0
dropout_4/cond/dropout/mul:0
5dropout_4/cond/dropout/random_uniform/RandomUniform:0
+dropout_4/cond/dropout/random_uniform/max:0
+dropout_4/cond/dropout/random_uniform/min:0
+dropout_4/cond/dropout/random_uniform/mul:0
+dropout_4/cond/dropout/random_uniform/sub:0
'dropout_4/cond/dropout/random_uniform:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_t:0=
conv2d_4/LeakyRelu:0%dropout_4/cond/dropout/Shape/Switch:14
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0
╠
dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*°
conv2d_4/LeakyRelu:0
 dropout_4/cond/Identity/Switch:0
dropout_4/cond/Identity:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:08
conv2d_4/LeakyRelu:0 dropout_4/cond/Identity/Switch:0
Н
@mean_squared_error/assert_broadcastable/is_valid_shape/cond_text@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0Amean_squared_error/assert_broadcastable/is_valid_shape/switch_t:0 *┴
3mean_squared_error/assert_broadcastable/is_scalar:0
Amean_squared_error/assert_broadcastable/is_valid_shape/Switch_1:0
Amean_squared_error/assert_broadcastable/is_valid_shape/Switch_1:1
@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0
Amean_squared_error/assert_broadcastable/is_valid_shape/switch_t:0x
3mean_squared_error/assert_broadcastable/is_scalar:0Amean_squared_error/assert_broadcastable/is_valid_shape/Switch_1:1Д
@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0
щI
Bmean_squared_error/assert_broadcastable/is_valid_shape/cond_text_1@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0Amean_squared_error/assert_broadcastable/is_valid_shape/switch_f:0*╡!
Xmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
Xmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
Ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
Ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
rmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
nmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
tmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
pmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
omean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
jmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
tmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
smean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
smean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
mmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
emean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
cmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
fmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
hmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
_mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0
Amean_squared_error/assert_broadcastable/is_valid_shape/switch_f:0
5mean_squared_error/assert_broadcastable/values/rank:0
6mean_squared_error/assert_broadcastable/values/shape:0
6mean_squared_error/assert_broadcastable/weights/rank:0
7mean_squared_error/assert_broadcastable/weights/shape:0в
6mean_squared_error/assert_broadcastable/weights/rank:0hmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Д
@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0@mean_squared_error/assert_broadcastable/is_valid_shape/pred_id:0Я
5mean_squared_error/assert_broadcastable/values/rank:0fmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0▓
7mean_squared_error/assert_broadcastable/weights/shape:0wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0п
6mean_squared_error/assert_broadcastable/values/shape:0umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02ї
Є
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textZmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *╪
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
|mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
rmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
nmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
tmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
pmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
omean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
jmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
tmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
smean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
smean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
mmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
emean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
cmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
6mean_squared_error/assert_broadcastable/values/shape:0
7mean_squared_error/assert_broadcastable/weights/shape:0┤
7mean_squared_error/assert_broadcastable/weights/shape:0ymean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Є
wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0▒
6mean_squared_error/assert_broadcastable/values/shape:0wmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1ю
umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0umean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0╕
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02э
ъ
\mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*╨
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
_mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0╛
_mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0[mean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0╕
Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Zmean_squared_error/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
М
=mean_squared_error/assert_broadcastable/AssertGuard/cond_text=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0>mean_squared_error/assert_broadcastable/AssertGuard/switch_t:0 *╔
Hmean_squared_error/assert_broadcastable/AssertGuard/control_dependency:0
=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0
>mean_squared_error/assert_broadcastable/AssertGuard/switch_t:0~
=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0
╢
?mean_squared_error/assert_broadcastable/AssertGuard/cond_text_1=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0>mean_squared_error/assert_broadcastable/AssertGuard/switch_f:0*є
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch:0
Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_0:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_1:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_2:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_4:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_5:0
Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/data_7:0
Jmean_squared_error/assert_broadcastable/AssertGuard/control_dependency_1:0
=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0
>mean_squared_error/assert_broadcastable/AssertGuard/switch_f:0
3mean_squared_error/assert_broadcastable/is_scalar:0
>mean_squared_error/assert_broadcastable/is_valid_shape/Merge:0
6mean_squared_error/assert_broadcastable/values/shape:0
7mean_squared_error/assert_broadcastable/weights/shape:0Е
>mean_squared_error/assert_broadcastable/is_valid_shape/Merge:0Cmean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch:0А
7mean_squared_error/assert_broadcastable/weights/shape:0Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_1:0~
=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0=mean_squared_error/assert_broadcastable/AssertGuard/pred_id:0
6mean_squared_error/assert_broadcastable/values/shape:0Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_2:0|
3mean_squared_error/assert_broadcastable/is_scalar:0Emean_squared_error/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Ў
^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *╨
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0└
^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0┤
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar:0_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
┘`
`mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Т,
vmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
vmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
wmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Рmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Мmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Тmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Оmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Нmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Иmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Тmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Сmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Сmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Лmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Гmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Бmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Дmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
Жmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
}mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
_mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rank:0
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rank:0
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0└
^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ь
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0▀
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rank:0Жmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0▄
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rank:0Дmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0я
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02╞&
├&
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textxmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *╧#
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Ъmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Рmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Мmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Чmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Тmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Оmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Нmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Иmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Тmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Сmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Сmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Лmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Гmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Бmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0ё
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Чmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ї
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0░
Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0м
Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Уmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ю
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0Хmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12╒
╥
zmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*▐
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
}mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ї
xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0·
}mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ymean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
¤
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_text[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *р
fmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0║
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
╜
]mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*а
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
hmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0╝
Umean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shape:0cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0║
[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0[mean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0╕
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_scalar:0cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0╗
Tmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shape:0cmean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0┴
\mean_squared_error/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0amean_squared_error/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"E
	iterators8
6
IteratorFromStringHandle:0

Iterator:0
Iterator_1:0"и
regularization_lossesО
Л
-conv2d/kernel/Regularizer/l1_l2_regularizer:0
+conv2d/bias/Regularizer/l1_l2_regularizer:0
/conv2d_1/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_1/bias/Regularizer/l1_l2_regularizer:0
/conv2d_2/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_2/bias/Regularizer/l1_l2_regularizer:0
/conv2d_3/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_3/bias/Regularizer/l1_l2_regularizer:0
/conv2d_4/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_4/bias/Regularizer/l1_l2_regularizer:0
-conv2d_5/bias/Regularizer/l1_l2_regularizer:0"х
trainable_variables═╩
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
С
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
О
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
Щ
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
Ц
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
Щ
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
Ц
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
Щ
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:08
Ц
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:08
s
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:08
b
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:08
s
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:08
b
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:08"ЁM
	variablesтM▀M
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
С
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
О
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
и
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
╖
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
Щ
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
Ц
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
░
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
┐
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
Щ
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
Ц
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
░
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
┐
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
Щ
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:08
Ц
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:08
░
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:025batch_normalization_3/moving_mean/Initializer/zeros:0
┐
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:028batch_normalization_3/moving_variance/Initializer/ones:0
s
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:08
b
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:08
s
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:08
b
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
conv2d/kernel/Adam:0conv2d/kernel/Adam/Assignconv2d/kernel/Adam/read:02&conv2d/kernel/Adam/Initializer/zeros:0
|
conv2d/kernel/Adam_1:0conv2d/kernel/Adam_1/Assignconv2d/kernel/Adam_1/read:02(conv2d/kernel/Adam_1/Initializer/zeros:0
l
conv2d/bias/Adam:0conv2d/bias/Adam/Assignconv2d/bias/Adam/read:02$conv2d/bias/Adam/Initializer/zeros:0
t
conv2d/bias/Adam_1:0conv2d/bias/Adam_1/Assignconv2d/bias/Adam_1/read:02&conv2d/bias/Adam_1/Initializer/zeros:0
д
 batch_normalization/gamma/Adam:0%batch_normalization/gamma/Adam/Assign%batch_normalization/gamma/Adam/read:022batch_normalization/gamma/Adam/Initializer/zeros:0
м
"batch_normalization/gamma/Adam_1:0'batch_normalization/gamma/Adam_1/Assign'batch_normalization/gamma/Adam_1/read:024batch_normalization/gamma/Adam_1/Initializer/zeros:0
а
batch_normalization/beta/Adam:0$batch_normalization/beta/Adam/Assign$batch_normalization/beta/Adam/read:021batch_normalization/beta/Adam/Initializer/zeros:0
и
!batch_normalization/beta/Adam_1:0&batch_normalization/beta/Adam_1/Assign&batch_normalization/beta/Adam_1/read:023batch_normalization/beta/Adam_1/Initializer/zeros:0
|
conv2d_1/kernel/Adam:0conv2d_1/kernel/Adam/Assignconv2d_1/kernel/Adam/read:02(conv2d_1/kernel/Adam/Initializer/zeros:0
Д
conv2d_1/kernel/Adam_1:0conv2d_1/kernel/Adam_1/Assignconv2d_1/kernel/Adam_1/read:02*conv2d_1/kernel/Adam_1/Initializer/zeros:0
t
conv2d_1/bias/Adam:0conv2d_1/bias/Adam/Assignconv2d_1/bias/Adam/read:02&conv2d_1/bias/Adam/Initializer/zeros:0
|
conv2d_1/bias/Adam_1:0conv2d_1/bias/Adam_1/Assignconv2d_1/bias/Adam_1/read:02(conv2d_1/bias/Adam_1/Initializer/zeros:0
м
"batch_normalization_1/gamma/Adam:0'batch_normalization_1/gamma/Adam/Assign'batch_normalization_1/gamma/Adam/read:024batch_normalization_1/gamma/Adam/Initializer/zeros:0
┤
$batch_normalization_1/gamma/Adam_1:0)batch_normalization_1/gamma/Adam_1/Assign)batch_normalization_1/gamma/Adam_1/read:026batch_normalization_1/gamma/Adam_1/Initializer/zeros:0
и
!batch_normalization_1/beta/Adam:0&batch_normalization_1/beta/Adam/Assign&batch_normalization_1/beta/Adam/read:023batch_normalization_1/beta/Adam/Initializer/zeros:0
░
#batch_normalization_1/beta/Adam_1:0(batch_normalization_1/beta/Adam_1/Assign(batch_normalization_1/beta/Adam_1/read:025batch_normalization_1/beta/Adam_1/Initializer/zeros:0
|
conv2d_2/kernel/Adam:0conv2d_2/kernel/Adam/Assignconv2d_2/kernel/Adam/read:02(conv2d_2/kernel/Adam/Initializer/zeros:0
Д
conv2d_2/kernel/Adam_1:0conv2d_2/kernel/Adam_1/Assignconv2d_2/kernel/Adam_1/read:02*conv2d_2/kernel/Adam_1/Initializer/zeros:0
t
conv2d_2/bias/Adam:0conv2d_2/bias/Adam/Assignconv2d_2/bias/Adam/read:02&conv2d_2/bias/Adam/Initializer/zeros:0
|
conv2d_2/bias/Adam_1:0conv2d_2/bias/Adam_1/Assignconv2d_2/bias/Adam_1/read:02(conv2d_2/bias/Adam_1/Initializer/zeros:0
м
"batch_normalization_2/gamma/Adam:0'batch_normalization_2/gamma/Adam/Assign'batch_normalization_2/gamma/Adam/read:024batch_normalization_2/gamma/Adam/Initializer/zeros:0
┤
$batch_normalization_2/gamma/Adam_1:0)batch_normalization_2/gamma/Adam_1/Assign)batch_normalization_2/gamma/Adam_1/read:026batch_normalization_2/gamma/Adam_1/Initializer/zeros:0
и
!batch_normalization_2/beta/Adam:0&batch_normalization_2/beta/Adam/Assign&batch_normalization_2/beta/Adam/read:023batch_normalization_2/beta/Adam/Initializer/zeros:0
░
#batch_normalization_2/beta/Adam_1:0(batch_normalization_2/beta/Adam_1/Assign(batch_normalization_2/beta/Adam_1/read:025batch_normalization_2/beta/Adam_1/Initializer/zeros:0
|
conv2d_3/kernel/Adam:0conv2d_3/kernel/Adam/Assignconv2d_3/kernel/Adam/read:02(conv2d_3/kernel/Adam/Initializer/zeros:0
Д
conv2d_3/kernel/Adam_1:0conv2d_3/kernel/Adam_1/Assignconv2d_3/kernel/Adam_1/read:02*conv2d_3/kernel/Adam_1/Initializer/zeros:0
t
conv2d_3/bias/Adam:0conv2d_3/bias/Adam/Assignconv2d_3/bias/Adam/read:02&conv2d_3/bias/Adam/Initializer/zeros:0
|
conv2d_3/bias/Adam_1:0conv2d_3/bias/Adam_1/Assignconv2d_3/bias/Adam_1/read:02(conv2d_3/bias/Adam_1/Initializer/zeros:0
м
"batch_normalization_3/gamma/Adam:0'batch_normalization_3/gamma/Adam/Assign'batch_normalization_3/gamma/Adam/read:024batch_normalization_3/gamma/Adam/Initializer/zeros:0
┤
$batch_normalization_3/gamma/Adam_1:0)batch_normalization_3/gamma/Adam_1/Assign)batch_normalization_3/gamma/Adam_1/read:026batch_normalization_3/gamma/Adam_1/Initializer/zeros:0
и
!batch_normalization_3/beta/Adam:0&batch_normalization_3/beta/Adam/Assign&batch_normalization_3/beta/Adam/read:023batch_normalization_3/beta/Adam/Initializer/zeros:0
░
#batch_normalization_3/beta/Adam_1:0(batch_normalization_3/beta/Adam_1/Assign(batch_normalization_3/beta/Adam_1/read:025batch_normalization_3/beta/Adam_1/Initializer/zeros:0
|
conv2d_4/kernel/Adam:0conv2d_4/kernel/Adam/Assignconv2d_4/kernel/Adam/read:02(conv2d_4/kernel/Adam/Initializer/zeros:0
Д
conv2d_4/kernel/Adam_1:0conv2d_4/kernel/Adam_1/Assignconv2d_4/kernel/Adam_1/read:02*conv2d_4/kernel/Adam_1/Initializer/zeros:0
t
conv2d_4/bias/Adam:0conv2d_4/bias/Adam/Assignconv2d_4/bias/Adam/read:02&conv2d_4/bias/Adam/Initializer/zeros:0
|
conv2d_4/bias/Adam_1:0conv2d_4/bias/Adam_1/Assignconv2d_4/bias/Adam_1/read:02(conv2d_4/bias/Adam_1/Initializer/zeros:0
|
conv2d_5/kernel/Adam:0conv2d_5/kernel/Adam/Assignconv2d_5/kernel/Adam/read:02(conv2d_5/kernel/Adam/Initializer/zeros:0
Д
conv2d_5/kernel/Adam_1:0conv2d_5/kernel/Adam_1/Assignconv2d_5/kernel/Adam_1/read:02*conv2d_5/kernel/Adam_1/Initializer/zeros:0
t
conv2d_5/bias/Adam:0conv2d_5/bias/Adam/Assignconv2d_5/bias/Adam/read:02&conv2d_5/bias/Adam/Initializer/zeros:0
|
conv2d_5/bias/Adam_1:0conv2d_5/bias/Adam_1/Assignconv2d_5/bias/Adam_1/read:02(conv2d_5/bias/Adam_1/Initializer/zeros:0"(
losses

mean_squared_error/value:0*▄
serving_default╚
&
apply_dropout
apply_dropout:0
 
A
image8
image:0+                           ?
prob7
prob:0+                           tensorflow/serving/predict