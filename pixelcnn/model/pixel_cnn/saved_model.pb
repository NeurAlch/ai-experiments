��:
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��3
�
masked_conv2d/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namemasked_conv2d/w
|
#masked_conv2d/w/Read/ReadVariableOpReadVariableOpmasked_conv2d/w*'
_output_shapes
:�*
dtype0
w
masked_conv2d/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namemasked_conv2d/b
p
#masked_conv2d/b/Read/ReadVariableOpReadVariableOpmasked_conv2d/b*
_output_shapes	
:�*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:�@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
�
masked_conv2d_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*"
shared_namemasked_conv2d_1/w
�
%masked_conv2d_1/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_1/w*'
_output_shapes
:�@*
dtype0
z
masked_conv2d_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_1/b
s
%masked_conv2d_1/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_1/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_2/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_namemasked_conv2d_2/w

%masked_conv2d_2/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_2/w*&
_output_shapes
:@@*
dtype0
z
masked_conv2d_2/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_2/b
s
%masked_conv2d_2/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_2/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_3/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*"
shared_namemasked_conv2d_3/w
�
%masked_conv2d_3/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_3/w*'
_output_shapes
:@�*
dtype0
{
masked_conv2d_3/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namemasked_conv2d_3/b
t
%masked_conv2d_3/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_3/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_4/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*"
shared_namemasked_conv2d_4/w
�
%masked_conv2d_4/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_4/w*'
_output_shapes
:�@*
dtype0
z
masked_conv2d_4/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_4/b
s
%masked_conv2d_4/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_4/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_5/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_namemasked_conv2d_5/w

%masked_conv2d_5/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_5/w*&
_output_shapes
:@@*
dtype0
z
masked_conv2d_5/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_5/b
s
%masked_conv2d_5/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_5/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_6/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*"
shared_namemasked_conv2d_6/w
�
%masked_conv2d_6/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_6/w*'
_output_shapes
:@�*
dtype0
{
masked_conv2d_6/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namemasked_conv2d_6/b
t
%masked_conv2d_6/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_6/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_7/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*"
shared_namemasked_conv2d_7/w
�
%masked_conv2d_7/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_7/w*'
_output_shapes
:�@*
dtype0
z
masked_conv2d_7/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_7/b
s
%masked_conv2d_7/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_7/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_8/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_namemasked_conv2d_8/w

%masked_conv2d_8/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_8/w*&
_output_shapes
:@@*
dtype0
z
masked_conv2d_8/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemasked_conv2d_8/b
s
%masked_conv2d_8/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_8/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_9/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*"
shared_namemasked_conv2d_9/w
�
%masked_conv2d_9/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_9/w*'
_output_shapes
:@�*
dtype0
{
masked_conv2d_9/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namemasked_conv2d_9/b
t
%masked_conv2d_9/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_9/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_10/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*#
shared_namemasked_conv2d_10/w
�
&masked_conv2d_10/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_10/w*'
_output_shapes
:�@*
dtype0
|
masked_conv2d_10/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_10/b
u
&masked_conv2d_10/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_10/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_11/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_namemasked_conv2d_11/w
�
&masked_conv2d_11/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_11/w*&
_output_shapes
:@@*
dtype0
|
masked_conv2d_11/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_11/b
u
&masked_conv2d_11/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_11/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_12/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*#
shared_namemasked_conv2d_12/w
�
&masked_conv2d_12/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_12/w*'
_output_shapes
:@�*
dtype0
}
masked_conv2d_12/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namemasked_conv2d_12/b
v
&masked_conv2d_12/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_12/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_13/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*#
shared_namemasked_conv2d_13/w
�
&masked_conv2d_13/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_13/w*'
_output_shapes
:�@*
dtype0
|
masked_conv2d_13/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_13/b
u
&masked_conv2d_13/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_13/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_14/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_namemasked_conv2d_14/w
�
&masked_conv2d_14/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_14/w*&
_output_shapes
:@@*
dtype0
|
masked_conv2d_14/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_14/b
u
&masked_conv2d_14/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_14/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_15/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*#
shared_namemasked_conv2d_15/w
�
&masked_conv2d_15/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_15/w*'
_output_shapes
:@�*
dtype0
}
masked_conv2d_15/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namemasked_conv2d_15/b
v
&masked_conv2d_15/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_15/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_16/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*#
shared_namemasked_conv2d_16/w
�
&masked_conv2d_16/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_16/w*'
_output_shapes
:�@*
dtype0
|
masked_conv2d_16/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_16/b
u
&masked_conv2d_16/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_16/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_17/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_namemasked_conv2d_17/w
�
&masked_conv2d_17/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_17/w*&
_output_shapes
:@@*
dtype0
|
masked_conv2d_17/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_17/b
u
&masked_conv2d_17/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_17/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_18/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*#
shared_namemasked_conv2d_18/w
�
&masked_conv2d_18/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_18/w*'
_output_shapes
:@�*
dtype0
}
masked_conv2d_18/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namemasked_conv2d_18/b
v
&masked_conv2d_18/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_18/b*
_output_shapes	
:�*
dtype0
�
masked_conv2d_19/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*#
shared_namemasked_conv2d_19/w
�
&masked_conv2d_19/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_19/w*'
_output_shapes
:�@*
dtype0
|
masked_conv2d_19/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_19/b
u
&masked_conv2d_19/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_19/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_20/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*#
shared_namemasked_conv2d_20/w
�
&masked_conv2d_20/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_20/w*&
_output_shapes
:@@*
dtype0
|
masked_conv2d_20/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namemasked_conv2d_20/b
u
&masked_conv2d_20/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_20/b*
_output_shapes
:@*
dtype0
�
masked_conv2d_21/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*#
shared_namemasked_conv2d_21/w
�
&masked_conv2d_21/w/Read/ReadVariableOpReadVariableOpmasked_conv2d_21/w*'
_output_shapes
:@�*
dtype0
}
masked_conv2d_21/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namemasked_conv2d_21/b
v
&masked_conv2d_21/b/Read/ReadVariableOpReadVariableOpmasked_conv2d_21/b*
_output_shapes	
:�*
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
�
RMSprop/masked_conv2d/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameRMSprop/masked_conv2d/w/rms
�
/RMSprop/masked_conv2d/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d/w/rms*'
_output_shapes
:�*
dtype0
�
RMSprop/masked_conv2d/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameRMSprop/masked_conv2d/b/rms
�
/RMSprop/masked_conv2d/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/conv2d/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@**
shared_nameRMSprop/conv2d/kernel/rms
�
-RMSprop/conv2d/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/kernel/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/conv2d/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameRMSprop/conv2d/bias/rms

+RMSprop/conv2d/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/bias/rms*
_output_shapes
:@*
dtype0
�
RMSprop/conv2d_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameRMSprop/conv2d_1/kernel/rms
�
/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_1/kernel/rms*&
_output_shapes
:@*
dtype0
�
RMSprop/conv2d_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/conv2d_1/bias/rms
�
-RMSprop/conv2d_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_1/bias/rms*
_output_shapes
:*
dtype0
�
RMSprop/masked_conv2d_1/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*.
shared_nameRMSprop/masked_conv2d_1/w/rms
�
1RMSprop/masked_conv2d_1/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_1/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_1/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_1/b/rms
�
1RMSprop/masked_conv2d_1/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_1/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_2/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/masked_conv2d_2/w/rms
�
1RMSprop/masked_conv2d_2/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_2/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_2/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_2/b/rms
�
1RMSprop/masked_conv2d_2/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_2/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_3/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*.
shared_nameRMSprop/masked_conv2d_3/w/rms
�
1RMSprop/masked_conv2d_3/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_3/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_3/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameRMSprop/masked_conv2d_3/b/rms
�
1RMSprop/masked_conv2d_3/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_3/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_4/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*.
shared_nameRMSprop/masked_conv2d_4/w/rms
�
1RMSprop/masked_conv2d_4/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_4/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_4/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_4/b/rms
�
1RMSprop/masked_conv2d_4/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_4/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_5/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/masked_conv2d_5/w/rms
�
1RMSprop/masked_conv2d_5/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_5/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_5/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_5/b/rms
�
1RMSprop/masked_conv2d_5/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_5/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_6/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*.
shared_nameRMSprop/masked_conv2d_6/w/rms
�
1RMSprop/masked_conv2d_6/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_6/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_6/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameRMSprop/masked_conv2d_6/b/rms
�
1RMSprop/masked_conv2d_6/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_6/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_7/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*.
shared_nameRMSprop/masked_conv2d_7/w/rms
�
1RMSprop/masked_conv2d_7/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_7/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_7/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_7/b/rms
�
1RMSprop/masked_conv2d_7/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_7/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_8/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/masked_conv2d_8/w/rms
�
1RMSprop/masked_conv2d_8/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_8/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_8/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/masked_conv2d_8/b/rms
�
1RMSprop/masked_conv2d_8/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_8/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_9/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*.
shared_nameRMSprop/masked_conv2d_9/w/rms
�
1RMSprop/masked_conv2d_9/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_9/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_9/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameRMSprop/masked_conv2d_9/b/rms
�
1RMSprop/masked_conv2d_9/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_9/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_10/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*/
shared_name RMSprop/masked_conv2d_10/w/rms
�
2RMSprop/masked_conv2d_10/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_10/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_10/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_10/b/rms
�
2RMSprop/masked_conv2d_10/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_10/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_11/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name RMSprop/masked_conv2d_11/w/rms
�
2RMSprop/masked_conv2d_11/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_11/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_11/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_11/b/rms
�
2RMSprop/masked_conv2d_11/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_11/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_12/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*/
shared_name RMSprop/masked_conv2d_12/w/rms
�
2RMSprop/masked_conv2d_12/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_12/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_12/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name RMSprop/masked_conv2d_12/b/rms
�
2RMSprop/masked_conv2d_12/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_12/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_13/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*/
shared_name RMSprop/masked_conv2d_13/w/rms
�
2RMSprop/masked_conv2d_13/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_13/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_13/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_13/b/rms
�
2RMSprop/masked_conv2d_13/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_13/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_14/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name RMSprop/masked_conv2d_14/w/rms
�
2RMSprop/masked_conv2d_14/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_14/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_14/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_14/b/rms
�
2RMSprop/masked_conv2d_14/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_14/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_15/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*/
shared_name RMSprop/masked_conv2d_15/w/rms
�
2RMSprop/masked_conv2d_15/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_15/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_15/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name RMSprop/masked_conv2d_15/b/rms
�
2RMSprop/masked_conv2d_15/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_15/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_16/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*/
shared_name RMSprop/masked_conv2d_16/w/rms
�
2RMSprop/masked_conv2d_16/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_16/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_16/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_16/b/rms
�
2RMSprop/masked_conv2d_16/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_16/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_17/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name RMSprop/masked_conv2d_17/w/rms
�
2RMSprop/masked_conv2d_17/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_17/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_17/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_17/b/rms
�
2RMSprop/masked_conv2d_17/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_17/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_18/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*/
shared_name RMSprop/masked_conv2d_18/w/rms
�
2RMSprop/masked_conv2d_18/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_18/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_18/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name RMSprop/masked_conv2d_18/b/rms
�
2RMSprop/masked_conv2d_18/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_18/b/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/masked_conv2d_19/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*/
shared_name RMSprop/masked_conv2d_19/w/rms
�
2RMSprop/masked_conv2d_19/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_19/w/rms*'
_output_shapes
:�@*
dtype0
�
RMSprop/masked_conv2d_19/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_19/b/rms
�
2RMSprop/masked_conv2d_19/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_19/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_20/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name RMSprop/masked_conv2d_20/w/rms
�
2RMSprop/masked_conv2d_20/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_20/w/rms*&
_output_shapes
:@@*
dtype0
�
RMSprop/masked_conv2d_20/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/masked_conv2d_20/b/rms
�
2RMSprop/masked_conv2d_20/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_20/b/rms*
_output_shapes
:@*
dtype0
�
RMSprop/masked_conv2d_21/w/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*/
shared_name RMSprop/masked_conv2d_21/w/rms
�
2RMSprop/masked_conv2d_21/w/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_21/w/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/masked_conv2d_21/b/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name RMSprop/masked_conv2d_21/b/rms
�
2RMSprop/masked_conv2d_21/b/rms/Read/ReadVariableOpReadVariableOpRMSprop/masked_conv2d_21/b/rms*
_output_shapes	
:�*
dtype0
�
ConstConst*&
_output_shapes
:*
dtype0*�
value�B�"�  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?                                                                                                    
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_2Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
l
Const_3Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
l
Const_4Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_5Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
l
Const_6Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
l
Const_7Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_8Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
l
Const_9Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
m
Const_10Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_11Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
m
Const_12Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
m
Const_13Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_14Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
m
Const_15Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
m
Const_16Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_17Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
m
Const_18Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
m
Const_19Const*&
_output_shapes
:*
dtype0*%
valueB*  �?
�
Const_20Const*&
_output_shapes
:*
dtype0*E
value<B:"$  �?  �?  �?  �?  �?                
m
Const_21Const*&
_output_shapes
:*
dtype0*%
valueB*  �?

NoOpNoOp
��
Const_22Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
`
w
b
regularization_losses
trainable_variables
	variables
	keras_api
_
forward
regularization_losses
trainable_variables
	variables
	keras_api
_
forward
regularization_losses
trainable_variables
 	variables
!	keras_api
_
"forward
#regularization_losses
$trainable_variables
%	variables
&	keras_api
_
'forward
(regularization_losses
)trainable_variables
*	variables
+	keras_api
_
,forward
-regularization_losses
.trainable_variables
/	variables
0	keras_api
_
1forward
2regularization_losses
3trainable_variables
4	variables
5	keras_api
_
6forward
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
h

Akernel
Bbias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
�
Giter
	Hdecay
Ilearning_rate
Jmomentum
Krho
rms�
rms�
;rms�
<rms�
Arms�
Brms�
Lrms�
Mrms�
Nrms�
Orms�
Prms�
Qrms�
Rrms�
Srms�
Trms�
Urms�
Vrms�
Wrms�
Xrms�
Yrms�
Zrms�
[rms�
\rms�
]rms�
^rms�
_rms�
`rms�
arms�
brms�
crms�
drms�
erms�
frms�
grms�
hrms�
irms�
jrms�
krms�
lrms�
mrms�
nrms�
orms�
prms�
qrms�
rrms�
srms�
trms�
urms�
 
�
0
1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
`22
a23
b24
c25
d26
e27
f28
g29
h30
i31
j32
k33
l34
m35
n36
o37
p38
q39
r40
s41
t42
u43
;44
<45
A46
B47
�
0
1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
`22
a23
b24
c25
d26
e27
f28
g29
h30
i31
j32
k33
l34
m35
n36
o37
p38
q39
r40
s41
t42
u43
;44
<45
A46
B47
�
vmetrics
wlayer_regularization_losses
regularization_losses
trainable_variables
	variables

xlayers
ynon_trainable_variables
zlayer_metrics
 
VT
VARIABLE_VALUEmasked_conv2d/w1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEmasked_conv2d/b1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
{metrics
|layer_regularization_losses
regularization_losses
trainable_variables
	variables

}layers
~non_trainable_variables
layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
L0
M1
N2
O3
P4
Q5
*
L0
M1
N2
O3
P4
Q5
�
�metrics
 �layer_regularization_losses
regularization_losses
trainable_variables
	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
R0
S1
T2
U3
V4
W5
*
R0
S1
T2
U3
V4
W5
�
�metrics
 �layer_regularization_losses
regularization_losses
trainable_variables
 	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
X0
Y1
Z2
[3
\4
]5
*
X0
Y1
Z2
[3
\4
]5
�
�metrics
 �layer_regularization_losses
#regularization_losses
$trainable_variables
%	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
^0
_1
`2
a3
b4
c5
*
^0
_1
`2
a3
b4
c5
�
�metrics
 �layer_regularization_losses
(regularization_losses
)trainable_variables
*	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
d0
e1
f2
g3
h4
i5
*
d0
e1
f2
g3
h4
i5
�
�metrics
 �layer_regularization_losses
-regularization_losses
.trainable_variables
/	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
j0
k1
l2
m3
n4
o5
*
j0
k1
l2
m3
n4
o5
�
�metrics
 �layer_regularization_losses
2regularization_losses
3trainable_variables
4	variables
�layers
�non_trainable_variables
�layer_metrics
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
p0
q1
r2
s3
t4
u5
*
p0
q1
r2
s3
t4
u5
�
�metrics
 �layer_regularization_losses
7regularization_losses
8trainable_variables
9	variables
�layers
�non_trainable_variables
�layer_metrics
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

;0
<1
�
�metrics
 �layer_regularization_losses
=regularization_losses
>trainable_variables
?	variables
�layers
�non_trainable_variables
�layer_metrics
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

A0
B1

A0
B1
�
�metrics
 �layer_regularization_losses
Cregularization_losses
Dtrainable_variables
E	variables
�layers
�non_trainable_variables
�layer_metrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_1/w0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_1/b0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_2/w0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_2/b0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_3/w0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_3/b0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_4/w0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmasked_conv2d_4/b0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_5/w1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_5/b1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_6/w1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_6/b1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_7/w1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_7/b1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_8/w1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_8/b1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_9/w1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEmasked_conv2d_9/b1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_10/w1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_10/b1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_11/w1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_11/b1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_12/w1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_12/b1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_13/w1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_13/b1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_14/w1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_14/b1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_15/w1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_15/b1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_16/w1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_16/b1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_17/w1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_17/b1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_18/w1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_18/b1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_19/w1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_19/b1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_20/w1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_20/b1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_21/w1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmasked_conv2d_21/b1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
N
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
 
 
 
 
 
 
 
d
Lw
Mb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
Nw
Ob
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
Pw
Qb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
L0
M1
N2
O3
P4
Q5
*
L0
M1
N2
O3
P4
Q5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

0
 
 
d
Rw
Sb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
Tw
Ub
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
Vw
Wb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
R0
S1
T2
U3
V4
W5
*
R0
S1
T2
U3
V4
W5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

0
 
 
d
Xw
Yb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
Zw
[b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
\w
]b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
X0
Y1
Z2
[3
\4
]5
*
X0
Y1
Z2
[3
\4
]5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

"0
 
 
d
^w
_b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
`w
ab
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
bw
cb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
^0
_1
`2
a3
b4
c5
*
^0
_1
`2
a3
b4
c5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

'0
 
 
d
dw
eb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
fw
gb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
hw
ib
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
d0
e1
f2
g3
h4
i5
*
d0
e1
f2
g3
h4
i5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

,0
 
 
d
jw
kb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
lw
mb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
nw
ob
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
j0
k1
l2
m3
n4
o5
*
j0
k1
l2
m3
n4
o5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

10
 
 
d
pw
qb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
rw
sb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
d
tw
ub
�regularization_losses
�trainable_variables
�	variables
�	keras_api
 
*
p0
q1
r2
s3
t4
u5
*
p0
q1
r2
s3
t4
u5
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

60
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

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
 

L0
M1

L0
M1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

N0
O1

N0
O1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

P0
Q1

P0
Q1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

R0
S1

R0
S1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

T0
U1

T0
U1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

V0
W1

V0
W1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

X0
Y1

X0
Y1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

Z0
[1

Z0
[1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

\0
]1

\0
]1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

^0
_1

^0
_1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

`0
a1

`0
a1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

b0
c1

b0
c1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

d0
e1

d0
e1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

f0
g1

f0
g1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

h0
i1

h0
i1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

j0
k1

j0
k1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

l0
m1

l0
m1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

n0
o1

n0
o1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
 

p0
q1

p0
q1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

r0
s1

r0
s1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 

t0
u1

t0
u1
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
 
 

�0
�1
�2
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
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
�~
VARIABLE_VALUERMSprop/masked_conv2d/w/rmsOlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUERMSprop/masked_conv2d/b/rmsOlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/conv2d/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUERMSprop/conv2d/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/conv2d_1/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/conv2d_1/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_1/w/rmsNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_1/b/rmsNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_2/w/rmsNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_2/b/rmsNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_3/w/rmsNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_3/b/rmsNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_4/w/rmsNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUERMSprop/masked_conv2d_4/b/rmsNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_5/w/rmsOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_5/b/rmsOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_6/w/rmsOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_6/b/rmsOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_7/w/rmsOtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_7/b/rmsOtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_8/w/rmsOtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_8/b/rmsOtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_9/w/rmsOtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_9/b/rmsOtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_10/w/rmsOtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_10/b/rmsOtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_11/w/rmsOtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_11/b/rmsOtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_12/w/rmsOtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_12/b/rmsOtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_13/w/rmsOtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_13/b/rmsOtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_14/w/rmsOtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_14/b/rmsOtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_15/w/rmsOtrainable_variables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_15/b/rmsOtrainable_variables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_16/w/rmsOtrainable_variables/32/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_16/b/rmsOtrainable_variables/33/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_17/w/rmsOtrainable_variables/34/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_17/b/rmsOtrainable_variables/35/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_18/w/rmsOtrainable_variables/36/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_18/b/rmsOtrainable_variables/37/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_19/w/rmsOtrainable_variables/38/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_19/b/rmsOtrainable_variables/39/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_20/w/rmsOtrainable_variables/40/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_20/b/rmsOtrainable_variables/41/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_21/w/rmsOtrainable_variables/42/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/masked_conv2d_21/b/rmsOtrainable_variables/43/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1masked_conv2d/wConstmasked_conv2d/bmasked_conv2d_1/wConst_1masked_conv2d_1/bmasked_conv2d_2/wConst_2masked_conv2d_2/bmasked_conv2d_3/wConst_3masked_conv2d_3/bmasked_conv2d_4/wConst_4masked_conv2d_4/bmasked_conv2d_5/wConst_5masked_conv2d_5/bmasked_conv2d_6/wConst_6masked_conv2d_6/bmasked_conv2d_7/wConst_7masked_conv2d_7/bmasked_conv2d_8/wConst_8masked_conv2d_8/bmasked_conv2d_9/wConst_9masked_conv2d_9/bmasked_conv2d_10/wConst_10masked_conv2d_10/bmasked_conv2d_11/wConst_11masked_conv2d_11/bmasked_conv2d_12/wConst_12masked_conv2d_12/bmasked_conv2d_13/wConst_13masked_conv2d_13/bmasked_conv2d_14/wConst_14masked_conv2d_14/bmasked_conv2d_15/wConst_15masked_conv2d_15/bmasked_conv2d_16/wConst_16masked_conv2d_16/bmasked_conv2d_17/wConst_17masked_conv2d_17/bmasked_conv2d_18/wConst_18masked_conv2d_18/bmasked_conv2d_19/wConst_19masked_conv2d_19/bmasked_conv2d_20/wConst_20masked_conv2d_20/bmasked_conv2d_21/wConst_21masked_conv2d_21/bconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/bias*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_40980
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�'
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#masked_conv2d/w/Read/ReadVariableOp#masked_conv2d/b/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp%masked_conv2d_1/w/Read/ReadVariableOp%masked_conv2d_1/b/Read/ReadVariableOp%masked_conv2d_2/w/Read/ReadVariableOp%masked_conv2d_2/b/Read/ReadVariableOp%masked_conv2d_3/w/Read/ReadVariableOp%masked_conv2d_3/b/Read/ReadVariableOp%masked_conv2d_4/w/Read/ReadVariableOp%masked_conv2d_4/b/Read/ReadVariableOp%masked_conv2d_5/w/Read/ReadVariableOp%masked_conv2d_5/b/Read/ReadVariableOp%masked_conv2d_6/w/Read/ReadVariableOp%masked_conv2d_6/b/Read/ReadVariableOp%masked_conv2d_7/w/Read/ReadVariableOp%masked_conv2d_7/b/Read/ReadVariableOp%masked_conv2d_8/w/Read/ReadVariableOp%masked_conv2d_8/b/Read/ReadVariableOp%masked_conv2d_9/w/Read/ReadVariableOp%masked_conv2d_9/b/Read/ReadVariableOp&masked_conv2d_10/w/Read/ReadVariableOp&masked_conv2d_10/b/Read/ReadVariableOp&masked_conv2d_11/w/Read/ReadVariableOp&masked_conv2d_11/b/Read/ReadVariableOp&masked_conv2d_12/w/Read/ReadVariableOp&masked_conv2d_12/b/Read/ReadVariableOp&masked_conv2d_13/w/Read/ReadVariableOp&masked_conv2d_13/b/Read/ReadVariableOp&masked_conv2d_14/w/Read/ReadVariableOp&masked_conv2d_14/b/Read/ReadVariableOp&masked_conv2d_15/w/Read/ReadVariableOp&masked_conv2d_15/b/Read/ReadVariableOp&masked_conv2d_16/w/Read/ReadVariableOp&masked_conv2d_16/b/Read/ReadVariableOp&masked_conv2d_17/w/Read/ReadVariableOp&masked_conv2d_17/b/Read/ReadVariableOp&masked_conv2d_18/w/Read/ReadVariableOp&masked_conv2d_18/b/Read/ReadVariableOp&masked_conv2d_19/w/Read/ReadVariableOp&masked_conv2d_19/b/Read/ReadVariableOp&masked_conv2d_20/w/Read/ReadVariableOp&masked_conv2d_20/b/Read/ReadVariableOp&masked_conv2d_21/w/Read/ReadVariableOp&masked_conv2d_21/b/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/RMSprop/masked_conv2d/w/rms/Read/ReadVariableOp/RMSprop/masked_conv2d/b/rms/Read/ReadVariableOp-RMSprop/conv2d/kernel/rms/Read/ReadVariableOp+RMSprop/conv2d/bias/rms/Read/ReadVariableOp/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_1/bias/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_1/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_1/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_2/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_2/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_3/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_3/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_4/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_4/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_5/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_5/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_6/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_6/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_7/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_7/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_8/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_8/b/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_9/w/rms/Read/ReadVariableOp1RMSprop/masked_conv2d_9/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_10/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_10/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_11/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_11/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_12/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_12/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_13/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_13/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_14/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_14/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_15/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_15/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_16/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_16/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_17/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_17/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_18/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_18/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_19/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_19/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_20/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_20/b/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_21/w/rms/Read/ReadVariableOp2RMSprop/masked_conv2d_21/b/rms/Read/ReadVariableOpConst_22*v
Tino
m2k	*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_44020
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemasked_conv2d/wmasked_conv2d/bconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhomasked_conv2d_1/wmasked_conv2d_1/bmasked_conv2d_2/wmasked_conv2d_2/bmasked_conv2d_3/wmasked_conv2d_3/bmasked_conv2d_4/wmasked_conv2d_4/bmasked_conv2d_5/wmasked_conv2d_5/bmasked_conv2d_6/wmasked_conv2d_6/bmasked_conv2d_7/wmasked_conv2d_7/bmasked_conv2d_8/wmasked_conv2d_8/bmasked_conv2d_9/wmasked_conv2d_9/bmasked_conv2d_10/wmasked_conv2d_10/bmasked_conv2d_11/wmasked_conv2d_11/bmasked_conv2d_12/wmasked_conv2d_12/bmasked_conv2d_13/wmasked_conv2d_13/bmasked_conv2d_14/wmasked_conv2d_14/bmasked_conv2d_15/wmasked_conv2d_15/bmasked_conv2d_16/wmasked_conv2d_16/bmasked_conv2d_17/wmasked_conv2d_17/bmasked_conv2d_18/wmasked_conv2d_18/bmasked_conv2d_19/wmasked_conv2d_19/bmasked_conv2d_20/wmasked_conv2d_20/bmasked_conv2d_21/wmasked_conv2d_21/btotalcounttotal_1count_1RMSprop/masked_conv2d/w/rmsRMSprop/masked_conv2d/b/rmsRMSprop/conv2d/kernel/rmsRMSprop/conv2d/bias/rmsRMSprop/conv2d_1/kernel/rmsRMSprop/conv2d_1/bias/rmsRMSprop/masked_conv2d_1/w/rmsRMSprop/masked_conv2d_1/b/rmsRMSprop/masked_conv2d_2/w/rmsRMSprop/masked_conv2d_2/b/rmsRMSprop/masked_conv2d_3/w/rmsRMSprop/masked_conv2d_3/b/rmsRMSprop/masked_conv2d_4/w/rmsRMSprop/masked_conv2d_4/b/rmsRMSprop/masked_conv2d_5/w/rmsRMSprop/masked_conv2d_5/b/rmsRMSprop/masked_conv2d_6/w/rmsRMSprop/masked_conv2d_6/b/rmsRMSprop/masked_conv2d_7/w/rmsRMSprop/masked_conv2d_7/b/rmsRMSprop/masked_conv2d_8/w/rmsRMSprop/masked_conv2d_8/b/rmsRMSprop/masked_conv2d_9/w/rmsRMSprop/masked_conv2d_9/b/rmsRMSprop/masked_conv2d_10/w/rmsRMSprop/masked_conv2d_10/b/rmsRMSprop/masked_conv2d_11/w/rmsRMSprop/masked_conv2d_11/b/rmsRMSprop/masked_conv2d_12/w/rmsRMSprop/masked_conv2d_12/b/rmsRMSprop/masked_conv2d_13/w/rmsRMSprop/masked_conv2d_13/b/rmsRMSprop/masked_conv2d_14/w/rmsRMSprop/masked_conv2d_14/b/rmsRMSprop/masked_conv2d_15/w/rmsRMSprop/masked_conv2d_15/b/rmsRMSprop/masked_conv2d_16/w/rmsRMSprop/masked_conv2d_16/b/rmsRMSprop/masked_conv2d_17/w/rmsRMSprop/masked_conv2d_17/b/rmsRMSprop/masked_conv2d_18/w/rmsRMSprop/masked_conv2d_18/b/rmsRMSprop/masked_conv2d_19/w/rmsRMSprop/masked_conv2d_19/b/rmsRMSprop/masked_conv2d_20/w/rmsRMSprop/masked_conv2d_20/b/rmsRMSprop/masked_conv2d_21/w/rmsRMSprop/masked_conv2d_21/b/rms*u
Tinn
l2j*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_44345��/
�Z
�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40383

inputs
masked_conv2d_40232
masked_conv2d_40234
masked_conv2d_40236
residual_block_40239
residual_block_40241
residual_block_40243
residual_block_40245
residual_block_40247
residual_block_40249
residual_block_40251
residual_block_40253
residual_block_40255
residual_block_1_40258
residual_block_1_40260
residual_block_1_40262
residual_block_1_40264
residual_block_1_40266
residual_block_1_40268
residual_block_1_40270
residual_block_1_40272
residual_block_1_40274
residual_block_2_40277
residual_block_2_40279
residual_block_2_40281
residual_block_2_40283
residual_block_2_40285
residual_block_2_40287
residual_block_2_40289
residual_block_2_40291
residual_block_2_40293
residual_block_3_40296
residual_block_3_40298
residual_block_3_40300
residual_block_3_40302
residual_block_3_40304
residual_block_3_40306
residual_block_3_40308
residual_block_3_40310
residual_block_3_40312
residual_block_4_40315
residual_block_4_40317
residual_block_4_40319
residual_block_4_40321
residual_block_4_40323
residual_block_4_40325
residual_block_4_40327
residual_block_4_40329
residual_block_4_40331
residual_block_5_40334
residual_block_5_40336
residual_block_5_40338
residual_block_5_40340
residual_block_5_40342
residual_block_5_40344
residual_block_5_40346
residual_block_5_40348
residual_block_5_40350
residual_block_6_40353
residual_block_6_40355
residual_block_6_40357
residual_block_6_40359
residual_block_6_40361
residual_block_6_40363
residual_block_6_40365
residual_block_6_40367
residual_block_6_40369
conv2d_40372
conv2d_40374
conv2d_1_40377
conv2d_1_40379
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�%masked_conv2d/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�(residual_block_1/StatefulPartitionedCall�(residual_block_2/StatefulPartitionedCall�(residual_block_3/StatefulPartitionedCall�(residual_block_4/StatefulPartitionedCall�(residual_block_5/StatefulPartitionedCall�(residual_block_6/StatefulPartitionedCall�
%masked_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_40232masked_conv2d_40234masked_conv2d_40236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_391222'
%masked_conv2d/StatefulPartitionedCall�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall.masked_conv2d/StatefulPartitionedCall:output:0residual_block_40239residual_block_40241residual_block_40243residual_block_40245residual_block_40247residual_block_40249residual_block_40251residual_block_40253residual_block_40255*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_391712(
&residual_block/StatefulPartitionedCall�
(residual_block_1/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0residual_block_1_40258residual_block_1_40260residual_block_1_40262residual_block_1_40264residual_block_1_40266residual_block_1_40268residual_block_1_40270residual_block_1_40272residual_block_1_40274*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_392962*
(residual_block_1/StatefulPartitionedCall�
(residual_block_2/StatefulPartitionedCallStatefulPartitionedCall1residual_block_1/StatefulPartitionedCall:output:0residual_block_2_40277residual_block_2_40279residual_block_2_40281residual_block_2_40283residual_block_2_40285residual_block_2_40287residual_block_2_40289residual_block_2_40291residual_block_2_40293*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394212*
(residual_block_2/StatefulPartitionedCall�
(residual_block_3/StatefulPartitionedCallStatefulPartitionedCall1residual_block_2/StatefulPartitionedCall:output:0residual_block_3_40296residual_block_3_40298residual_block_3_40300residual_block_3_40302residual_block_3_40304residual_block_3_40306residual_block_3_40308residual_block_3_40310residual_block_3_40312*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395462*
(residual_block_3/StatefulPartitionedCall�
(residual_block_4/StatefulPartitionedCallStatefulPartitionedCall1residual_block_3/StatefulPartitionedCall:output:0residual_block_4_40315residual_block_4_40317residual_block_4_40319residual_block_4_40321residual_block_4_40323residual_block_4_40325residual_block_4_40327residual_block_4_40329residual_block_4_40331*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_396712*
(residual_block_4/StatefulPartitionedCall�
(residual_block_5/StatefulPartitionedCallStatefulPartitionedCall1residual_block_4/StatefulPartitionedCall:output:0residual_block_5_40334residual_block_5_40336residual_block_5_40338residual_block_5_40340residual_block_5_40342residual_block_5_40344residual_block_5_40346residual_block_5_40348residual_block_5_40350*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_397962*
(residual_block_5/StatefulPartitionedCall�
(residual_block_6/StatefulPartitionedCallStatefulPartitionedCall1residual_block_5/StatefulPartitionedCall:output:0residual_block_6_40353residual_block_6_40355residual_block_6_40357residual_block_6_40359residual_block_6_40361residual_block_6_40363residual_block_6_40365residual_block_6_40367residual_block_6_40369*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399212*
(residual_block_6/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1residual_block_6/StatefulPartitionedCall:output:0conv2d_40372conv2d_40374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_400282 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_40377conv2d_1_40379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_400552"
 conv2d_1/StatefulPartitionedCall�
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall&^masked_conv2d/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall)^residual_block_1/StatefulPartitionedCall)^residual_block_2/StatefulPartitionedCall)^residual_block_3/StatefulPartitionedCall)^residual_block_4/StatefulPartitionedCall)^residual_block_5/StatefulPartitionedCall)^residual_block_6/StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2N
%masked_conv2d/StatefulPartitionedCall%masked_conv2d/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall2T
(residual_block_1/StatefulPartitionedCall(residual_block_1/StatefulPartitionedCall2T
(residual_block_2/StatefulPartitionedCall(residual_block_2/StatefulPartitionedCall2T
(residual_block_3/StatefulPartitionedCall(residual_block_3/StatefulPartitionedCall2T
(residual_block_4/StatefulPartitionedCall(residual_block_4/StatefulPartitionedCall2T
(residual_block_5/StatefulPartitionedCall(residual_block_5/StatefulPartitionedCall2T
(residual_block_6/StatefulPartitionedCall(residual_block_6/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
,__inference_sequential_5_layer_call_fn_43075

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_388622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_11_layer_call_fn_43430

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_382622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_4_layer_call_fn_42973

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_386392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_43419

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_2_layer_call_fn_43223

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_375932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_43281

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
��
�=
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41181

inputs-
)masked_conv2d_mul_readvariableop_resource
masked_conv2d_mul_y-
)masked_conv2d_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_1_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_1_mul_yI
Eresidual_block_sequential_masked_conv2d_1_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_2_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_2_mul_yI
Eresidual_block_sequential_masked_conv2d_2_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_3_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_3_mul_yI
Eresidual_block_sequential_masked_conv2d_3_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_4_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_5_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_6_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_7_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_8_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_9_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_10_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_11_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_12_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_13_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_14_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_15_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_16_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_17_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_18_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_19_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_20_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_21_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp� masked_conv2d/Mul/ReadVariableOp� masked_conv2d/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
 masked_conv2d/Mul/ReadVariableOpReadVariableOp)masked_conv2d_mul_readvariableop_resource*'
_output_shapes
:�*
dtype02"
 masked_conv2d/Mul/ReadVariableOp�
masked_conv2d/MulMul(masked_conv2d/Mul/ReadVariableOp:value:0masked_conv2d_mul_y*
T0*'
_output_shapes
:�2
masked_conv2d/Mul�
masked_conv2d/Conv2DConv2Dinputsmasked_conv2d/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d/Conv2D�
 masked_conv2d/add/ReadVariableOpReadVariableOp)masked_conv2d_add_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 masked_conv2d/add/ReadVariableOp�
masked_conv2d/addAddV2masked_conv2d/Conv2D:output:0(masked_conv2d/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d/add�
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02>
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_1/MulMulDresidual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2/
-residual_block/sequential/masked_conv2d_1/Mul�
0residual_block/sequential/masked_conv2d_1/Conv2DConv2Dmasked_conv2d/add:z:01residual_block/sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_1/Conv2D�
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02>
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_1/addAddV29residual_block/sequential/masked_conv2d_1/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2/
-residual_block/sequential/masked_conv2d_1/add�
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02>
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_2/MulMulDresidual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2/
-residual_block/sequential/masked_conv2d_2/Mul�
0residual_block/sequential/masked_conv2d_2/Conv2DConv2D1residual_block/sequential/masked_conv2d_1/add:z:01residual_block/sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_2/Conv2D�
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02>
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_2/addAddV29residual_block/sequential/masked_conv2d_2/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2/
-residual_block/sequential/masked_conv2d_2/add�
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02>
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_3/MulMulDresidual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2/
-residual_block/sequential/masked_conv2d_3/Mul�
0residual_block/sequential/masked_conv2d_3/Conv2DConv2D1residual_block/sequential/masked_conv2d_2/add:z:01residual_block/sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_3/Conv2D�
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_3/addAddV29residual_block/sequential/masked_conv2d_3/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2/
-residual_block/sequential/masked_conv2d_3/add�
residual_block/addAddV21residual_block/sequential/masked_conv2d_3/add:z:0masked_conv2d/add:z:0*
T0*0
_output_shapes
:����������2
residual_block/add�
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_4/MulMulHresidual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@23
1residual_block_1/sequential_1/masked_conv2d_4/Mul�
4residual_block_1/sequential_1/masked_conv2d_4/Conv2DConv2Dresidual_block/add:z:05residual_block_1/sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_4/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_4/addAddV2=residual_block_1/sequential_1/masked_conv2d_4/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_1/sequential_1/masked_conv2d_4/add�
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_5/MulMulHresidual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@23
1residual_block_1/sequential_1/masked_conv2d_5/Mul�
4residual_block_1/sequential_1/masked_conv2d_5/Conv2DConv2D5residual_block_1/sequential_1/masked_conv2d_4/add:z:05residual_block_1/sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_5/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_5/addAddV2=residual_block_1/sequential_1/masked_conv2d_5/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_1/sequential_1/masked_conv2d_5/add�
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_6/MulMulHresidual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�23
1residual_block_1/sequential_1/masked_conv2d_6/Mul�
4residual_block_1/sequential_1/masked_conv2d_6/Conv2DConv2D5residual_block_1/sequential_1/masked_conv2d_5/add:z:05residual_block_1/sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_6/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_6/addAddV2=residual_block_1/sequential_1/masked_conv2d_6/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������23
1residual_block_1/sequential_1/masked_conv2d_6/add�
residual_block_1/addAddV25residual_block_1/sequential_1/masked_conv2d_6/add:z:0residual_block/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_1/add�
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_7/MulMulHresidual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@23
1residual_block_2/sequential_2/masked_conv2d_7/Mul�
4residual_block_2/sequential_2/masked_conv2d_7/Conv2DConv2Dresidual_block_1/add:z:05residual_block_2/sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_7/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_7/addAddV2=residual_block_2/sequential_2/masked_conv2d_7/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_2/sequential_2/masked_conv2d_7/add�
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_8/MulMulHresidual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@23
1residual_block_2/sequential_2/masked_conv2d_8/Mul�
4residual_block_2/sequential_2/masked_conv2d_8/Conv2DConv2D5residual_block_2/sequential_2/masked_conv2d_7/add:z:05residual_block_2/sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_8/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_8/addAddV2=residual_block_2/sequential_2/masked_conv2d_8/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_2/sequential_2/masked_conv2d_8/add�
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_9/MulMulHresidual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�23
1residual_block_2/sequential_2/masked_conv2d_9/Mul�
4residual_block_2/sequential_2/masked_conv2d_9/Conv2DConv2D5residual_block_2/sequential_2/masked_conv2d_8/add:z:05residual_block_2/sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_9/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_9/addAddV2=residual_block_2/sequential_2/masked_conv2d_9/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������23
1residual_block_2/sequential_2/masked_conv2d_9/add�
residual_block_2/addAddV25residual_block_2/sequential_2/masked_conv2d_9/add:z:0residual_block_1/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_2/add�
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_10/MulMulIresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_3/sequential_3/masked_conv2d_10/Mul�
5residual_block_3/sequential_3/masked_conv2d_10/Conv2DConv2Dresidual_block_2/add:z:06residual_block_3/sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_10/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_10/addAddV2>residual_block_3/sequential_3/masked_conv2d_10/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_3/sequential_3/masked_conv2d_10/add�
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_11/MulMulIresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_3/sequential_3/masked_conv2d_11/Mul�
5residual_block_3/sequential_3/masked_conv2d_11/Conv2DConv2D6residual_block_3/sequential_3/masked_conv2d_10/add:z:06residual_block_3/sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_11/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_11/addAddV2>residual_block_3/sequential_3/masked_conv2d_11/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_3/sequential_3/masked_conv2d_11/add�
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_12/MulMulIresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_3/sequential_3/masked_conv2d_12/Mul�
5residual_block_3/sequential_3/masked_conv2d_12/Conv2DConv2D6residual_block_3/sequential_3/masked_conv2d_11/add:z:06residual_block_3/sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_12/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_12/addAddV2>residual_block_3/sequential_3/masked_conv2d_12/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_3/sequential_3/masked_conv2d_12/add�
residual_block_3/addAddV26residual_block_3/sequential_3/masked_conv2d_12/add:z:0residual_block_2/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_3/add�
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_13/MulMulIresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_4/sequential_4/masked_conv2d_13/Mul�
5residual_block_4/sequential_4/masked_conv2d_13/Conv2DConv2Dresidual_block_3/add:z:06residual_block_4/sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_13/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_13/addAddV2>residual_block_4/sequential_4/masked_conv2d_13/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_4/sequential_4/masked_conv2d_13/add�
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_14/MulMulIresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_4/sequential_4/masked_conv2d_14/Mul�
5residual_block_4/sequential_4/masked_conv2d_14/Conv2DConv2D6residual_block_4/sequential_4/masked_conv2d_13/add:z:06residual_block_4/sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_14/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_14/addAddV2>residual_block_4/sequential_4/masked_conv2d_14/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_4/sequential_4/masked_conv2d_14/add�
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_15/MulMulIresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_4/sequential_4/masked_conv2d_15/Mul�
5residual_block_4/sequential_4/masked_conv2d_15/Conv2DConv2D6residual_block_4/sequential_4/masked_conv2d_14/add:z:06residual_block_4/sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_15/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_15/addAddV2>residual_block_4/sequential_4/masked_conv2d_15/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_4/sequential_4/masked_conv2d_15/add�
residual_block_4/addAddV26residual_block_4/sequential_4/masked_conv2d_15/add:z:0residual_block_3/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_4/add�
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_16/MulMulIresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_5/sequential_5/masked_conv2d_16/Mul�
5residual_block_5/sequential_5/masked_conv2d_16/Conv2DConv2Dresidual_block_4/add:z:06residual_block_5/sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_16/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_16/addAddV2>residual_block_5/sequential_5/masked_conv2d_16/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_5/sequential_5/masked_conv2d_16/add�
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_17/MulMulIresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_5/sequential_5/masked_conv2d_17/Mul�
5residual_block_5/sequential_5/masked_conv2d_17/Conv2DConv2D6residual_block_5/sequential_5/masked_conv2d_16/add:z:06residual_block_5/sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_17/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_17/addAddV2>residual_block_5/sequential_5/masked_conv2d_17/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_5/sequential_5/masked_conv2d_17/add�
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_18/MulMulIresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_5/sequential_5/masked_conv2d_18/Mul�
5residual_block_5/sequential_5/masked_conv2d_18/Conv2DConv2D6residual_block_5/sequential_5/masked_conv2d_17/add:z:06residual_block_5/sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_18/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_18/addAddV2>residual_block_5/sequential_5/masked_conv2d_18/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_5/sequential_5/masked_conv2d_18/add�
residual_block_5/addAddV26residual_block_5/sequential_5/masked_conv2d_18/add:z:0residual_block_4/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_5/add�
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_19/MulMulIresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_6/sequential_6/masked_conv2d_19/Mul�
5residual_block_6/sequential_6/masked_conv2d_19/Conv2DConv2Dresidual_block_5/add:z:06residual_block_6/sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_19/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_19/addAddV2>residual_block_6/sequential_6/masked_conv2d_19/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_6/sequential_6/masked_conv2d_19/add�
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_20/MulMulIresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_6/sequential_6/masked_conv2d_20/Mul�
5residual_block_6/sequential_6/masked_conv2d_20/Conv2DConv2D6residual_block_6/sequential_6/masked_conv2d_19/add:z:06residual_block_6/sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_20/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_20/addAddV2>residual_block_6/sequential_6/masked_conv2d_20/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_6/sequential_6/masked_conv2d_20/add�
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_21/MulMulIresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_6/sequential_6/masked_conv2d_21/Mul�
5residual_block_6/sequential_6/masked_conv2d_21/Conv2DConv2D6residual_block_6/sequential_6/masked_conv2d_20/add:z:06residual_block_6/sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_21/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_21/addAddV2>residual_block_6/sequential_6/masked_conv2d_21/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_6/sequential_6/masked_conv2d_21/add�
residual_block_6/addAddV26residual_block_6/sequential_6/masked_conv2d_21/add:z:0residual_block_5/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_6/add�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dresidual_block_6/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_1/BiasAdd�
conv2d_1/SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1/Sigmoid�
IdentityIdentityconv2d_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^masked_conv2d/Mul/ReadVariableOp!^masked_conv2d/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_1/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_2/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_3/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 masked_conv2d/Mul/ReadVariableOp masked_conv2d/Mul/ReadVariableOp2D
 masked_conv2d/add/ReadVariableOp masked_conv2d/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_14_layer_call_fn_43499

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_384852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_21_layer_call_fn_43660

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_389632
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_18_layer_call_fn_43591

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_387402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_42434

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_38563
masked_conv2d_13_input
masked_conv2d_13_38541
masked_conv2d_13_38543
masked_conv2d_13_38545
masked_conv2d_14_38548
masked_conv2d_14_38550
masked_conv2d_14_38552
masked_conv2d_15_38555
masked_conv2d_15_38557
masked_conv2d_15_38559
identity��(masked_conv2d_13/StatefulPartitionedCall�(masked_conv2d_14/StatefulPartitionedCall�(masked_conv2d_15/StatefulPartitionedCall�
(masked_conv2d_13/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_13_inputmasked_conv2d_13_38541masked_conv2d_13_38543masked_conv2d_13_38545*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_384532*
(masked_conv2d_13/StatefulPartitionedCall�
(masked_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_13/StatefulPartitionedCall:output:0masked_conv2d_14_38548masked_conv2d_14_38550masked_conv2d_14_38552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_384852*
(masked_conv2d_14/StatefulPartitionedCall�
(masked_conv2d_15/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_14/StatefulPartitionedCall:output:0masked_conv2d_15_38555masked_conv2d_15_38557masked_conv2d_15_38559*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_385172*
(masked_conv2d_15/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_15/StatefulPartitionedCall:output:0)^masked_conv2d_13/StatefulPartitionedCall)^masked_conv2d_14/StatefulPartitionedCall)^masked_conv2d_15/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_13/StatefulPartitionedCall(masked_conv2d_13/StatefulPartitionedCall2T
(masked_conv2d_14/StatefulPartitionedCall(masked_conv2d_14/StatefulPartitionedCall2T
(masked_conv2d_15/StatefulPartitionedCall(masked_conv2d_15/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_13_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_37671
masked_conv2d_1_input
masked_conv2d_1_37649
masked_conv2d_1_37651
masked_conv2d_1_37653
masked_conv2d_2_37656
masked_conv2d_2_37658
masked_conv2d_2_37660
masked_conv2d_3_37663
masked_conv2d_3_37665
masked_conv2d_3_37667
identity��'masked_conv2d_1/StatefulPartitionedCall�'masked_conv2d_2/StatefulPartitionedCall�'masked_conv2d_3/StatefulPartitionedCall�
'masked_conv2d_1/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_1_inputmasked_conv2d_1_37649masked_conv2d_1_37651masked_conv2d_1_37653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_375612)
'masked_conv2d_1/StatefulPartitionedCall�
'masked_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_1/StatefulPartitionedCall:output:0masked_conv2d_2_37656masked_conv2d_2_37658masked_conv2d_2_37660*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_375932)
'masked_conv2d_2/StatefulPartitionedCall�
'masked_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_2/StatefulPartitionedCall:output:0masked_conv2d_3_37663masked_conv2d_3_37665masked_conv2d_3_37667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_376252)
'masked_conv2d_3/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_3/StatefulPartitionedCall:output:0(^masked_conv2d_1/StatefulPartitionedCall(^masked_conv2d_2/StatefulPartitionedCall(^masked_conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_1/StatefulPartitionedCall'masked_conv2d_1/StatefulPartitionedCall2R
'masked_conv2d_2/StatefulPartitionedCall'masked_conv2d_2/StatefulPartitionedCall2R
'masked_conv2d_3/StatefulPartitionedCall'masked_conv2d_3/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_1_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_43235

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�$
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_42621

inputs/
+masked_conv2d_4_mul_readvariableop_resource
masked_conv2d_4_mul_y/
+masked_conv2d_4_add_readvariableop_resource/
+masked_conv2d_5_mul_readvariableop_resource
masked_conv2d_5_mul_y/
+masked_conv2d_5_add_readvariableop_resource/
+masked_conv2d_6_mul_readvariableop_resource
masked_conv2d_6_mul_y/
+masked_conv2d_6_add_readvariableop_resource
identity��"masked_conv2d_4/Mul/ReadVariableOp�"masked_conv2d_4/add/ReadVariableOp�"masked_conv2d_5/Mul/ReadVariableOp�"masked_conv2d_5/add/ReadVariableOp�"masked_conv2d_6/Mul/ReadVariableOp�"masked_conv2d_6/add/ReadVariableOp�
"masked_conv2d_4/Mul/ReadVariableOpReadVariableOp+masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_4/Mul/ReadVariableOp�
masked_conv2d_4/MulMul*masked_conv2d_4/Mul/ReadVariableOp:value:0masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_4/Mul�
masked_conv2d_4/Conv2DConv2Dinputsmasked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_4/Conv2D�
"masked_conv2d_4/add/ReadVariableOpReadVariableOp+masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_4/add/ReadVariableOp�
masked_conv2d_4/addAddV2masked_conv2d_4/Conv2D:output:0*masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_4/add�
"masked_conv2d_5/Mul/ReadVariableOpReadVariableOp+masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_5/Mul/ReadVariableOp�
masked_conv2d_5/MulMul*masked_conv2d_5/Mul/ReadVariableOp:value:0masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_5/Mul�
masked_conv2d_5/Conv2DConv2Dmasked_conv2d_4/add:z:0masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_5/Conv2D�
"masked_conv2d_5/add/ReadVariableOpReadVariableOp+masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_5/add/ReadVariableOp�
masked_conv2d_5/addAddV2masked_conv2d_5/Conv2D:output:0*masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_5/add�
"masked_conv2d_6/Mul/ReadVariableOpReadVariableOp+masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_6/Mul/ReadVariableOp�
masked_conv2d_6/MulMul*masked_conv2d_6/Mul/ReadVariableOp:value:0masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_6/Mul�
masked_conv2d_6/Conv2DConv2Dmasked_conv2d_5/add:z:0masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_6/Conv2D�
"masked_conv2d_6/add/ReadVariableOpReadVariableOp+masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_6/add/ReadVariableOp�
masked_conv2d_6/addAddV2masked_conv2d_6/Conv2D:output:0*masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_6/add�
IdentityIdentitymasked_conv2d_6/add:z:0#^masked_conv2d_4/Mul/ReadVariableOp#^masked_conv2d_4/add/ReadVariableOp#^masked_conv2d_5/Mul/ReadVariableOp#^masked_conv2d_5/add/ReadVariableOp#^masked_conv2d_6/Mul/ReadVariableOp#^masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_4/Mul/ReadVariableOp"masked_conv2d_4/Mul/ReadVariableOp2H
"masked_conv2d_4/add/ReadVariableOp"masked_conv2d_4/add/ReadVariableOp2H
"masked_conv2d_5/Mul/ReadVariableOp"masked_conv2d_5/Mul/ReadVariableOp2H
"masked_conv2d_5/add/ReadVariableOp"masked_conv2d_5/add/ReadVariableOp2H
"masked_conv2d_6/Mul/ReadVariableOp"masked_conv2d_6/Mul/ReadVariableOp2H
"masked_conv2d_6/add/ReadVariableOp"masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_38786
masked_conv2d_16_input
masked_conv2d_16_38764
masked_conv2d_16_38766
masked_conv2d_16_38768
masked_conv2d_17_38771
masked_conv2d_17_38773
masked_conv2d_17_38775
masked_conv2d_18_38778
masked_conv2d_18_38780
masked_conv2d_18_38782
identity��(masked_conv2d_16/StatefulPartitionedCall�(masked_conv2d_17/StatefulPartitionedCall�(masked_conv2d_18/StatefulPartitionedCall�
(masked_conv2d_16/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_16_inputmasked_conv2d_16_38764masked_conv2d_16_38766masked_conv2d_16_38768*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_386762*
(masked_conv2d_16/StatefulPartitionedCall�
(masked_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_16/StatefulPartitionedCall:output:0masked_conv2d_17_38771masked_conv2d_17_38773masked_conv2d_17_38775*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_387082*
(masked_conv2d_17/StatefulPartitionedCall�
(masked_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_17/StatefulPartitionedCall:output:0masked_conv2d_18_38778masked_conv2d_18_38780masked_conv2d_18_38782*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_387402*
(masked_conv2d_18/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_18/StatefulPartitionedCall:output:0)^masked_conv2d_16/StatefulPartitionedCall)^masked_conv2d_17/StatefulPartitionedCall)^masked_conv2d_18/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_16/StatefulPartitionedCall(masked_conv2d_16/StatefulPartitionedCall2T
(masked_conv2d_17/StatefulPartitionedCall(masked_conv2d_17/StatefulPartitionedCall2T
(masked_conv2d_18/StatefulPartitionedCall(masked_conv2d_18/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_16_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_43603

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_5_layer_call_fn_38883
masked_conv2d_16_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_388622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_16_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
��
�9
!__inference__traced_restore_44345
file_prefix$
 assignvariableop_masked_conv2d_w&
"assignvariableop_1_masked_conv2d_b$
 assignvariableop_2_conv2d_kernel"
assignvariableop_3_conv2d_bias&
"assignvariableop_4_conv2d_1_kernel$
 assignvariableop_5_conv2d_1_bias#
assignvariableop_6_rmsprop_iter$
 assignvariableop_7_rmsprop_decay,
(assignvariableop_8_rmsprop_learning_rate'
#assignvariableop_9_rmsprop_momentum#
assignvariableop_10_rmsprop_rho)
%assignvariableop_11_masked_conv2d_1_w)
%assignvariableop_12_masked_conv2d_1_b)
%assignvariableop_13_masked_conv2d_2_w)
%assignvariableop_14_masked_conv2d_2_b)
%assignvariableop_15_masked_conv2d_3_w)
%assignvariableop_16_masked_conv2d_3_b)
%assignvariableop_17_masked_conv2d_4_w)
%assignvariableop_18_masked_conv2d_4_b)
%assignvariableop_19_masked_conv2d_5_w)
%assignvariableop_20_masked_conv2d_5_b)
%assignvariableop_21_masked_conv2d_6_w)
%assignvariableop_22_masked_conv2d_6_b)
%assignvariableop_23_masked_conv2d_7_w)
%assignvariableop_24_masked_conv2d_7_b)
%assignvariableop_25_masked_conv2d_8_w)
%assignvariableop_26_masked_conv2d_8_b)
%assignvariableop_27_masked_conv2d_9_w)
%assignvariableop_28_masked_conv2d_9_b*
&assignvariableop_29_masked_conv2d_10_w*
&assignvariableop_30_masked_conv2d_10_b*
&assignvariableop_31_masked_conv2d_11_w*
&assignvariableop_32_masked_conv2d_11_b*
&assignvariableop_33_masked_conv2d_12_w*
&assignvariableop_34_masked_conv2d_12_b*
&assignvariableop_35_masked_conv2d_13_w*
&assignvariableop_36_masked_conv2d_13_b*
&assignvariableop_37_masked_conv2d_14_w*
&assignvariableop_38_masked_conv2d_14_b*
&assignvariableop_39_masked_conv2d_15_w*
&assignvariableop_40_masked_conv2d_15_b*
&assignvariableop_41_masked_conv2d_16_w*
&assignvariableop_42_masked_conv2d_16_b*
&assignvariableop_43_masked_conv2d_17_w*
&assignvariableop_44_masked_conv2d_17_b*
&assignvariableop_45_masked_conv2d_18_w*
&assignvariableop_46_masked_conv2d_18_b*
&assignvariableop_47_masked_conv2d_19_w*
&assignvariableop_48_masked_conv2d_19_b*
&assignvariableop_49_masked_conv2d_20_w*
&assignvariableop_50_masked_conv2d_20_b*
&assignvariableop_51_masked_conv2d_21_w*
&assignvariableop_52_masked_conv2d_21_b
assignvariableop_53_total
assignvariableop_54_count
assignvariableop_55_total_1
assignvariableop_56_count_13
/assignvariableop_57_rmsprop_masked_conv2d_w_rms3
/assignvariableop_58_rmsprop_masked_conv2d_b_rms1
-assignvariableop_59_rmsprop_conv2d_kernel_rms/
+assignvariableop_60_rmsprop_conv2d_bias_rms3
/assignvariableop_61_rmsprop_conv2d_1_kernel_rms1
-assignvariableop_62_rmsprop_conv2d_1_bias_rms5
1assignvariableop_63_rmsprop_masked_conv2d_1_w_rms5
1assignvariableop_64_rmsprop_masked_conv2d_1_b_rms5
1assignvariableop_65_rmsprop_masked_conv2d_2_w_rms5
1assignvariableop_66_rmsprop_masked_conv2d_2_b_rms5
1assignvariableop_67_rmsprop_masked_conv2d_3_w_rms5
1assignvariableop_68_rmsprop_masked_conv2d_3_b_rms5
1assignvariableop_69_rmsprop_masked_conv2d_4_w_rms5
1assignvariableop_70_rmsprop_masked_conv2d_4_b_rms5
1assignvariableop_71_rmsprop_masked_conv2d_5_w_rms5
1assignvariableop_72_rmsprop_masked_conv2d_5_b_rms5
1assignvariableop_73_rmsprop_masked_conv2d_6_w_rms5
1assignvariableop_74_rmsprop_masked_conv2d_6_b_rms5
1assignvariableop_75_rmsprop_masked_conv2d_7_w_rms5
1assignvariableop_76_rmsprop_masked_conv2d_7_b_rms5
1assignvariableop_77_rmsprop_masked_conv2d_8_w_rms5
1assignvariableop_78_rmsprop_masked_conv2d_8_b_rms5
1assignvariableop_79_rmsprop_masked_conv2d_9_w_rms5
1assignvariableop_80_rmsprop_masked_conv2d_9_b_rms6
2assignvariableop_81_rmsprop_masked_conv2d_10_w_rms6
2assignvariableop_82_rmsprop_masked_conv2d_10_b_rms6
2assignvariableop_83_rmsprop_masked_conv2d_11_w_rms6
2assignvariableop_84_rmsprop_masked_conv2d_11_b_rms6
2assignvariableop_85_rmsprop_masked_conv2d_12_w_rms6
2assignvariableop_86_rmsprop_masked_conv2d_12_b_rms6
2assignvariableop_87_rmsprop_masked_conv2d_13_w_rms6
2assignvariableop_88_rmsprop_masked_conv2d_13_b_rms6
2assignvariableop_89_rmsprop_masked_conv2d_14_w_rms6
2assignvariableop_90_rmsprop_masked_conv2d_14_b_rms6
2assignvariableop_91_rmsprop_masked_conv2d_15_w_rms6
2assignvariableop_92_rmsprop_masked_conv2d_15_b_rms6
2assignvariableop_93_rmsprop_masked_conv2d_16_w_rms6
2assignvariableop_94_rmsprop_masked_conv2d_16_b_rms6
2assignvariableop_95_rmsprop_masked_conv2d_17_w_rms6
2assignvariableop_96_rmsprop_masked_conv2d_17_b_rms6
2assignvariableop_97_rmsprop_masked_conv2d_18_w_rms6
2assignvariableop_98_rmsprop_masked_conv2d_18_b_rms6
2assignvariableop_99_rmsprop_masked_conv2d_19_w_rms7
3assignvariableop_100_rmsprop_masked_conv2d_19_b_rms7
3assignvariableop_101_rmsprop_masked_conv2d_20_w_rms7
3assignvariableop_102_rmsprop_masked_conv2d_20_b_rms7
3assignvariableop_103_rmsprop_masked_conv2d_21_w_rms7
3assignvariableop_104_rmsprop_masked_conv2d_21_b_rms
identity_106��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*�5
value�5B�5jB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBOlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/32/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/33/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/34/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/35/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/36/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/37/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/38/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/39/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/40/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/41/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/42/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/43/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*�
value�B�jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*x
dtypesn
l2j	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_masked_conv2d_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_masked_conv2d_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_rmsprop_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_rmsprop_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp(assignvariableop_8_rmsprop_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp#assignvariableop_9_rmsprop_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_rmsprop_rhoIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp%assignvariableop_11_masked_conv2d_1_wIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_masked_conv2d_1_bIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp%assignvariableop_13_masked_conv2d_2_wIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_masked_conv2d_2_bIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp%assignvariableop_15_masked_conv2d_3_wIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_masked_conv2d_3_bIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp%assignvariableop_17_masked_conv2d_4_wIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_masked_conv2d_4_bIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp%assignvariableop_19_masked_conv2d_5_wIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp%assignvariableop_20_masked_conv2d_5_bIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp%assignvariableop_21_masked_conv2d_6_wIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_masked_conv2d_6_bIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp%assignvariableop_23_masked_conv2d_7_wIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_masked_conv2d_7_bIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp%assignvariableop_25_masked_conv2d_8_wIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_masked_conv2d_8_bIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp%assignvariableop_27_masked_conv2d_9_wIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp%assignvariableop_28_masked_conv2d_9_bIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp&assignvariableop_29_masked_conv2d_10_wIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_masked_conv2d_10_bIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp&assignvariableop_31_masked_conv2d_11_wIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp&assignvariableop_32_masked_conv2d_11_bIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp&assignvariableop_33_masked_conv2d_12_wIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp&assignvariableop_34_masked_conv2d_12_bIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp&assignvariableop_35_masked_conv2d_13_wIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp&assignvariableop_36_masked_conv2d_13_bIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp&assignvariableop_37_masked_conv2d_14_wIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_masked_conv2d_14_bIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp&assignvariableop_39_masked_conv2d_15_wIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_masked_conv2d_15_bIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp&assignvariableop_41_masked_conv2d_16_wIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp&assignvariableop_42_masked_conv2d_16_bIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp&assignvariableop_43_masked_conv2d_17_wIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_masked_conv2d_17_bIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp&assignvariableop_45_masked_conv2d_18_wIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp&assignvariableop_46_masked_conv2d_18_bIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp&assignvariableop_47_masked_conv2d_19_wIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp&assignvariableop_48_masked_conv2d_19_bIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp&assignvariableop_49_masked_conv2d_20_wIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp&assignvariableop_50_masked_conv2d_20_bIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp&assignvariableop_51_masked_conv2d_21_wIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp&assignvariableop_52_masked_conv2d_21_bIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57�
AssignVariableOp_57AssignVariableOp/assignvariableop_57_rmsprop_masked_conv2d_w_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58�
AssignVariableOp_58AssignVariableOp/assignvariableop_58_rmsprop_masked_conv2d_b_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59�
AssignVariableOp_59AssignVariableOp-assignvariableop_59_rmsprop_conv2d_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60�
AssignVariableOp_60AssignVariableOp+assignvariableop_60_rmsprop_conv2d_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61�
AssignVariableOp_61AssignVariableOp/assignvariableop_61_rmsprop_conv2d_1_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62�
AssignVariableOp_62AssignVariableOp-assignvariableop_62_rmsprop_conv2d_1_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63�
AssignVariableOp_63AssignVariableOp1assignvariableop_63_rmsprop_masked_conv2d_1_w_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64�
AssignVariableOp_64AssignVariableOp1assignvariableop_64_rmsprop_masked_conv2d_1_b_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65�
AssignVariableOp_65AssignVariableOp1assignvariableop_65_rmsprop_masked_conv2d_2_w_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66�
AssignVariableOp_66AssignVariableOp1assignvariableop_66_rmsprop_masked_conv2d_2_b_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67�
AssignVariableOp_67AssignVariableOp1assignvariableop_67_rmsprop_masked_conv2d_3_w_rmsIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68�
AssignVariableOp_68AssignVariableOp1assignvariableop_68_rmsprop_masked_conv2d_3_b_rmsIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69�
AssignVariableOp_69AssignVariableOp1assignvariableop_69_rmsprop_masked_conv2d_4_w_rmsIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70�
AssignVariableOp_70AssignVariableOp1assignvariableop_70_rmsprop_masked_conv2d_4_b_rmsIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71�
AssignVariableOp_71AssignVariableOp1assignvariableop_71_rmsprop_masked_conv2d_5_w_rmsIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72�
AssignVariableOp_72AssignVariableOp1assignvariableop_72_rmsprop_masked_conv2d_5_b_rmsIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73�
AssignVariableOp_73AssignVariableOp1assignvariableop_73_rmsprop_masked_conv2d_6_w_rmsIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74�
AssignVariableOp_74AssignVariableOp1assignvariableop_74_rmsprop_masked_conv2d_6_b_rmsIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75�
AssignVariableOp_75AssignVariableOp1assignvariableop_75_rmsprop_masked_conv2d_7_w_rmsIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76�
AssignVariableOp_76AssignVariableOp1assignvariableop_76_rmsprop_masked_conv2d_7_b_rmsIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77�
AssignVariableOp_77AssignVariableOp1assignvariableop_77_rmsprop_masked_conv2d_8_w_rmsIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78�
AssignVariableOp_78AssignVariableOp1assignvariableop_78_rmsprop_masked_conv2d_8_b_rmsIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79�
AssignVariableOp_79AssignVariableOp1assignvariableop_79_rmsprop_masked_conv2d_9_w_rmsIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80�
AssignVariableOp_80AssignVariableOp1assignvariableop_80_rmsprop_masked_conv2d_9_b_rmsIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81�
AssignVariableOp_81AssignVariableOp2assignvariableop_81_rmsprop_masked_conv2d_10_w_rmsIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82�
AssignVariableOp_82AssignVariableOp2assignvariableop_82_rmsprop_masked_conv2d_10_b_rmsIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83�
AssignVariableOp_83AssignVariableOp2assignvariableop_83_rmsprop_masked_conv2d_11_w_rmsIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84�
AssignVariableOp_84AssignVariableOp2assignvariableop_84_rmsprop_masked_conv2d_11_b_rmsIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85�
AssignVariableOp_85AssignVariableOp2assignvariableop_85_rmsprop_masked_conv2d_12_w_rmsIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86�
AssignVariableOp_86AssignVariableOp2assignvariableop_86_rmsprop_masked_conv2d_12_b_rmsIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87�
AssignVariableOp_87AssignVariableOp2assignvariableop_87_rmsprop_masked_conv2d_13_w_rmsIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88�
AssignVariableOp_88AssignVariableOp2assignvariableop_88_rmsprop_masked_conv2d_13_b_rmsIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89�
AssignVariableOp_89AssignVariableOp2assignvariableop_89_rmsprop_masked_conv2d_14_w_rmsIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90�
AssignVariableOp_90AssignVariableOp2assignvariableop_90_rmsprop_masked_conv2d_14_b_rmsIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91�
AssignVariableOp_91AssignVariableOp2assignvariableop_91_rmsprop_masked_conv2d_15_w_rmsIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92�
AssignVariableOp_92AssignVariableOp2assignvariableop_92_rmsprop_masked_conv2d_15_b_rmsIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93�
AssignVariableOp_93AssignVariableOp2assignvariableop_93_rmsprop_masked_conv2d_16_w_rmsIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94�
AssignVariableOp_94AssignVariableOp2assignvariableop_94_rmsprop_masked_conv2d_16_b_rmsIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95�
AssignVariableOp_95AssignVariableOp2assignvariableop_95_rmsprop_masked_conv2d_17_w_rmsIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96�
AssignVariableOp_96AssignVariableOp2assignvariableop_96_rmsprop_masked_conv2d_17_b_rmsIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97�
AssignVariableOp_97AssignVariableOp2assignvariableop_97_rmsprop_masked_conv2d_18_w_rmsIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98�
AssignVariableOp_98AssignVariableOp2assignvariableop_98_rmsprop_masked_conv2d_18_b_rmsIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99�
AssignVariableOp_99AssignVariableOp2assignvariableop_99_rmsprop_masked_conv2d_19_w_rmsIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100�
AssignVariableOp_100AssignVariableOp3assignvariableop_100_rmsprop_masked_conv2d_19_b_rmsIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101�
AssignVariableOp_101AssignVariableOp3assignvariableop_101_rmsprop_masked_conv2d_20_w_rmsIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102�
AssignVariableOp_102AssignVariableOp3assignvariableop_102_rmsprop_masked_conv2d_20_b_rmsIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103�
AssignVariableOp_103AssignVariableOp3assignvariableop_103_rmsprop_masked_conv2d_21_w_rmsIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104�
AssignVariableOp_104AssignVariableOp3assignvariableop_104_rmsprop_masked_conv2d_21_b_rmsIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1049
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_105Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_105�
Identity_106IdentityIdentity_105:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_106"%
identity_106Identity_106:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042*
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�.
�
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42244

inputs=
9sequential_5_masked_conv2d_16_mul_readvariableop_resource'
#sequential_5_masked_conv2d_16_mul_y=
9sequential_5_masked_conv2d_16_add_readvariableop_resource=
9sequential_5_masked_conv2d_17_mul_readvariableop_resource'
#sequential_5_masked_conv2d_17_mul_y=
9sequential_5_masked_conv2d_17_add_readvariableop_resource=
9sequential_5_masked_conv2d_18_mul_readvariableop_resource'
#sequential_5_masked_conv2d_18_mul_y=
9sequential_5_masked_conv2d_18_add_readvariableop_resource
identity��0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�0sequential_5/masked_conv2d_16/add/ReadVariableOp�0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�0sequential_5/masked_conv2d_17/add/ReadVariableOp�0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�0sequential_5/masked_conv2d_18/add/ReadVariableOp�
0sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_16/MulMul8sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_5/masked_conv2d_16/Mul�
$sequential_5/masked_conv2d_16/Conv2DConv2Dinputs%sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_16/Conv2D�
0sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_16/add/ReadVariableOp�
!sequential_5/masked_conv2d_16/addAddV2-sequential_5/masked_conv2d_16/Conv2D:output:08sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_16/add�
0sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_17/MulMul8sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_5/masked_conv2d_17/Mul�
$sequential_5/masked_conv2d_17/Conv2DConv2D%sequential_5/masked_conv2d_16/add:z:0%sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_17/Conv2D�
0sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_17/add/ReadVariableOp�
!sequential_5/masked_conv2d_17/addAddV2-sequential_5/masked_conv2d_17/Conv2D:output:08sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_17/add�
0sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_18/MulMul8sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_5/masked_conv2d_18/Mul�
$sequential_5/masked_conv2d_18/Conv2DConv2D%sequential_5/masked_conv2d_17/add:z:0%sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_18/Conv2D�
0sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_5/masked_conv2d_18/add/ReadVariableOp�
!sequential_5/masked_conv2d_18/addAddV2-sequential_5/masked_conv2d_18/Conv2D:output:08sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_5/masked_conv2d_18/add}
addAddV2%sequential_5/masked_conv2d_18/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_5/masked_conv2d_16/Mul/ReadVariableOp1^sequential_5/masked_conv2d_16/add/ReadVariableOp1^sequential_5/masked_conv2d_17/Mul/ReadVariableOp1^sequential_5/masked_conv2d_17/add/ReadVariableOp1^sequential_5/masked_conv2d_18/Mul/ReadVariableOp1^sequential_5/masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp0sequential_5/masked_conv2d_16/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_16/add/ReadVariableOp0sequential_5/masked_conv2d_16/add/ReadVariableOp2d
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp0sequential_5/masked_conv2d_17/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_17/add/ReadVariableOp0sequential_5/masked_conv2d_17/add/ReadVariableOp2d
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp0sequential_5/masked_conv2d_18/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_18/add/ReadVariableOp0sequential_5/masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_2_layer_call_and_return_conditional_losses_39421

inputs<
8sequential_2_masked_conv2d_7_mul_readvariableop_resource&
"sequential_2_masked_conv2d_7_mul_y<
8sequential_2_masked_conv2d_7_add_readvariableop_resource<
8sequential_2_masked_conv2d_8_mul_readvariableop_resource&
"sequential_2_masked_conv2d_8_mul_y<
8sequential_2_masked_conv2d_8_add_readvariableop_resource<
8sequential_2_masked_conv2d_9_mul_readvariableop_resource&
"sequential_2_masked_conv2d_9_mul_y<
8sequential_2_masked_conv2d_9_add_readvariableop_resource
identity��/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�/sequential_2/masked_conv2d_7/add/ReadVariableOp�/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�/sequential_2/masked_conv2d_8/add/ReadVariableOp�/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�/sequential_2/masked_conv2d_9/add/ReadVariableOp�
/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_7/MulMul7sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_2/masked_conv2d_7/Mul�
#sequential_2/masked_conv2d_7/Conv2DConv2Dinputs$sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_7/Conv2D�
/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_7/add/ReadVariableOp�
 sequential_2/masked_conv2d_7/addAddV2,sequential_2/masked_conv2d_7/Conv2D:output:07sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_7/add�
/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_8/MulMul7sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_2/masked_conv2d_8/Mul�
#sequential_2/masked_conv2d_8/Conv2DConv2D$sequential_2/masked_conv2d_7/add:z:0$sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_8/Conv2D�
/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_8/add/ReadVariableOp�
 sequential_2/masked_conv2d_8/addAddV2,sequential_2/masked_conv2d_8/Conv2D:output:07sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_8/add�
/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_9/MulMul7sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_2/masked_conv2d_9/Mul�
#sequential_2/masked_conv2d_9/Conv2DConv2D$sequential_2/masked_conv2d_8/add:z:0$sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_9/Conv2D�
/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_2/masked_conv2d_9/add/ReadVariableOp�
 sequential_2/masked_conv2d_9/addAddV2,sequential_2/masked_conv2d_9/Conv2D:output:07sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_2/masked_conv2d_9/add|
addAddV2$sequential_2/masked_conv2d_9/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_2/masked_conv2d_7/Mul/ReadVariableOp0^sequential_2/masked_conv2d_7/add/ReadVariableOp0^sequential_2/masked_conv2d_8/Mul/ReadVariableOp0^sequential_2/masked_conv2d_8/add/ReadVariableOp0^sequential_2/masked_conv2d_9/Mul/ReadVariableOp0^sequential_2/masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_7/add/ReadVariableOp/sequential_2/masked_conv2d_7/add/ReadVariableOp2b
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_8/add/ReadVariableOp/sequential_2/masked_conv2d_8/add/ReadVariableOp2b
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_9/add/ReadVariableOp/sequential_2/masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42454

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_39085

inputs
masked_conv2d_19_39063
masked_conv2d_19_39065
masked_conv2d_19_39067
masked_conv2d_20_39070
masked_conv2d_20_39072
masked_conv2d_20_39074
masked_conv2d_21_39077
masked_conv2d_21_39079
masked_conv2d_21_39081
identity��(masked_conv2d_19/StatefulPartitionedCall�(masked_conv2d_20/StatefulPartitionedCall�(masked_conv2d_21/StatefulPartitionedCall�
(masked_conv2d_19/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_19_39063masked_conv2d_19_39065masked_conv2d_19_39067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_388992*
(masked_conv2d_19/StatefulPartitionedCall�
(masked_conv2d_20/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_19/StatefulPartitionedCall:output:0masked_conv2d_20_39070masked_conv2d_20_39072masked_conv2d_20_39074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_389312*
(masked_conv2d_20/StatefulPartitionedCall�
(masked_conv2d_21/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_20/StatefulPartitionedCall:output:0masked_conv2d_21_39077masked_conv2d_21_39079masked_conv2d_21_39081*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_389632*
(masked_conv2d_21/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_21/StatefulPartitionedCall:output:0)^masked_conv2d_19/StatefulPartitionedCall)^masked_conv2d_20/StatefulPartitionedCall)^masked_conv2d_21/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_19/StatefulPartitionedCall(masked_conv2d_19/StatefulPartitionedCall2T
(masked_conv2d_20/StatefulPartitionedCall(masked_conv2d_20/StatefulPartitionedCall2T
(masked_conv2d_21/StatefulPartitionedCall(masked_conv2d_21/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_38485

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42140

inputs=
9sequential_4_masked_conv2d_13_mul_readvariableop_resource'
#sequential_4_masked_conv2d_13_mul_y=
9sequential_4_masked_conv2d_13_add_readvariableop_resource=
9sequential_4_masked_conv2d_14_mul_readvariableop_resource'
#sequential_4_masked_conv2d_14_mul_y=
9sequential_4_masked_conv2d_14_add_readvariableop_resource=
9sequential_4_masked_conv2d_15_mul_readvariableop_resource'
#sequential_4_masked_conv2d_15_mul_y=
9sequential_4_masked_conv2d_15_add_readvariableop_resource
identity��0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�0sequential_4/masked_conv2d_13/add/ReadVariableOp�0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�0sequential_4/masked_conv2d_14/add/ReadVariableOp�0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�0sequential_4/masked_conv2d_15/add/ReadVariableOp�
0sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_13/MulMul8sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_4/masked_conv2d_13/Mul�
$sequential_4/masked_conv2d_13/Conv2DConv2Dinputs%sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_13/Conv2D�
0sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_13/add/ReadVariableOp�
!sequential_4/masked_conv2d_13/addAddV2-sequential_4/masked_conv2d_13/Conv2D:output:08sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_13/add�
0sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_14/MulMul8sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_4/masked_conv2d_14/Mul�
$sequential_4/masked_conv2d_14/Conv2DConv2D%sequential_4/masked_conv2d_13/add:z:0%sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_14/Conv2D�
0sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_14/add/ReadVariableOp�
!sequential_4/masked_conv2d_14/addAddV2-sequential_4/masked_conv2d_14/Conv2D:output:08sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_14/add�
0sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_15/MulMul8sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_4/masked_conv2d_15/Mul�
$sequential_4/masked_conv2d_15/Conv2DConv2D%sequential_4/masked_conv2d_14/add:z:0%sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_15/Conv2D�
0sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_4/masked_conv2d_15/add/ReadVariableOp�
!sequential_4/masked_conv2d_15/addAddV2-sequential_4/masked_conv2d_15/Conv2D:output:08sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_4/masked_conv2d_15/add}
addAddV2%sequential_4/masked_conv2d_15/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_4/masked_conv2d_13/Mul/ReadVariableOp1^sequential_4/masked_conv2d_13/add/ReadVariableOp1^sequential_4/masked_conv2d_14/Mul/ReadVariableOp1^sequential_4/masked_conv2d_14/add/ReadVariableOp1^sequential_4/masked_conv2d_15/Mul/ReadVariableOp1^sequential_4/masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp0sequential_4/masked_conv2d_13/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_13/add/ReadVariableOp0sequential_4/masked_conv2d_13/add/ReadVariableOp2d
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp0sequential_4/masked_conv2d_14/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_14/add/ReadVariableOp0sequential_4/masked_conv2d_14/add/ReadVariableOp2d
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp0sequential_4/masked_conv2d_15/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_15/add/ReadVariableOp0sequential_4/masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41857

inputs<
8sequential_1_masked_conv2d_4_mul_readvariableop_resource&
"sequential_1_masked_conv2d_4_mul_y<
8sequential_1_masked_conv2d_4_add_readvariableop_resource<
8sequential_1_masked_conv2d_5_mul_readvariableop_resource&
"sequential_1_masked_conv2d_5_mul_y<
8sequential_1_masked_conv2d_5_add_readvariableop_resource<
8sequential_1_masked_conv2d_6_mul_readvariableop_resource&
"sequential_1_masked_conv2d_6_mul_y<
8sequential_1_masked_conv2d_6_add_readvariableop_resource
identity��/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�/sequential_1/masked_conv2d_4/add/ReadVariableOp�/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�/sequential_1/masked_conv2d_5/add/ReadVariableOp�/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�/sequential_1/masked_conv2d_6/add/ReadVariableOp�
/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_4/MulMul7sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_1/masked_conv2d_4/Mul�
#sequential_1/masked_conv2d_4/Conv2DConv2Dinputs$sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_4/Conv2D�
/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_4/add/ReadVariableOp�
 sequential_1/masked_conv2d_4/addAddV2,sequential_1/masked_conv2d_4/Conv2D:output:07sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_4/add�
/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_5/MulMul7sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_1/masked_conv2d_5/Mul�
#sequential_1/masked_conv2d_5/Conv2DConv2D$sequential_1/masked_conv2d_4/add:z:0$sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_5/Conv2D�
/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_5/add/ReadVariableOp�
 sequential_1/masked_conv2d_5/addAddV2,sequential_1/masked_conv2d_5/Conv2D:output:07sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_5/add�
/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_6/MulMul7sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_1/masked_conv2d_6/Mul�
#sequential_1/masked_conv2d_6/Conv2DConv2D$sequential_1/masked_conv2d_5/add:z:0$sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_6/Conv2D�
/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_1/masked_conv2d_6/add/ReadVariableOp�
 sequential_1/masked_conv2d_6/addAddV2,sequential_1/masked_conv2d_6/Conv2D:output:07sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_1/masked_conv2d_6/add|
addAddV2$sequential_1/masked_conv2d_6/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_1/masked_conv2d_4/Mul/ReadVariableOp0^sequential_1/masked_conv2d_4/add/ReadVariableOp0^sequential_1/masked_conv2d_5/Mul/ReadVariableOp0^sequential_1/masked_conv2d_5/add/ReadVariableOp0^sequential_1/masked_conv2d_6/Mul/ReadVariableOp0^sequential_1/masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_4/add/ReadVariableOp/sequential_1/masked_conv2d_4/add/ReadVariableOp2b
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_5/add/ReadVariableOp/sequential_1/masked_conv2d_5/add/ReadVariableOp2b
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_6/add/ReadVariableOp/sequential_1/masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�,
�
I__inference_residual_block_layer_call_and_return_conditional_losses_39200

inputs:
6sequential_masked_conv2d_1_mul_readvariableop_resource$
 sequential_masked_conv2d_1_mul_y:
6sequential_masked_conv2d_1_add_readvariableop_resource:
6sequential_masked_conv2d_2_mul_readvariableop_resource$
 sequential_masked_conv2d_2_mul_y:
6sequential_masked_conv2d_2_add_readvariableop_resource:
6sequential_masked_conv2d_3_mul_readvariableop_resource$
 sequential_masked_conv2d_3_mul_y:
6sequential_masked_conv2d_3_add_readvariableop_resource
identity��-sequential/masked_conv2d_1/Mul/ReadVariableOp�-sequential/masked_conv2d_1/add/ReadVariableOp�-sequential/masked_conv2d_2/Mul/ReadVariableOp�-sequential/masked_conv2d_2/add/ReadVariableOp�-sequential/masked_conv2d_3/Mul/ReadVariableOp�-sequential/masked_conv2d_3/add/ReadVariableOp�
-sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02/
-sequential/masked_conv2d_1/Mul/ReadVariableOp�
sequential/masked_conv2d_1/MulMul5sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2 
sequential/masked_conv2d_1/Mul�
!sequential/masked_conv2d_1/Conv2DConv2Dinputs"sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_1/Conv2D�
-sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_1/add/ReadVariableOp�
sequential/masked_conv2d_1/addAddV2*sequential/masked_conv2d_1/Conv2D:output:05sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_1/add�
-sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential/masked_conv2d_2/Mul/ReadVariableOp�
sequential/masked_conv2d_2/MulMul5sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2 
sequential/masked_conv2d_2/Mul�
!sequential/masked_conv2d_2/Conv2DConv2D"sequential/masked_conv2d_1/add:z:0"sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_2/Conv2D�
-sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_2/add/ReadVariableOp�
sequential/masked_conv2d_2/addAddV2*sequential/masked_conv2d_2/Conv2D:output:05sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_2/add�
-sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02/
-sequential/masked_conv2d_3/Mul/ReadVariableOp�
sequential/masked_conv2d_3/MulMul5sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2 
sequential/masked_conv2d_3/Mul�
!sequential/masked_conv2d_3/Conv2DConv2D"sequential/masked_conv2d_2/add:z:0"sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2#
!sequential/masked_conv2d_3/Conv2D�
-sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential/masked_conv2d_3/add/ReadVariableOp�
sequential/masked_conv2d_3/addAddV2*sequential/masked_conv2d_3/Conv2D:output:05sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential/masked_conv2d_3/addz
addAddV2"sequential/masked_conv2d_3/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0.^sequential/masked_conv2d_1/Mul/ReadVariableOp.^sequential/masked_conv2d_1/add/ReadVariableOp.^sequential/masked_conv2d_2/Mul/ReadVariableOp.^sequential/masked_conv2d_2/add/ReadVariableOp.^sequential/masked_conv2d_3/Mul/ReadVariableOp.^sequential/masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2^
-sequential/masked_conv2d_1/Mul/ReadVariableOp-sequential/masked_conv2d_1/Mul/ReadVariableOp2^
-sequential/masked_conv2d_1/add/ReadVariableOp-sequential/masked_conv2d_1/add/ReadVariableOp2^
-sequential/masked_conv2d_2/Mul/ReadVariableOp-sequential/masked_conv2d_2/Mul/ReadVariableOp2^
-sequential/masked_conv2d_2/add/ReadVariableOp-sequential/masked_conv2d_2/add/ReadVariableOp2^
-sequential/masked_conv2d_3/Mul/ReadVariableOp-sequential/masked_conv2d_3/Mul/ReadVariableOp2^
-sequential/masked_conv2d_3/add/ReadVariableOp-sequential/masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
.__inference_residual_block_layer_call_fn_41799

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_392002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_6_layer_call_fn_43154

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_390372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�"
�	
#__inference_signature_wrapper_40980
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_375452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
0__inference_residual_block_2_layer_call_fn_42007

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_3_layer_call_fn_38389
masked_conv2d_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_383682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_10_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_38639

inputs
masked_conv2d_13_38617
masked_conv2d_13_38619
masked_conv2d_13_38621
masked_conv2d_14_38624
masked_conv2d_14_38626
masked_conv2d_14_38628
masked_conv2d_15_38631
masked_conv2d_15_38633
masked_conv2d_15_38635
identity��(masked_conv2d_13/StatefulPartitionedCall�(masked_conv2d_14/StatefulPartitionedCall�(masked_conv2d_15/StatefulPartitionedCall�
(masked_conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_13_38617masked_conv2d_13_38619masked_conv2d_13_38621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_384532*
(masked_conv2d_13/StatefulPartitionedCall�
(masked_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_13/StatefulPartitionedCall:output:0masked_conv2d_14_38624masked_conv2d_14_38626masked_conv2d_14_38628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_384852*
(masked_conv2d_14/StatefulPartitionedCall�
(masked_conv2d_15/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_14/StatefulPartitionedCall:output:0masked_conv2d_15_38631masked_conv2d_15_38633masked_conv2d_15_38635*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_385172*
(masked_conv2d_15/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_15/StatefulPartitionedCall:output:0)^masked_conv2d_13/StatefulPartitionedCall)^masked_conv2d_14/StatefulPartitionedCall)^masked_conv2d_15/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_13/StatefulPartitionedCall(masked_conv2d_13/StatefulPartitionedCall2T
(masked_conv2d_14/StatefulPartitionedCall(masked_conv2d_14/StatefulPartitionedCall2T
(masked_conv2d_15/StatefulPartitionedCall(masked_conv2d_15/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_43212

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_40055

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAddi
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_38931

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�,
�
I__inference_residual_block_layer_call_and_return_conditional_losses_39171

inputs:
6sequential_masked_conv2d_1_mul_readvariableop_resource$
 sequential_masked_conv2d_1_mul_y:
6sequential_masked_conv2d_1_add_readvariableop_resource:
6sequential_masked_conv2d_2_mul_readvariableop_resource$
 sequential_masked_conv2d_2_mul_y:
6sequential_masked_conv2d_2_add_readvariableop_resource:
6sequential_masked_conv2d_3_mul_readvariableop_resource$
 sequential_masked_conv2d_3_mul_y:
6sequential_masked_conv2d_3_add_readvariableop_resource
identity��-sequential/masked_conv2d_1/Mul/ReadVariableOp�-sequential/masked_conv2d_1/add/ReadVariableOp�-sequential/masked_conv2d_2/Mul/ReadVariableOp�-sequential/masked_conv2d_2/add/ReadVariableOp�-sequential/masked_conv2d_3/Mul/ReadVariableOp�-sequential/masked_conv2d_3/add/ReadVariableOp�
-sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02/
-sequential/masked_conv2d_1/Mul/ReadVariableOp�
sequential/masked_conv2d_1/MulMul5sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2 
sequential/masked_conv2d_1/Mul�
!sequential/masked_conv2d_1/Conv2DConv2Dinputs"sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_1/Conv2D�
-sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_1/add/ReadVariableOp�
sequential/masked_conv2d_1/addAddV2*sequential/masked_conv2d_1/Conv2D:output:05sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_1/add�
-sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential/masked_conv2d_2/Mul/ReadVariableOp�
sequential/masked_conv2d_2/MulMul5sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2 
sequential/masked_conv2d_2/Mul�
!sequential/masked_conv2d_2/Conv2DConv2D"sequential/masked_conv2d_1/add:z:0"sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_2/Conv2D�
-sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_2/add/ReadVariableOp�
sequential/masked_conv2d_2/addAddV2*sequential/masked_conv2d_2/Conv2D:output:05sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_2/add�
-sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02/
-sequential/masked_conv2d_3/Mul/ReadVariableOp�
sequential/masked_conv2d_3/MulMul5sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2 
sequential/masked_conv2d_3/Mul�
!sequential/masked_conv2d_3/Conv2DConv2D"sequential/masked_conv2d_2/add:z:0"sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2#
!sequential/masked_conv2d_3/Conv2D�
-sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential/masked_conv2d_3/add/ReadVariableOp�
sequential/masked_conv2d_3/addAddV2*sequential/masked_conv2d_3/Conv2D:output:05sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential/masked_conv2d_3/addz
addAddV2"sequential/masked_conv2d_3/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0.^sequential/masked_conv2d_1/Mul/ReadVariableOp.^sequential/masked_conv2d_1/add/ReadVariableOp.^sequential/masked_conv2d_2/Mul/ReadVariableOp.^sequential/masked_conv2d_2/add/ReadVariableOp.^sequential/masked_conv2d_3/Mul/ReadVariableOp.^sequential/masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2^
-sequential/masked_conv2d_1/Mul/ReadVariableOp-sequential/masked_conv2d_1/Mul/ReadVariableOp2^
-sequential/masked_conv2d_1/add/ReadVariableOp-sequential/masked_conv2d_1/add/ReadVariableOp2^
-sequential/masked_conv2d_2/Mul/ReadVariableOp-sequential/masked_conv2d_2/Mul/ReadVariableOp2^
-sequential/masked_conv2d_2/add/ReadVariableOp-sequential/masked_conv2d_2/add/ReadVariableOp2^
-sequential/masked_conv2d_3/Mul/ReadVariableOp-sequential/masked_conv2d_3/Mul/ReadVariableOp2^
-sequential/masked_conv2d_3/add/ReadVariableOp-sequential/masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_1_layer_call_and_return_conditional_losses_39325

inputs<
8sequential_1_masked_conv2d_4_mul_readvariableop_resource&
"sequential_1_masked_conv2d_4_mul_y<
8sequential_1_masked_conv2d_4_add_readvariableop_resource<
8sequential_1_masked_conv2d_5_mul_readvariableop_resource&
"sequential_1_masked_conv2d_5_mul_y<
8sequential_1_masked_conv2d_5_add_readvariableop_resource<
8sequential_1_masked_conv2d_6_mul_readvariableop_resource&
"sequential_1_masked_conv2d_6_mul_y<
8sequential_1_masked_conv2d_6_add_readvariableop_resource
identity��/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�/sequential_1/masked_conv2d_4/add/ReadVariableOp�/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�/sequential_1/masked_conv2d_5/add/ReadVariableOp�/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�/sequential_1/masked_conv2d_6/add/ReadVariableOp�
/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_4/MulMul7sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_1/masked_conv2d_4/Mul�
#sequential_1/masked_conv2d_4/Conv2DConv2Dinputs$sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_4/Conv2D�
/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_4/add/ReadVariableOp�
 sequential_1/masked_conv2d_4/addAddV2,sequential_1/masked_conv2d_4/Conv2D:output:07sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_4/add�
/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_5/MulMul7sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_1/masked_conv2d_5/Mul�
#sequential_1/masked_conv2d_5/Conv2DConv2D$sequential_1/masked_conv2d_4/add:z:0$sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_5/Conv2D�
/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_5/add/ReadVariableOp�
 sequential_1/masked_conv2d_5/addAddV2,sequential_1/masked_conv2d_5/Conv2D:output:07sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_5/add�
/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_6/MulMul7sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_1/masked_conv2d_6/Mul�
#sequential_1/masked_conv2d_6/Conv2DConv2D$sequential_1/masked_conv2d_5/add:z:0$sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_6/Conv2D�
/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_1/masked_conv2d_6/add/ReadVariableOp�
 sequential_1/masked_conv2d_6/addAddV2,sequential_1/masked_conv2d_6/Conv2D:output:07sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_1/masked_conv2d_6/add|
addAddV2$sequential_1/masked_conv2d_6/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_1/masked_conv2d_4/Mul/ReadVariableOp0^sequential_1/masked_conv2d_4/add/ReadVariableOp0^sequential_1/masked_conv2d_5/Mul/ReadVariableOp0^sequential_1/masked_conv2d_5/add/ReadVariableOp0^sequential_1/masked_conv2d_6/Mul/ReadVariableOp0^sequential_1/masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_4/add/ReadVariableOp/sequential_1/masked_conv2d_4/add/ReadVariableOp2b
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_5/add/ReadVariableOp/sequential_1/masked_conv2d_5/add/ReadVariableOp2b
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_6/add/ReadVariableOp/sequential_1/masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_38899

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_43626

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42065

inputs=
9sequential_3_masked_conv2d_10_mul_readvariableop_resource'
#sequential_3_masked_conv2d_10_mul_y=
9sequential_3_masked_conv2d_10_add_readvariableop_resource=
9sequential_3_masked_conv2d_11_mul_readvariableop_resource'
#sequential_3_masked_conv2d_11_mul_y=
9sequential_3_masked_conv2d_11_add_readvariableop_resource=
9sequential_3_masked_conv2d_12_mul_readvariableop_resource'
#sequential_3_masked_conv2d_12_mul_y=
9sequential_3_masked_conv2d_12_add_readvariableop_resource
identity��0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�0sequential_3/masked_conv2d_10/add/ReadVariableOp�0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�0sequential_3/masked_conv2d_11/add/ReadVariableOp�0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�0sequential_3/masked_conv2d_12/add/ReadVariableOp�
0sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_10/MulMul8sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_3/masked_conv2d_10/Mul�
$sequential_3/masked_conv2d_10/Conv2DConv2Dinputs%sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_10/Conv2D�
0sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_10/add/ReadVariableOp�
!sequential_3/masked_conv2d_10/addAddV2-sequential_3/masked_conv2d_10/Conv2D:output:08sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_10/add�
0sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_11/MulMul8sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_3/masked_conv2d_11/Mul�
$sequential_3/masked_conv2d_11/Conv2DConv2D%sequential_3/masked_conv2d_10/add:z:0%sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_11/Conv2D�
0sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_11/add/ReadVariableOp�
!sequential_3/masked_conv2d_11/addAddV2-sequential_3/masked_conv2d_11/Conv2D:output:08sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_11/add�
0sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_12/MulMul8sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_3/masked_conv2d_12/Mul�
$sequential_3/masked_conv2d_12/Conv2DConv2D%sequential_3/masked_conv2d_11/add:z:0%sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_12/Conv2D�
0sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_3/masked_conv2d_12/add/ReadVariableOp�
!sequential_3/masked_conv2d_12/addAddV2-sequential_3/masked_conv2d_12/Conv2D:output:08sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_3/masked_conv2d_12/add}
addAddV2%sequential_3/masked_conv2d_12/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_3/masked_conv2d_10/Mul/ReadVariableOp1^sequential_3/masked_conv2d_10/add/ReadVariableOp1^sequential_3/masked_conv2d_11/Mul/ReadVariableOp1^sequential_3/masked_conv2d_11/add/ReadVariableOp1^sequential_3/masked_conv2d_12/Mul/ReadVariableOp1^sequential_3/masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp0sequential_3/masked_conv2d_10/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_10/add/ReadVariableOp0sequential_3/masked_conv2d_10/add/ReadVariableOp2d
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp0sequential_3/masked_conv2d_11/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_11/add/ReadVariableOp0sequential_3/masked_conv2d_11/add/ReadVariableOp2d
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp0sequential_3/masked_conv2d_12/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_12/add/ReadVariableOp0sequential_3/masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_5_layer_call_and_return_conditional_losses_39796

inputs=
9sequential_5_masked_conv2d_16_mul_readvariableop_resource'
#sequential_5_masked_conv2d_16_mul_y=
9sequential_5_masked_conv2d_16_add_readvariableop_resource=
9sequential_5_masked_conv2d_17_mul_readvariableop_resource'
#sequential_5_masked_conv2d_17_mul_y=
9sequential_5_masked_conv2d_17_add_readvariableop_resource=
9sequential_5_masked_conv2d_18_mul_readvariableop_resource'
#sequential_5_masked_conv2d_18_mul_y=
9sequential_5_masked_conv2d_18_add_readvariableop_resource
identity��0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�0sequential_5/masked_conv2d_16/add/ReadVariableOp�0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�0sequential_5/masked_conv2d_17/add/ReadVariableOp�0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�0sequential_5/masked_conv2d_18/add/ReadVariableOp�
0sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_16/MulMul8sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_5/masked_conv2d_16/Mul�
$sequential_5/masked_conv2d_16/Conv2DConv2Dinputs%sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_16/Conv2D�
0sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_16/add/ReadVariableOp�
!sequential_5/masked_conv2d_16/addAddV2-sequential_5/masked_conv2d_16/Conv2D:output:08sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_16/add�
0sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_17/MulMul8sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_5/masked_conv2d_17/Mul�
$sequential_5/masked_conv2d_17/Conv2DConv2D%sequential_5/masked_conv2d_16/add:z:0%sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_17/Conv2D�
0sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_17/add/ReadVariableOp�
!sequential_5/masked_conv2d_17/addAddV2-sequential_5/masked_conv2d_17/Conv2D:output:08sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_17/add�
0sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_18/MulMul8sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_5/masked_conv2d_18/Mul�
$sequential_5/masked_conv2d_18/Conv2DConv2D%sequential_5/masked_conv2d_17/add:z:0%sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_18/Conv2D�
0sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_5/masked_conv2d_18/add/ReadVariableOp�
!sequential_5/masked_conv2d_18/addAddV2-sequential_5/masked_conv2d_18/Conv2D:output:08sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_5/masked_conv2d_18/add}
addAddV2%sequential_5/masked_conv2d_18/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_5/masked_conv2d_16/Mul/ReadVariableOp1^sequential_5/masked_conv2d_16/add/ReadVariableOp1^sequential_5/masked_conv2d_17/Mul/ReadVariableOp1^sequential_5/masked_conv2d_17/add/ReadVariableOp1^sequential_5/masked_conv2d_18/Mul/ReadVariableOp1^sequential_5/masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp0sequential_5/masked_conv2d_16/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_16/add/ReadVariableOp0sequential_5/masked_conv2d_16/add/ReadVariableOp2d
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp0sequential_5/masked_conv2d_17/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_17/add/ReadVariableOp0sequential_5/masked_conv2d_17/add/ReadVariableOp2d
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp0sequential_5/masked_conv2d_18/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_18/add/ReadVariableOp0sequential_5/masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_2_layer_call_and_return_conditional_losses_39450

inputs<
8sequential_2_masked_conv2d_7_mul_readvariableop_resource&
"sequential_2_masked_conv2d_7_mul_y<
8sequential_2_masked_conv2d_7_add_readvariableop_resource<
8sequential_2_masked_conv2d_8_mul_readvariableop_resource&
"sequential_2_masked_conv2d_8_mul_y<
8sequential_2_masked_conv2d_8_add_readvariableop_resource<
8sequential_2_masked_conv2d_9_mul_readvariableop_resource&
"sequential_2_masked_conv2d_9_mul_y<
8sequential_2_masked_conv2d_9_add_readvariableop_resource
identity��/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�/sequential_2/masked_conv2d_7/add/ReadVariableOp�/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�/sequential_2/masked_conv2d_8/add/ReadVariableOp�/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�/sequential_2/masked_conv2d_9/add/ReadVariableOp�
/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_7/MulMul7sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_2/masked_conv2d_7/Mul�
#sequential_2/masked_conv2d_7/Conv2DConv2Dinputs$sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_7/Conv2D�
/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_7/add/ReadVariableOp�
 sequential_2/masked_conv2d_7/addAddV2,sequential_2/masked_conv2d_7/Conv2D:output:07sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_7/add�
/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_8/MulMul7sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_2/masked_conv2d_8/Mul�
#sequential_2/masked_conv2d_8/Conv2DConv2D$sequential_2/masked_conv2d_7/add:z:0$sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_8/Conv2D�
/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_8/add/ReadVariableOp�
 sequential_2/masked_conv2d_8/addAddV2,sequential_2/masked_conv2d_8/Conv2D:output:07sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_8/add�
/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_9/MulMul7sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_2/masked_conv2d_9/Mul�
#sequential_2/masked_conv2d_9/Conv2DConv2D$sequential_2/masked_conv2d_8/add:z:0$sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_9/Conv2D�
/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_2/masked_conv2d_9/add/ReadVariableOp�
 sequential_2/masked_conv2d_9/addAddV2,sequential_2/masked_conv2d_9/Conv2D:output:07sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_2/masked_conv2d_9/add|
addAddV2$sequential_2/masked_conv2d_9/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_2/masked_conv2d_7/Mul/ReadVariableOp0^sequential_2/masked_conv2d_7/add/ReadVariableOp0^sequential_2/masked_conv2d_8/Mul/ReadVariableOp0^sequential_2/masked_conv2d_8/add/ReadVariableOp0^sequential_2/masked_conv2d_9/Mul/ReadVariableOp0^sequential_2/masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_7/add/ReadVariableOp/sequential_2/masked_conv2d_7/add/ReadVariableOp2b
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_8/add/ReadVariableOp/sequential_2/masked_conv2d_8/add/ReadVariableOp2b
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_9/add/ReadVariableOp/sequential_2/masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_43534

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_1_layer_call_fn_43200

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_375612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_43442

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
0__inference_residual_block_3_layer_call_fn_42111

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_39009
masked_conv2d_19_input
masked_conv2d_19_38987
masked_conv2d_19_38989
masked_conv2d_19_38991
masked_conv2d_20_38994
masked_conv2d_20_38996
masked_conv2d_20_38998
masked_conv2d_21_39001
masked_conv2d_21_39003
masked_conv2d_21_39005
identity��(masked_conv2d_19/StatefulPartitionedCall�(masked_conv2d_20/StatefulPartitionedCall�(masked_conv2d_21/StatefulPartitionedCall�
(masked_conv2d_19/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_19_inputmasked_conv2d_19_38987masked_conv2d_19_38989masked_conv2d_19_38991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_388992*
(masked_conv2d_19/StatefulPartitionedCall�
(masked_conv2d_20/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_19/StatefulPartitionedCall:output:0masked_conv2d_20_38994masked_conv2d_20_38996masked_conv2d_20_38998*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_389312*
(masked_conv2d_20/StatefulPartitionedCall�
(masked_conv2d_21/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_20/StatefulPartitionedCall:output:0masked_conv2d_21_39001masked_conv2d_21_39003masked_conv2d_21_39005*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_389632*
(masked_conv2d_21/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_21/StatefulPartitionedCall:output:0)^masked_conv2d_19/StatefulPartitionedCall)^masked_conv2d_20/StatefulPartitionedCall)^masked_conv2d_21/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_19/StatefulPartitionedCall(masked_conv2d_19/StatefulPartitionedCall2T
(masked_conv2d_20/StatefulPartitionedCall(masked_conv2d_20/StatefulPartitionedCall2T
(masked_conv2d_21/StatefulPartitionedCall(masked_conv2d_21/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_19_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41828

inputs<
8sequential_1_masked_conv2d_4_mul_readvariableop_resource&
"sequential_1_masked_conv2d_4_mul_y<
8sequential_1_masked_conv2d_4_add_readvariableop_resource<
8sequential_1_masked_conv2d_5_mul_readvariableop_resource&
"sequential_1_masked_conv2d_5_mul_y<
8sequential_1_masked_conv2d_5_add_readvariableop_resource<
8sequential_1_masked_conv2d_6_mul_readvariableop_resource&
"sequential_1_masked_conv2d_6_mul_y<
8sequential_1_masked_conv2d_6_add_readvariableop_resource
identity��/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�/sequential_1/masked_conv2d_4/add/ReadVariableOp�/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�/sequential_1/masked_conv2d_5/add/ReadVariableOp�/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�/sequential_1/masked_conv2d_6/add/ReadVariableOp�
/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_4/MulMul7sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_1/masked_conv2d_4/Mul�
#sequential_1/masked_conv2d_4/Conv2DConv2Dinputs$sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_4/Conv2D�
/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_4/add/ReadVariableOp�
 sequential_1/masked_conv2d_4/addAddV2,sequential_1/masked_conv2d_4/Conv2D:output:07sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_4/add�
/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_5/MulMul7sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_1/masked_conv2d_5/Mul�
#sequential_1/masked_conv2d_5/Conv2DConv2D$sequential_1/masked_conv2d_4/add:z:0$sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_5/Conv2D�
/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_5/add/ReadVariableOp�
 sequential_1/masked_conv2d_5/addAddV2,sequential_1/masked_conv2d_5/Conv2D:output:07sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_5/add�
/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_6/MulMul7sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_1/masked_conv2d_6/Mul�
#sequential_1/masked_conv2d_6/Conv2DConv2D$sequential_1/masked_conv2d_5/add:z:0$sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_6/Conv2D�
/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_1/masked_conv2d_6/add/ReadVariableOp�
 sequential_1/masked_conv2d_6/addAddV2,sequential_1/masked_conv2d_6/Conv2D:output:07sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_1/masked_conv2d_6/add|
addAddV2$sequential_1/masked_conv2d_6/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_1/masked_conv2d_4/Mul/ReadVariableOp0^sequential_1/masked_conv2d_4/add/ReadVariableOp0^sequential_1/masked_conv2d_5/Mul/ReadVariableOp0^sequential_1/masked_conv2d_5/add/ReadVariableOp0^sequential_1/masked_conv2d_6/Mul/ReadVariableOp0^sequential_1/masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_4/add/ReadVariableOp/sequential_1/masked_conv2d_4/add/ReadVariableOp2b
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_5/add/ReadVariableOp/sequential_1/masked_conv2d_5/add/ReadVariableOp2b
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_6/add/ReadVariableOp/sequential_1/masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_16_layer_call_fn_43545

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_386762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
0__inference_residual_block_3_layer_call_fn_42088

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
*__inference_sequential_layer_call_fn_37720
masked_conv2d_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_376992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_1_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�#
�	
(__inference_PixelCnn_layer_call_fn_40825
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_PixelCnn_layer_call_and_return_conditional_losses_406822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_38117
masked_conv2d_7_input
masked_conv2d_7_38095
masked_conv2d_7_38097
masked_conv2d_7_38099
masked_conv2d_8_38102
masked_conv2d_8_38104
masked_conv2d_8_38106
masked_conv2d_9_38109
masked_conv2d_9_38111
masked_conv2d_9_38113
identity��'masked_conv2d_7/StatefulPartitionedCall�'masked_conv2d_8/StatefulPartitionedCall�'masked_conv2d_9/StatefulPartitionedCall�
'masked_conv2d_7/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_7_inputmasked_conv2d_7_38095masked_conv2d_7_38097masked_conv2d_7_38099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_380072)
'masked_conv2d_7/StatefulPartitionedCall�
'masked_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_7/StatefulPartitionedCall:output:0masked_conv2d_8_38102masked_conv2d_8_38104masked_conv2d_8_38106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_380392)
'masked_conv2d_8/StatefulPartitionedCall�
'masked_conv2d_9/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_8/StatefulPartitionedCall:output:0masked_conv2d_9_38109masked_conv2d_9_38111masked_conv2d_9_38113*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_380712)
'masked_conv2d_9/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_9/StatefulPartitionedCall:output:0(^masked_conv2d_7/StatefulPartitionedCall(^masked_conv2d_8/StatefulPartitionedCall(^masked_conv2d_9/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_7/StatefulPartitionedCall'masked_conv2d_7/StatefulPartitionedCall2R
'masked_conv2d_8/StatefulPartitionedCall'masked_conv2d_8/StatefulPartitionedCall2R
'masked_conv2d_9/StatefulPartitionedCall'masked_conv2d_9/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_7_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_6_layer_call_fn_43315

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_378482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_38984
masked_conv2d_19_input
masked_conv2d_19_38912
masked_conv2d_19_38914
masked_conv2d_19_38916
masked_conv2d_20_38944
masked_conv2d_20_38946
masked_conv2d_20_38948
masked_conv2d_21_38976
masked_conv2d_21_38978
masked_conv2d_21_38980
identity��(masked_conv2d_19/StatefulPartitionedCall�(masked_conv2d_20/StatefulPartitionedCall�(masked_conv2d_21/StatefulPartitionedCall�
(masked_conv2d_19/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_19_inputmasked_conv2d_19_38912masked_conv2d_19_38914masked_conv2d_19_38916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_388992*
(masked_conv2d_19/StatefulPartitionedCall�
(masked_conv2d_20/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_19/StatefulPartitionedCall:output:0masked_conv2d_20_38944masked_conv2d_20_38946masked_conv2d_20_38948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_389312*
(masked_conv2d_20/StatefulPartitionedCall�
(masked_conv2d_21/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_20/StatefulPartitionedCall:output:0masked_conv2d_21_38976masked_conv2d_21_38978masked_conv2d_21_38980*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_389632*
(masked_conv2d_21/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_21/StatefulPartitionedCall:output:0)^masked_conv2d_19/StatefulPartitionedCall)^masked_conv2d_20/StatefulPartitionedCall)^masked_conv2d_21/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_19/StatefulPartitionedCall(masked_conv2d_19/StatefulPartitionedCall2T
(masked_conv2d_20/StatefulPartitionedCall(masked_conv2d_20/StatefulPartitionedCall2T
(masked_conv2d_21/StatefulPartitionedCall(masked_conv2d_21/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_19_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_37747

inputs
masked_conv2d_1_37725
masked_conv2d_1_37727
masked_conv2d_1_37729
masked_conv2d_2_37732
masked_conv2d_2_37734
masked_conv2d_2_37736
masked_conv2d_3_37739
masked_conv2d_3_37741
masked_conv2d_3_37743
identity��'masked_conv2d_1/StatefulPartitionedCall�'masked_conv2d_2/StatefulPartitionedCall�'masked_conv2d_3/StatefulPartitionedCall�
'masked_conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_1_37725masked_conv2d_1_37727masked_conv2d_1_37729*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_375612)
'masked_conv2d_1/StatefulPartitionedCall�
'masked_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_1/StatefulPartitionedCall:output:0masked_conv2d_2_37732masked_conv2d_2_37734masked_conv2d_2_37736*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_375932)
'masked_conv2d_2/StatefulPartitionedCall�
'masked_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_2/StatefulPartitionedCall:output:0masked_conv2d_3_37739masked_conv2d_3_37741masked_conv2d_3_37743*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_376252)
'masked_conv2d_3/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_3/StatefulPartitionedCall:output:0(^masked_conv2d_1/StatefulPartitionedCall(^masked_conv2d_2/StatefulPartitionedCall(^masked_conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_1/StatefulPartitionedCall'masked_conv2d_1/StatefulPartitionedCall2R
'masked_conv2d_2/StatefulPartitionedCall'masked_conv2d_2/StatefulPartitionedCall2R
'masked_conv2d_3/StatefulPartitionedCall'masked_conv2d_3/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_43350

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_5_layer_call_and_return_conditional_losses_39825

inputs=
9sequential_5_masked_conv2d_16_mul_readvariableop_resource'
#sequential_5_masked_conv2d_16_mul_y=
9sequential_5_masked_conv2d_16_add_readvariableop_resource=
9sequential_5_masked_conv2d_17_mul_readvariableop_resource'
#sequential_5_masked_conv2d_17_mul_y=
9sequential_5_masked_conv2d_17_add_readvariableop_resource=
9sequential_5_masked_conv2d_18_mul_readvariableop_resource'
#sequential_5_masked_conv2d_18_mul_y=
9sequential_5_masked_conv2d_18_add_readvariableop_resource
identity��0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�0sequential_5/masked_conv2d_16/add/ReadVariableOp�0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�0sequential_5/masked_conv2d_17/add/ReadVariableOp�0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�0sequential_5/masked_conv2d_18/add/ReadVariableOp�
0sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_16/MulMul8sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_5/masked_conv2d_16/Mul�
$sequential_5/masked_conv2d_16/Conv2DConv2Dinputs%sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_16/Conv2D�
0sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_16/add/ReadVariableOp�
!sequential_5/masked_conv2d_16/addAddV2-sequential_5/masked_conv2d_16/Conv2D:output:08sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_16/add�
0sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_17/MulMul8sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_5/masked_conv2d_17/Mul�
$sequential_5/masked_conv2d_17/Conv2DConv2D%sequential_5/masked_conv2d_16/add:z:0%sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_17/Conv2D�
0sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_17/add/ReadVariableOp�
!sequential_5/masked_conv2d_17/addAddV2-sequential_5/masked_conv2d_17/Conv2D:output:08sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_17/add�
0sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_18/MulMul8sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_5/masked_conv2d_18/Mul�
$sequential_5/masked_conv2d_18/Conv2DConv2D%sequential_5/masked_conv2d_17/add:z:0%sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_18/Conv2D�
0sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_5/masked_conv2d_18/add/ReadVariableOp�
!sequential_5/masked_conv2d_18/addAddV2-sequential_5/masked_conv2d_18/Conv2D:output:08sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_5/masked_conv2d_18/add}
addAddV2%sequential_5/masked_conv2d_18/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_5/masked_conv2d_16/Mul/ReadVariableOp1^sequential_5/masked_conv2d_16/add/ReadVariableOp1^sequential_5/masked_conv2d_17/Mul/ReadVariableOp1^sequential_5/masked_conv2d_17/add/ReadVariableOp1^sequential_5/masked_conv2d_18/Mul/ReadVariableOp1^sequential_5/masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp0sequential_5/masked_conv2d_16/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_16/add/ReadVariableOp0sequential_5/masked_conv2d_16/add/ReadVariableOp2d
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp0sequential_5/masked_conv2d_17/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_17/add/ReadVariableOp0sequential_5/masked_conv2d_17/add/ReadVariableOp2d
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp0sequential_5/masked_conv2d_18/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_18/add/ReadVariableOp0sequential_5/masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�$
�
E__inference_sequential_layer_call_and_return_conditional_losses_42519

inputs/
+masked_conv2d_1_mul_readvariableop_resource
masked_conv2d_1_mul_y/
+masked_conv2d_1_add_readvariableop_resource/
+masked_conv2d_2_mul_readvariableop_resource
masked_conv2d_2_mul_y/
+masked_conv2d_2_add_readvariableop_resource/
+masked_conv2d_3_mul_readvariableop_resource
masked_conv2d_3_mul_y/
+masked_conv2d_3_add_readvariableop_resource
identity��"masked_conv2d_1/Mul/ReadVariableOp�"masked_conv2d_1/add/ReadVariableOp�"masked_conv2d_2/Mul/ReadVariableOp�"masked_conv2d_2/add/ReadVariableOp�"masked_conv2d_3/Mul/ReadVariableOp�"masked_conv2d_3/add/ReadVariableOp�
"masked_conv2d_1/Mul/ReadVariableOpReadVariableOp+masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_1/Mul/ReadVariableOp�
masked_conv2d_1/MulMul*masked_conv2d_1/Mul/ReadVariableOp:value:0masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_1/Mul�
masked_conv2d_1/Conv2DConv2Dinputsmasked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_1/Conv2D�
"masked_conv2d_1/add/ReadVariableOpReadVariableOp+masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_1/add/ReadVariableOp�
masked_conv2d_1/addAddV2masked_conv2d_1/Conv2D:output:0*masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_1/add�
"masked_conv2d_2/Mul/ReadVariableOpReadVariableOp+masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_2/Mul/ReadVariableOp�
masked_conv2d_2/MulMul*masked_conv2d_2/Mul/ReadVariableOp:value:0masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_2/Mul�
masked_conv2d_2/Conv2DConv2Dmasked_conv2d_1/add:z:0masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_2/Conv2D�
"masked_conv2d_2/add/ReadVariableOpReadVariableOp+masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_2/add/ReadVariableOp�
masked_conv2d_2/addAddV2masked_conv2d_2/Conv2D:output:0*masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_2/add�
"masked_conv2d_3/Mul/ReadVariableOpReadVariableOp+masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_3/Mul/ReadVariableOp�
masked_conv2d_3/MulMul*masked_conv2d_3/Mul/ReadVariableOp:value:0masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_3/Mul�
masked_conv2d_3/Conv2DConv2Dmasked_conv2d_2/add:z:0masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_3/Conv2D�
"masked_conv2d_3/add/ReadVariableOpReadVariableOp+masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_3/add/ReadVariableOp�
masked_conv2d_3/addAddV2masked_conv2d_3/Conv2D:output:0*masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_3/add�
IdentityIdentitymasked_conv2d_3/add:z:0#^masked_conv2d_1/Mul/ReadVariableOp#^masked_conv2d_1/add/ReadVariableOp#^masked_conv2d_2/Mul/ReadVariableOp#^masked_conv2d_2/add/ReadVariableOp#^masked_conv2d_3/Mul/ReadVariableOp#^masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_1/Mul/ReadVariableOp"masked_conv2d_1/Mul/ReadVariableOp2H
"masked_conv2d_1/add/ReadVariableOp"masked_conv2d_1/add/ReadVariableOp2H
"masked_conv2d_2/Mul/ReadVariableOp"masked_conv2d_2/Mul/ReadVariableOp2H
"masked_conv2d_2/add/ReadVariableOp"masked_conv2d_2/add/ReadVariableOp2H
"masked_conv2d_3/Mul/ReadVariableOp"masked_conv2d_3/Mul/ReadVariableOp2H
"masked_conv2d_3/add/ReadVariableOp"masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�$
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_42723

inputs/
+masked_conv2d_7_mul_readvariableop_resource
masked_conv2d_7_mul_y/
+masked_conv2d_7_add_readvariableop_resource/
+masked_conv2d_8_mul_readvariableop_resource
masked_conv2d_8_mul_y/
+masked_conv2d_8_add_readvariableop_resource/
+masked_conv2d_9_mul_readvariableop_resource
masked_conv2d_9_mul_y/
+masked_conv2d_9_add_readvariableop_resource
identity��"masked_conv2d_7/Mul/ReadVariableOp�"masked_conv2d_7/add/ReadVariableOp�"masked_conv2d_8/Mul/ReadVariableOp�"masked_conv2d_8/add/ReadVariableOp�"masked_conv2d_9/Mul/ReadVariableOp�"masked_conv2d_9/add/ReadVariableOp�
"masked_conv2d_7/Mul/ReadVariableOpReadVariableOp+masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_7/Mul/ReadVariableOp�
masked_conv2d_7/MulMul*masked_conv2d_7/Mul/ReadVariableOp:value:0masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_7/Mul�
masked_conv2d_7/Conv2DConv2Dinputsmasked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_7/Conv2D�
"masked_conv2d_7/add/ReadVariableOpReadVariableOp+masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_7/add/ReadVariableOp�
masked_conv2d_7/addAddV2masked_conv2d_7/Conv2D:output:0*masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_7/add�
"masked_conv2d_8/Mul/ReadVariableOpReadVariableOp+masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_8/Mul/ReadVariableOp�
masked_conv2d_8/MulMul*masked_conv2d_8/Mul/ReadVariableOp:value:0masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_8/Mul�
masked_conv2d_8/Conv2DConv2Dmasked_conv2d_7/add:z:0masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_8/Conv2D�
"masked_conv2d_8/add/ReadVariableOpReadVariableOp+masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_8/add/ReadVariableOp�
masked_conv2d_8/addAddV2masked_conv2d_8/Conv2D:output:0*masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_8/add�
"masked_conv2d_9/Mul/ReadVariableOpReadVariableOp+masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_9/Mul/ReadVariableOp�
masked_conv2d_9/MulMul*masked_conv2d_9/Mul/ReadVariableOp:value:0masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_9/Mul�
masked_conv2d_9/Conv2DConv2Dmasked_conv2d_8/add:z:0masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_9/Conv2D�
"masked_conv2d_9/add/ReadVariableOpReadVariableOp+masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_9/add/ReadVariableOp�
masked_conv2d_9/addAddV2masked_conv2d_9/Conv2D:output:0*masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_9/add�
IdentityIdentitymasked_conv2d_9/add:z:0#^masked_conv2d_7/Mul/ReadVariableOp#^masked_conv2d_7/add/ReadVariableOp#^masked_conv2d_8/Mul/ReadVariableOp#^masked_conv2d_8/add/ReadVariableOp#^masked_conv2d_9/Mul/ReadVariableOp#^masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_7/Mul/ReadVariableOp"masked_conv2d_7/Mul/ReadVariableOp2H
"masked_conv2d_7/add/ReadVariableOp"masked_conv2d_7/add/ReadVariableOp2H
"masked_conv2d_8/Mul/ReadVariableOp"masked_conv2d_8/Mul/ReadVariableOp2H
"masked_conv2d_8/add/ReadVariableOp"masked_conv2d_8/add/ReadVariableOp2H
"masked_conv2d_9/Mul/ReadVariableOp"masked_conv2d_9/Mul/ReadVariableOp2H
"masked_conv2d_9/add/ReadVariableOp"masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�Z
�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40072
input_1
masked_conv2d_39135
masked_conv2d_39137
masked_conv2d_39139
residual_block_39248
residual_block_39250
residual_block_39252
residual_block_39254
residual_block_39256
residual_block_39258
residual_block_39260
residual_block_39262
residual_block_39264
residual_block_1_39373
residual_block_1_39375
residual_block_1_39377
residual_block_1_39379
residual_block_1_39381
residual_block_1_39383
residual_block_1_39385
residual_block_1_39387
residual_block_1_39389
residual_block_2_39498
residual_block_2_39500
residual_block_2_39502
residual_block_2_39504
residual_block_2_39506
residual_block_2_39508
residual_block_2_39510
residual_block_2_39512
residual_block_2_39514
residual_block_3_39623
residual_block_3_39625
residual_block_3_39627
residual_block_3_39629
residual_block_3_39631
residual_block_3_39633
residual_block_3_39635
residual_block_3_39637
residual_block_3_39639
residual_block_4_39748
residual_block_4_39750
residual_block_4_39752
residual_block_4_39754
residual_block_4_39756
residual_block_4_39758
residual_block_4_39760
residual_block_4_39762
residual_block_4_39764
residual_block_5_39873
residual_block_5_39875
residual_block_5_39877
residual_block_5_39879
residual_block_5_39881
residual_block_5_39883
residual_block_5_39885
residual_block_5_39887
residual_block_5_39889
residual_block_6_39998
residual_block_6_40000
residual_block_6_40002
residual_block_6_40004
residual_block_6_40006
residual_block_6_40008
residual_block_6_40010
residual_block_6_40012
residual_block_6_40014
conv2d_40039
conv2d_40041
conv2d_1_40066
conv2d_1_40068
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�%masked_conv2d/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�(residual_block_1/StatefulPartitionedCall�(residual_block_2/StatefulPartitionedCall�(residual_block_3/StatefulPartitionedCall�(residual_block_4/StatefulPartitionedCall�(residual_block_5/StatefulPartitionedCall�(residual_block_6/StatefulPartitionedCall�
%masked_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1masked_conv2d_39135masked_conv2d_39137masked_conv2d_39139*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_391222'
%masked_conv2d/StatefulPartitionedCall�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall.masked_conv2d/StatefulPartitionedCall:output:0residual_block_39248residual_block_39250residual_block_39252residual_block_39254residual_block_39256residual_block_39258residual_block_39260residual_block_39262residual_block_39264*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_391712(
&residual_block/StatefulPartitionedCall�
(residual_block_1/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0residual_block_1_39373residual_block_1_39375residual_block_1_39377residual_block_1_39379residual_block_1_39381residual_block_1_39383residual_block_1_39385residual_block_1_39387residual_block_1_39389*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_392962*
(residual_block_1/StatefulPartitionedCall�
(residual_block_2/StatefulPartitionedCallStatefulPartitionedCall1residual_block_1/StatefulPartitionedCall:output:0residual_block_2_39498residual_block_2_39500residual_block_2_39502residual_block_2_39504residual_block_2_39506residual_block_2_39508residual_block_2_39510residual_block_2_39512residual_block_2_39514*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394212*
(residual_block_2/StatefulPartitionedCall�
(residual_block_3/StatefulPartitionedCallStatefulPartitionedCall1residual_block_2/StatefulPartitionedCall:output:0residual_block_3_39623residual_block_3_39625residual_block_3_39627residual_block_3_39629residual_block_3_39631residual_block_3_39633residual_block_3_39635residual_block_3_39637residual_block_3_39639*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395462*
(residual_block_3/StatefulPartitionedCall�
(residual_block_4/StatefulPartitionedCallStatefulPartitionedCall1residual_block_3/StatefulPartitionedCall:output:0residual_block_4_39748residual_block_4_39750residual_block_4_39752residual_block_4_39754residual_block_4_39756residual_block_4_39758residual_block_4_39760residual_block_4_39762residual_block_4_39764*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_396712*
(residual_block_4/StatefulPartitionedCall�
(residual_block_5/StatefulPartitionedCallStatefulPartitionedCall1residual_block_4/StatefulPartitionedCall:output:0residual_block_5_39873residual_block_5_39875residual_block_5_39877residual_block_5_39879residual_block_5_39881residual_block_5_39883residual_block_5_39885residual_block_5_39887residual_block_5_39889*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_397962*
(residual_block_5/StatefulPartitionedCall�
(residual_block_6/StatefulPartitionedCallStatefulPartitionedCall1residual_block_5/StatefulPartitionedCall:output:0residual_block_6_39998residual_block_6_40000residual_block_6_40002residual_block_6_40004residual_block_6_40006residual_block_6_40008residual_block_6_40010residual_block_6_40012residual_block_6_40014*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399212*
(residual_block_6/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1residual_block_6/StatefulPartitionedCall:output:0conv2d_40039conv2d_40041*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_400282 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_40066conv2d_1_40068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_400552"
 conv2d_1/StatefulPartitionedCall�
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall&^masked_conv2d/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall)^residual_block_1/StatefulPartitionedCall)^residual_block_2/StatefulPartitionedCall)^residual_block_3/StatefulPartitionedCall)^residual_block_4/StatefulPartitionedCall)^residual_block_5/StatefulPartitionedCall)^residual_block_6/StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2N
%masked_conv2d/StatefulPartitionedCall%masked_conv2d/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall2T
(residual_block_1/StatefulPartitionedCall(residual_block_1/StatefulPartitionedCall2T
(residual_block_2/StatefulPartitionedCall(residual_block_2/StatefulPartitionedCall2T
(residual_block_3/StatefulPartitionedCall(residual_block_3/StatefulPartitionedCall2T
(residual_block_4/StatefulPartitionedCall(residual_block_4/StatefulPartitionedCall2T
(residual_block_5/StatefulPartitionedCall(residual_block_5/StatefulPartitionedCall2T
(residual_block_6/StatefulPartitionedCall(residual_block_6/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
,__inference_sequential_3_layer_call_fn_42871

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_384162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_38453

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_38814

inputs
masked_conv2d_16_38792
masked_conv2d_16_38794
masked_conv2d_16_38796
masked_conv2d_17_38799
masked_conv2d_17_38801
masked_conv2d_17_38803
masked_conv2d_18_38806
masked_conv2d_18_38808
masked_conv2d_18_38810
identity��(masked_conv2d_16/StatefulPartitionedCall�(masked_conv2d_17/StatefulPartitionedCall�(masked_conv2d_18/StatefulPartitionedCall�
(masked_conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_16_38792masked_conv2d_16_38794masked_conv2d_16_38796*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_386762*
(masked_conv2d_16/StatefulPartitionedCall�
(masked_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_16/StatefulPartitionedCall:output:0masked_conv2d_17_38799masked_conv2d_17_38801masked_conv2d_17_38803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_387082*
(masked_conv2d_17/StatefulPartitionedCall�
(masked_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_17/StatefulPartitionedCall:output:0masked_conv2d_18_38806masked_conv2d_18_38808masked_conv2d_18_38810*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_387402*
(masked_conv2d_18/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_18/StatefulPartitionedCall:output:0)^masked_conv2d_16/StatefulPartitionedCall)^masked_conv2d_17/StatefulPartitionedCall)^masked_conv2d_18/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_16/StatefulPartitionedCall(masked_conv2d_16/StatefulPartitionedCall2T
(masked_conv2d_17/StatefulPartitionedCall(masked_conv2d_17/StatefulPartitionedCall2T
(masked_conv2d_18/StatefulPartitionedCall(masked_conv2d_18/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_5_layer_call_fn_42319

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_398252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_37784

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
A__inference_conv2d_layer_call_and_return_conditional_losses_40028

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_37970

inputs
masked_conv2d_4_37948
masked_conv2d_4_37950
masked_conv2d_4_37952
masked_conv2d_5_37955
masked_conv2d_5_37957
masked_conv2d_5_37959
masked_conv2d_6_37962
masked_conv2d_6_37964
masked_conv2d_6_37966
identity��'masked_conv2d_4/StatefulPartitionedCall�'masked_conv2d_5/StatefulPartitionedCall�'masked_conv2d_6/StatefulPartitionedCall�
'masked_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_4_37948masked_conv2d_4_37950masked_conv2d_4_37952*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_377842)
'masked_conv2d_4/StatefulPartitionedCall�
'masked_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_4/StatefulPartitionedCall:output:0masked_conv2d_5_37955masked_conv2d_5_37957masked_conv2d_5_37959*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_378162)
'masked_conv2d_5/StatefulPartitionedCall�
'masked_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_5/StatefulPartitionedCall:output:0masked_conv2d_6_37962masked_conv2d_6_37964masked_conv2d_6_37966*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_378482)
'masked_conv2d_6/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_6/StatefulPartitionedCall:output:0(^masked_conv2d_4/StatefulPartitionedCall(^masked_conv2d_5/StatefulPartitionedCall(^masked_conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_4/StatefulPartitionedCall'masked_conv2d_4/StatefulPartitionedCall2R
'masked_conv2d_5/StatefulPartitionedCall'masked_conv2d_5/StatefulPartitionedCall2R
'masked_conv2d_6/StatefulPartitionedCall'masked_conv2d_6/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_2_layer_call_fn_38214
masked_conv2d_7_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_381932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_7_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_6_layer_call_fn_39058
masked_conv2d_19_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_390372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_19_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_43189

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_12_layer_call_fn_43453

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_382942
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_6_layer_call_fn_39106
masked_conv2d_19_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_390852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_19_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_38368

inputs
masked_conv2d_10_38346
masked_conv2d_10_38348
masked_conv2d_10_38350
masked_conv2d_11_38353
masked_conv2d_11_38355
masked_conv2d_11_38357
masked_conv2d_12_38360
masked_conv2d_12_38362
masked_conv2d_12_38364
identity��(masked_conv2d_10/StatefulPartitionedCall�(masked_conv2d_11/StatefulPartitionedCall�(masked_conv2d_12/StatefulPartitionedCall�
(masked_conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_10_38346masked_conv2d_10_38348masked_conv2d_10_38350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_382302*
(masked_conv2d_10/StatefulPartitionedCall�
(masked_conv2d_11/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_10/StatefulPartitionedCall:output:0masked_conv2d_11_38353masked_conv2d_11_38355masked_conv2d_11_38357*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_382622*
(masked_conv2d_11/StatefulPartitionedCall�
(masked_conv2d_12/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_11/StatefulPartitionedCall:output:0masked_conv2d_12_38360masked_conv2d_12_38362masked_conv2d_12_38364*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_382942*
(masked_conv2d_12/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_12/StatefulPartitionedCall:output:0)^masked_conv2d_10/StatefulPartitionedCall)^masked_conv2d_11/StatefulPartitionedCall)^masked_conv2d_12/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_10/StatefulPartitionedCall(masked_conv2d_10/StatefulPartitionedCall2T
(masked_conv2d_11/StatefulPartitionedCall(masked_conv2d_11/StatefulPartitionedCall2T
(masked_conv2d_12/StatefulPartitionedCall(masked_conv2d_12/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�$
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_42593

inputs/
+masked_conv2d_4_mul_readvariableop_resource
masked_conv2d_4_mul_y/
+masked_conv2d_4_add_readvariableop_resource/
+masked_conv2d_5_mul_readvariableop_resource
masked_conv2d_5_mul_y/
+masked_conv2d_5_add_readvariableop_resource/
+masked_conv2d_6_mul_readvariableop_resource
masked_conv2d_6_mul_y/
+masked_conv2d_6_add_readvariableop_resource
identity��"masked_conv2d_4/Mul/ReadVariableOp�"masked_conv2d_4/add/ReadVariableOp�"masked_conv2d_5/Mul/ReadVariableOp�"masked_conv2d_5/add/ReadVariableOp�"masked_conv2d_6/Mul/ReadVariableOp�"masked_conv2d_6/add/ReadVariableOp�
"masked_conv2d_4/Mul/ReadVariableOpReadVariableOp+masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_4/Mul/ReadVariableOp�
masked_conv2d_4/MulMul*masked_conv2d_4/Mul/ReadVariableOp:value:0masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_4/Mul�
masked_conv2d_4/Conv2DConv2Dinputsmasked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_4/Conv2D�
"masked_conv2d_4/add/ReadVariableOpReadVariableOp+masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_4/add/ReadVariableOp�
masked_conv2d_4/addAddV2masked_conv2d_4/Conv2D:output:0*masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_4/add�
"masked_conv2d_5/Mul/ReadVariableOpReadVariableOp+masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_5/Mul/ReadVariableOp�
masked_conv2d_5/MulMul*masked_conv2d_5/Mul/ReadVariableOp:value:0masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_5/Mul�
masked_conv2d_5/Conv2DConv2Dmasked_conv2d_4/add:z:0masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_5/Conv2D�
"masked_conv2d_5/add/ReadVariableOpReadVariableOp+masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_5/add/ReadVariableOp�
masked_conv2d_5/addAddV2masked_conv2d_5/Conv2D:output:0*masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_5/add�
"masked_conv2d_6/Mul/ReadVariableOpReadVariableOp+masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_6/Mul/ReadVariableOp�
masked_conv2d_6/MulMul*masked_conv2d_6/Mul/ReadVariableOp:value:0masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_6/Mul�
masked_conv2d_6/Conv2DConv2Dmasked_conv2d_5/add:z:0masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_6/Conv2D�
"masked_conv2d_6/add/ReadVariableOpReadVariableOp+masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_6/add/ReadVariableOp�
masked_conv2d_6/addAddV2masked_conv2d_6/Conv2D:output:0*masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_6/add�
IdentityIdentitymasked_conv2d_6/add:z:0#^masked_conv2d_4/Mul/ReadVariableOp#^masked_conv2d_4/add/ReadVariableOp#^masked_conv2d_5/Mul/ReadVariableOp#^masked_conv2d_5/add/ReadVariableOp#^masked_conv2d_6/Mul/ReadVariableOp#^masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_4/Mul/ReadVariableOp"masked_conv2d_4/Mul/ReadVariableOp2H
"masked_conv2d_4/add/ReadVariableOp"masked_conv2d_4/add/ReadVariableOp2H
"masked_conv2d_5/Mul/ReadVariableOp"masked_conv2d_5/Mul/ReadVariableOp2H
"masked_conv2d_5/add/ReadVariableOp"masked_conv2d_5/add/ReadVariableOp2H
"masked_conv2d_6/Mul/ReadVariableOp"masked_conv2d_6/Mul/ReadVariableOp2H
"masked_conv2d_6/add/ReadVariableOp"masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_43511

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_37625

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_7_layer_call_fn_43338

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_380072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_3_layer_call_fn_42848

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_383682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42273

inputs=
9sequential_5_masked_conv2d_16_mul_readvariableop_resource'
#sequential_5_masked_conv2d_16_mul_y=
9sequential_5_masked_conv2d_16_add_readvariableop_resource=
9sequential_5_masked_conv2d_17_mul_readvariableop_resource'
#sequential_5_masked_conv2d_17_mul_y=
9sequential_5_masked_conv2d_17_add_readvariableop_resource=
9sequential_5_masked_conv2d_18_mul_readvariableop_resource'
#sequential_5_masked_conv2d_18_mul_y=
9sequential_5_masked_conv2d_18_add_readvariableop_resource
identity��0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�0sequential_5/masked_conv2d_16/add/ReadVariableOp�0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�0sequential_5/masked_conv2d_17/add/ReadVariableOp�0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�0sequential_5/masked_conv2d_18/add/ReadVariableOp�
0sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_16/MulMul8sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_5/masked_conv2d_16/Mul�
$sequential_5/masked_conv2d_16/Conv2DConv2Dinputs%sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_16/Conv2D�
0sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_16/add/ReadVariableOp�
!sequential_5/masked_conv2d_16/addAddV2-sequential_5/masked_conv2d_16/Conv2D:output:08sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_16/add�
0sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_17/MulMul8sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_5/masked_conv2d_17/Mul�
$sequential_5/masked_conv2d_17/Conv2DConv2D%sequential_5/masked_conv2d_16/add:z:0%sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_17/Conv2D�
0sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_5/masked_conv2d_17/add/ReadVariableOp�
!sequential_5/masked_conv2d_17/addAddV2-sequential_5/masked_conv2d_17/Conv2D:output:08sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_5/masked_conv2d_17/add�
0sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
!sequential_5/masked_conv2d_18/MulMul8sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:0#sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_5/masked_conv2d_18/Mul�
$sequential_5/masked_conv2d_18/Conv2DConv2D%sequential_5/masked_conv2d_17/add:z:0%sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_5/masked_conv2d_18/Conv2D�
0sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOp9sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_5/masked_conv2d_18/add/ReadVariableOp�
!sequential_5/masked_conv2d_18/addAddV2-sequential_5/masked_conv2d_18/Conv2D:output:08sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_5/masked_conv2d_18/add}
addAddV2%sequential_5/masked_conv2d_18/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_5/masked_conv2d_16/Mul/ReadVariableOp1^sequential_5/masked_conv2d_16/add/ReadVariableOp1^sequential_5/masked_conv2d_17/Mul/ReadVariableOp1^sequential_5/masked_conv2d_17/add/ReadVariableOp1^sequential_5/masked_conv2d_18/Mul/ReadVariableOp1^sequential_5/masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_5/masked_conv2d_16/Mul/ReadVariableOp0sequential_5/masked_conv2d_16/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_16/add/ReadVariableOp0sequential_5/masked_conv2d_16/add/ReadVariableOp2d
0sequential_5/masked_conv2d_17/Mul/ReadVariableOp0sequential_5/masked_conv2d_17/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_17/add/ReadVariableOp0sequential_5/masked_conv2d_17/add/ReadVariableOp2d
0sequential_5/masked_conv2d_18/Mul/ReadVariableOp0sequential_5/masked_conv2d_18/Mul/ReadVariableOp2d
0sequential_5/masked_conv2d_18/add/ReadVariableOp0sequential_5/masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_5_layer_call_fn_43052

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_388142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_43304

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_20_layer_call_fn_43637

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_389312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
0__inference_residual_block_4_layer_call_fn_42215

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_397002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_38294

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
*__inference_sequential_layer_call_fn_42565

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_377472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_38071

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42348

inputs=
9sequential_6_masked_conv2d_19_mul_readvariableop_resource'
#sequential_6_masked_conv2d_19_mul_y=
9sequential_6_masked_conv2d_19_add_readvariableop_resource=
9sequential_6_masked_conv2d_20_mul_readvariableop_resource'
#sequential_6_masked_conv2d_20_mul_y=
9sequential_6_masked_conv2d_20_add_readvariableop_resource=
9sequential_6_masked_conv2d_21_mul_readvariableop_resource'
#sequential_6_masked_conv2d_21_mul_y=
9sequential_6_masked_conv2d_21_add_readvariableop_resource
identity��0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�0sequential_6/masked_conv2d_19/add/ReadVariableOp�0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�0sequential_6/masked_conv2d_20/add/ReadVariableOp�0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�0sequential_6/masked_conv2d_21/add/ReadVariableOp�
0sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_19/MulMul8sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_6/masked_conv2d_19/Mul�
$sequential_6/masked_conv2d_19/Conv2DConv2Dinputs%sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_19/Conv2D�
0sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_19/add/ReadVariableOp�
!sequential_6/masked_conv2d_19/addAddV2-sequential_6/masked_conv2d_19/Conv2D:output:08sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_19/add�
0sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_20/MulMul8sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_6/masked_conv2d_20/Mul�
$sequential_6/masked_conv2d_20/Conv2DConv2D%sequential_6/masked_conv2d_19/add:z:0%sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_20/Conv2D�
0sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_20/add/ReadVariableOp�
!sequential_6/masked_conv2d_20/addAddV2-sequential_6/masked_conv2d_20/Conv2D:output:08sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_20/add�
0sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_21/MulMul8sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_6/masked_conv2d_21/Mul�
$sequential_6/masked_conv2d_21/Conv2DConv2D%sequential_6/masked_conv2d_20/add:z:0%sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_21/Conv2D�
0sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_6/masked_conv2d_21/add/ReadVariableOp�
!sequential_6/masked_conv2d_21/addAddV2-sequential_6/masked_conv2d_21/Conv2D:output:08sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_6/masked_conv2d_21/add}
addAddV2%sequential_6/masked_conv2d_21/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_6/masked_conv2d_19/Mul/ReadVariableOp1^sequential_6/masked_conv2d_19/add/ReadVariableOp1^sequential_6/masked_conv2d_20/Mul/ReadVariableOp1^sequential_6/masked_conv2d_20/add/ReadVariableOp1^sequential_6/masked_conv2d_21/Mul/ReadVariableOp1^sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp0sequential_6/masked_conv2d_19/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_19/add/ReadVariableOp0sequential_6/masked_conv2d_19/add/ReadVariableOp2d
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp0sequential_6/masked_conv2d_20/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_20/add/ReadVariableOp0sequential_6/masked_conv2d_20/add/ReadVariableOp2d
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp0sequential_6/masked_conv2d_21/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_21/add/ReadVariableOp0sequential_6/masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�#
�	
(__inference_PixelCnn_layer_call_fn_41527

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_PixelCnn_layer_call_and_return_conditional_losses_403832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�,
�
I__inference_residual_block_layer_call_and_return_conditional_losses_41753

inputs:
6sequential_masked_conv2d_1_mul_readvariableop_resource$
 sequential_masked_conv2d_1_mul_y:
6sequential_masked_conv2d_1_add_readvariableop_resource:
6sequential_masked_conv2d_2_mul_readvariableop_resource$
 sequential_masked_conv2d_2_mul_y:
6sequential_masked_conv2d_2_add_readvariableop_resource:
6sequential_masked_conv2d_3_mul_readvariableop_resource$
 sequential_masked_conv2d_3_mul_y:
6sequential_masked_conv2d_3_add_readvariableop_resource
identity��-sequential/masked_conv2d_1/Mul/ReadVariableOp�-sequential/masked_conv2d_1/add/ReadVariableOp�-sequential/masked_conv2d_2/Mul/ReadVariableOp�-sequential/masked_conv2d_2/add/ReadVariableOp�-sequential/masked_conv2d_3/Mul/ReadVariableOp�-sequential/masked_conv2d_3/add/ReadVariableOp�
-sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02/
-sequential/masked_conv2d_1/Mul/ReadVariableOp�
sequential/masked_conv2d_1/MulMul5sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2 
sequential/masked_conv2d_1/Mul�
!sequential/masked_conv2d_1/Conv2DConv2Dinputs"sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_1/Conv2D�
-sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_1/add/ReadVariableOp�
sequential/masked_conv2d_1/addAddV2*sequential/masked_conv2d_1/Conv2D:output:05sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_1/add�
-sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential/masked_conv2d_2/Mul/ReadVariableOp�
sequential/masked_conv2d_2/MulMul5sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2 
sequential/masked_conv2d_2/Mul�
!sequential/masked_conv2d_2/Conv2DConv2D"sequential/masked_conv2d_1/add:z:0"sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_2/Conv2D�
-sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_2/add/ReadVariableOp�
sequential/masked_conv2d_2/addAddV2*sequential/masked_conv2d_2/Conv2D:output:05sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_2/add�
-sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02/
-sequential/masked_conv2d_3/Mul/ReadVariableOp�
sequential/masked_conv2d_3/MulMul5sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2 
sequential/masked_conv2d_3/Mul�
!sequential/masked_conv2d_3/Conv2DConv2D"sequential/masked_conv2d_2/add:z:0"sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2#
!sequential/masked_conv2d_3/Conv2D�
-sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential/masked_conv2d_3/add/ReadVariableOp�
sequential/masked_conv2d_3/addAddV2*sequential/masked_conv2d_3/Conv2D:output:05sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential/masked_conv2d_3/addz
addAddV2"sequential/masked_conv2d_3/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0.^sequential/masked_conv2d_1/Mul/ReadVariableOp.^sequential/masked_conv2d_1/add/ReadVariableOp.^sequential/masked_conv2d_2/Mul/ReadVariableOp.^sequential/masked_conv2d_2/add/ReadVariableOp.^sequential/masked_conv2d_3/Mul/ReadVariableOp.^sequential/masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2^
-sequential/masked_conv2d_1/Mul/ReadVariableOp-sequential/masked_conv2d_1/Mul/ReadVariableOp2^
-sequential/masked_conv2d_1/add/ReadVariableOp-sequential/masked_conv2d_1/add/ReadVariableOp2^
-sequential/masked_conv2d_2/Mul/ReadVariableOp-sequential/masked_conv2d_2/Mul/ReadVariableOp2^
-sequential/masked_conv2d_2/add/ReadVariableOp-sequential/masked_conv2d_2/add/ReadVariableOp2^
-sequential/masked_conv2d_3/Mul/ReadVariableOp-sequential/masked_conv2d_3/Mul/ReadVariableOp2^
-sequential/masked_conv2d_3/add/ReadVariableOp-sequential/masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�%
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_43029

inputs0
,masked_conv2d_16_mul_readvariableop_resource
masked_conv2d_16_mul_y0
,masked_conv2d_16_add_readvariableop_resource0
,masked_conv2d_17_mul_readvariableop_resource
masked_conv2d_17_mul_y0
,masked_conv2d_17_add_readvariableop_resource0
,masked_conv2d_18_mul_readvariableop_resource
masked_conv2d_18_mul_y0
,masked_conv2d_18_add_readvariableop_resource
identity��#masked_conv2d_16/Mul/ReadVariableOp�#masked_conv2d_16/add/ReadVariableOp�#masked_conv2d_17/Mul/ReadVariableOp�#masked_conv2d_17/add/ReadVariableOp�#masked_conv2d_18/Mul/ReadVariableOp�#masked_conv2d_18/add/ReadVariableOp�
#masked_conv2d_16/Mul/ReadVariableOpReadVariableOp,masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_16/Mul/ReadVariableOp�
masked_conv2d_16/MulMul+masked_conv2d_16/Mul/ReadVariableOp:value:0masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_16/Mul�
masked_conv2d_16/Conv2DConv2Dinputsmasked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_16/Conv2D�
#masked_conv2d_16/add/ReadVariableOpReadVariableOp,masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_16/add/ReadVariableOp�
masked_conv2d_16/addAddV2 masked_conv2d_16/Conv2D:output:0+masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_16/add�
#masked_conv2d_17/Mul/ReadVariableOpReadVariableOp,masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_17/Mul/ReadVariableOp�
masked_conv2d_17/MulMul+masked_conv2d_17/Mul/ReadVariableOp:value:0masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_17/Mul�
masked_conv2d_17/Conv2DConv2Dmasked_conv2d_16/add:z:0masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_17/Conv2D�
#masked_conv2d_17/add/ReadVariableOpReadVariableOp,masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_17/add/ReadVariableOp�
masked_conv2d_17/addAddV2 masked_conv2d_17/Conv2D:output:0+masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_17/add�
#masked_conv2d_18/Mul/ReadVariableOpReadVariableOp,masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_18/Mul/ReadVariableOp�
masked_conv2d_18/MulMul+masked_conv2d_18/Mul/ReadVariableOp:value:0masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_18/Mul�
masked_conv2d_18/Conv2DConv2Dmasked_conv2d_17/add:z:0masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_18/Conv2D�
#masked_conv2d_18/add/ReadVariableOpReadVariableOp,masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_18/add/ReadVariableOp�
masked_conv2d_18/addAddV2 masked_conv2d_18/Conv2D:output:0+masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_18/add�
IdentityIdentitymasked_conv2d_18/add:z:0$^masked_conv2d_16/Mul/ReadVariableOp$^masked_conv2d_16/add/ReadVariableOp$^masked_conv2d_17/Mul/ReadVariableOp$^masked_conv2d_17/add/ReadVariableOp$^masked_conv2d_18/Mul/ReadVariableOp$^masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_16/Mul/ReadVariableOp#masked_conv2d_16/Mul/ReadVariableOp2J
#masked_conv2d_16/add/ReadVariableOp#masked_conv2d_16/add/ReadVariableOp2J
#masked_conv2d_17/Mul/ReadVariableOp#masked_conv2d_17/Mul/ReadVariableOp2J
#masked_conv2d_17/add/ReadVariableOp#masked_conv2d_17/add/ReadVariableOp2J
#masked_conv2d_18/Mul/ReadVariableOp#masked_conv2d_18/Mul/ReadVariableOp2J
#masked_conv2d_18/add/ReadVariableOp#masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�%
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_43001

inputs0
,masked_conv2d_16_mul_readvariableop_resource
masked_conv2d_16_mul_y0
,masked_conv2d_16_add_readvariableop_resource0
,masked_conv2d_17_mul_readvariableop_resource
masked_conv2d_17_mul_y0
,masked_conv2d_17_add_readvariableop_resource0
,masked_conv2d_18_mul_readvariableop_resource
masked_conv2d_18_mul_y0
,masked_conv2d_18_add_readvariableop_resource
identity��#masked_conv2d_16/Mul/ReadVariableOp�#masked_conv2d_16/add/ReadVariableOp�#masked_conv2d_17/Mul/ReadVariableOp�#masked_conv2d_17/add/ReadVariableOp�#masked_conv2d_18/Mul/ReadVariableOp�#masked_conv2d_18/add/ReadVariableOp�
#masked_conv2d_16/Mul/ReadVariableOpReadVariableOp,masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_16/Mul/ReadVariableOp�
masked_conv2d_16/MulMul+masked_conv2d_16/Mul/ReadVariableOp:value:0masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_16/Mul�
masked_conv2d_16/Conv2DConv2Dinputsmasked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_16/Conv2D�
#masked_conv2d_16/add/ReadVariableOpReadVariableOp,masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_16/add/ReadVariableOp�
masked_conv2d_16/addAddV2 masked_conv2d_16/Conv2D:output:0+masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_16/add�
#masked_conv2d_17/Mul/ReadVariableOpReadVariableOp,masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_17/Mul/ReadVariableOp�
masked_conv2d_17/MulMul+masked_conv2d_17/Mul/ReadVariableOp:value:0masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_17/Mul�
masked_conv2d_17/Conv2DConv2Dmasked_conv2d_16/add:z:0masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_17/Conv2D�
#masked_conv2d_17/add/ReadVariableOpReadVariableOp,masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_17/add/ReadVariableOp�
masked_conv2d_17/addAddV2 masked_conv2d_17/Conv2D:output:0+masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_17/add�
#masked_conv2d_18/Mul/ReadVariableOpReadVariableOp,masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_18/Mul/ReadVariableOp�
masked_conv2d_18/MulMul+masked_conv2d_18/Mul/ReadVariableOp:value:0masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_18/Mul�
masked_conv2d_18/Conv2DConv2Dmasked_conv2d_17/add:z:0masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_18/Conv2D�
#masked_conv2d_18/add/ReadVariableOpReadVariableOp,masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_18/add/ReadVariableOp�
masked_conv2d_18/addAddV2 masked_conv2d_18/Conv2D:output:0+masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_18/add�
IdentityIdentitymasked_conv2d_18/add:z:0$^masked_conv2d_16/Mul/ReadVariableOp$^masked_conv2d_16/add/ReadVariableOp$^masked_conv2d_17/Mul/ReadVariableOp$^masked_conv2d_17/add/ReadVariableOp$^masked_conv2d_18/Mul/ReadVariableOp$^masked_conv2d_18/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_16/Mul/ReadVariableOp#masked_conv2d_16/Mul/ReadVariableOp2J
#masked_conv2d_16/add/ReadVariableOp#masked_conv2d_16/add/ReadVariableOp2J
#masked_conv2d_17/Mul/ReadVariableOp#masked_conv2d_17/Mul/ReadVariableOp2J
#masked_conv2d_17/add/ReadVariableOp#masked_conv2d_17/add/ReadVariableOp2J
#masked_conv2d_18/Mul/ReadVariableOp#masked_conv2d_18/Mul/ReadVariableOp2J
#masked_conv2d_18/add/ReadVariableOp#masked_conv2d_18/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_37593

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�%
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_42899

inputs0
,masked_conv2d_13_mul_readvariableop_resource
masked_conv2d_13_mul_y0
,masked_conv2d_13_add_readvariableop_resource0
,masked_conv2d_14_mul_readvariableop_resource
masked_conv2d_14_mul_y0
,masked_conv2d_14_add_readvariableop_resource0
,masked_conv2d_15_mul_readvariableop_resource
masked_conv2d_15_mul_y0
,masked_conv2d_15_add_readvariableop_resource
identity��#masked_conv2d_13/Mul/ReadVariableOp�#masked_conv2d_13/add/ReadVariableOp�#masked_conv2d_14/Mul/ReadVariableOp�#masked_conv2d_14/add/ReadVariableOp�#masked_conv2d_15/Mul/ReadVariableOp�#masked_conv2d_15/add/ReadVariableOp�
#masked_conv2d_13/Mul/ReadVariableOpReadVariableOp,masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_13/Mul/ReadVariableOp�
masked_conv2d_13/MulMul+masked_conv2d_13/Mul/ReadVariableOp:value:0masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_13/Mul�
masked_conv2d_13/Conv2DConv2Dinputsmasked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_13/Conv2D�
#masked_conv2d_13/add/ReadVariableOpReadVariableOp,masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_13/add/ReadVariableOp�
masked_conv2d_13/addAddV2 masked_conv2d_13/Conv2D:output:0+masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_13/add�
#masked_conv2d_14/Mul/ReadVariableOpReadVariableOp,masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_14/Mul/ReadVariableOp�
masked_conv2d_14/MulMul+masked_conv2d_14/Mul/ReadVariableOp:value:0masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_14/Mul�
masked_conv2d_14/Conv2DConv2Dmasked_conv2d_13/add:z:0masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_14/Conv2D�
#masked_conv2d_14/add/ReadVariableOpReadVariableOp,masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_14/add/ReadVariableOp�
masked_conv2d_14/addAddV2 masked_conv2d_14/Conv2D:output:0+masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_14/add�
#masked_conv2d_15/Mul/ReadVariableOpReadVariableOp,masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_15/Mul/ReadVariableOp�
masked_conv2d_15/MulMul+masked_conv2d_15/Mul/ReadVariableOp:value:0masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_15/Mul�
masked_conv2d_15/Conv2DConv2Dmasked_conv2d_14/add:z:0masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_15/Conv2D�
#masked_conv2d_15/add/ReadVariableOpReadVariableOp,masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_15/add/ReadVariableOp�
masked_conv2d_15/addAddV2 masked_conv2d_15/Conv2D:output:0+masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_15/add�
IdentityIdentitymasked_conv2d_15/add:z:0$^masked_conv2d_13/Mul/ReadVariableOp$^masked_conv2d_13/add/ReadVariableOp$^masked_conv2d_14/Mul/ReadVariableOp$^masked_conv2d_14/add/ReadVariableOp$^masked_conv2d_15/Mul/ReadVariableOp$^masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_13/Mul/ReadVariableOp#masked_conv2d_13/Mul/ReadVariableOp2J
#masked_conv2d_13/add/ReadVariableOp#masked_conv2d_13/add/ReadVariableOp2J
#masked_conv2d_14/Mul/ReadVariableOp#masked_conv2d_14/Mul/ReadVariableOp2J
#masked_conv2d_14/add/ReadVariableOp#masked_conv2d_14/add/ReadVariableOp2J
#masked_conv2d_15/Mul/ReadVariableOp#masked_conv2d_15/Mul/ReadVariableOp2J
#masked_conv2d_15/add/ReadVariableOp#masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_6_layer_call_and_return_conditional_losses_39921

inputs=
9sequential_6_masked_conv2d_19_mul_readvariableop_resource'
#sequential_6_masked_conv2d_19_mul_y=
9sequential_6_masked_conv2d_19_add_readvariableop_resource=
9sequential_6_masked_conv2d_20_mul_readvariableop_resource'
#sequential_6_masked_conv2d_20_mul_y=
9sequential_6_masked_conv2d_20_add_readvariableop_resource=
9sequential_6_masked_conv2d_21_mul_readvariableop_resource'
#sequential_6_masked_conv2d_21_mul_y=
9sequential_6_masked_conv2d_21_add_readvariableop_resource
identity��0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�0sequential_6/masked_conv2d_19/add/ReadVariableOp�0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�0sequential_6/masked_conv2d_20/add/ReadVariableOp�0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�0sequential_6/masked_conv2d_21/add/ReadVariableOp�
0sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_19/MulMul8sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_6/masked_conv2d_19/Mul�
$sequential_6/masked_conv2d_19/Conv2DConv2Dinputs%sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_19/Conv2D�
0sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_19/add/ReadVariableOp�
!sequential_6/masked_conv2d_19/addAddV2-sequential_6/masked_conv2d_19/Conv2D:output:08sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_19/add�
0sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_20/MulMul8sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_6/masked_conv2d_20/Mul�
$sequential_6/masked_conv2d_20/Conv2DConv2D%sequential_6/masked_conv2d_19/add:z:0%sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_20/Conv2D�
0sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_20/add/ReadVariableOp�
!sequential_6/masked_conv2d_20/addAddV2-sequential_6/masked_conv2d_20/Conv2D:output:08sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_20/add�
0sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_21/MulMul8sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_6/masked_conv2d_21/Mul�
$sequential_6/masked_conv2d_21/Conv2DConv2D%sequential_6/masked_conv2d_20/add:z:0%sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_21/Conv2D�
0sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_6/masked_conv2d_21/add/ReadVariableOp�
!sequential_6/masked_conv2d_21/addAddV2-sequential_6/masked_conv2d_21/Conv2D:output:08sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_6/masked_conv2d_21/add}
addAddV2%sequential_6/masked_conv2d_21/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_6/masked_conv2d_19/Mul/ReadVariableOp1^sequential_6/masked_conv2d_19/add/ReadVariableOp1^sequential_6/masked_conv2d_20/Mul/ReadVariableOp1^sequential_6/masked_conv2d_20/add/ReadVariableOp1^sequential_6/masked_conv2d_21/Mul/ReadVariableOp1^sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp0sequential_6/masked_conv2d_19/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_19/add/ReadVariableOp0sequential_6/masked_conv2d_19/add/ReadVariableOp2d
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp0sequential_6/masked_conv2d_20/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_20/add/ReadVariableOp0sequential_6/masked_conv2d_20/add/ReadVariableOp2d
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp0sequential_6/masked_conv2d_21/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_21/add/ReadVariableOp0sequential_6/masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�Z
�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40226
input_1
masked_conv2d_40075
masked_conv2d_40077
masked_conv2d_40079
residual_block_40082
residual_block_40084
residual_block_40086
residual_block_40088
residual_block_40090
residual_block_40092
residual_block_40094
residual_block_40096
residual_block_40098
residual_block_1_40101
residual_block_1_40103
residual_block_1_40105
residual_block_1_40107
residual_block_1_40109
residual_block_1_40111
residual_block_1_40113
residual_block_1_40115
residual_block_1_40117
residual_block_2_40120
residual_block_2_40122
residual_block_2_40124
residual_block_2_40126
residual_block_2_40128
residual_block_2_40130
residual_block_2_40132
residual_block_2_40134
residual_block_2_40136
residual_block_3_40139
residual_block_3_40141
residual_block_3_40143
residual_block_3_40145
residual_block_3_40147
residual_block_3_40149
residual_block_3_40151
residual_block_3_40153
residual_block_3_40155
residual_block_4_40158
residual_block_4_40160
residual_block_4_40162
residual_block_4_40164
residual_block_4_40166
residual_block_4_40168
residual_block_4_40170
residual_block_4_40172
residual_block_4_40174
residual_block_5_40177
residual_block_5_40179
residual_block_5_40181
residual_block_5_40183
residual_block_5_40185
residual_block_5_40187
residual_block_5_40189
residual_block_5_40191
residual_block_5_40193
residual_block_6_40196
residual_block_6_40198
residual_block_6_40200
residual_block_6_40202
residual_block_6_40204
residual_block_6_40206
residual_block_6_40208
residual_block_6_40210
residual_block_6_40212
conv2d_40215
conv2d_40217
conv2d_1_40220
conv2d_1_40222
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�%masked_conv2d/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�(residual_block_1/StatefulPartitionedCall�(residual_block_2/StatefulPartitionedCall�(residual_block_3/StatefulPartitionedCall�(residual_block_4/StatefulPartitionedCall�(residual_block_5/StatefulPartitionedCall�(residual_block_6/StatefulPartitionedCall�
%masked_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1masked_conv2d_40075masked_conv2d_40077masked_conv2d_40079*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_391222'
%masked_conv2d/StatefulPartitionedCall�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall.masked_conv2d/StatefulPartitionedCall:output:0residual_block_40082residual_block_40084residual_block_40086residual_block_40088residual_block_40090residual_block_40092residual_block_40094residual_block_40096residual_block_40098*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_392002(
&residual_block/StatefulPartitionedCall�
(residual_block_1/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0residual_block_1_40101residual_block_1_40103residual_block_1_40105residual_block_1_40107residual_block_1_40109residual_block_1_40111residual_block_1_40113residual_block_1_40115residual_block_1_40117*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_393252*
(residual_block_1/StatefulPartitionedCall�
(residual_block_2/StatefulPartitionedCallStatefulPartitionedCall1residual_block_1/StatefulPartitionedCall:output:0residual_block_2_40120residual_block_2_40122residual_block_2_40124residual_block_2_40126residual_block_2_40128residual_block_2_40130residual_block_2_40132residual_block_2_40134residual_block_2_40136*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394502*
(residual_block_2/StatefulPartitionedCall�
(residual_block_3/StatefulPartitionedCallStatefulPartitionedCall1residual_block_2/StatefulPartitionedCall:output:0residual_block_3_40139residual_block_3_40141residual_block_3_40143residual_block_3_40145residual_block_3_40147residual_block_3_40149residual_block_3_40151residual_block_3_40153residual_block_3_40155*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395752*
(residual_block_3/StatefulPartitionedCall�
(residual_block_4/StatefulPartitionedCallStatefulPartitionedCall1residual_block_3/StatefulPartitionedCall:output:0residual_block_4_40158residual_block_4_40160residual_block_4_40162residual_block_4_40164residual_block_4_40166residual_block_4_40168residual_block_4_40170residual_block_4_40172residual_block_4_40174*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_397002*
(residual_block_4/StatefulPartitionedCall�
(residual_block_5/StatefulPartitionedCallStatefulPartitionedCall1residual_block_4/StatefulPartitionedCall:output:0residual_block_5_40177residual_block_5_40179residual_block_5_40181residual_block_5_40183residual_block_5_40185residual_block_5_40187residual_block_5_40189residual_block_5_40191residual_block_5_40193*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_398252*
(residual_block_5/StatefulPartitionedCall�
(residual_block_6/StatefulPartitionedCallStatefulPartitionedCall1residual_block_5/StatefulPartitionedCall:output:0residual_block_6_40196residual_block_6_40198residual_block_6_40200residual_block_6_40202residual_block_6_40204residual_block_6_40206residual_block_6_40208residual_block_6_40210residual_block_6_40212*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399502*
(residual_block_6/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1residual_block_6/StatefulPartitionedCall:output:0conv2d_40215conv2d_40217*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_400282 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_40220conv2d_1_40222*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_400552"
 conv2d_1/StatefulPartitionedCall�
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall&^masked_conv2d/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall)^residual_block_1/StatefulPartitionedCall)^residual_block_2/StatefulPartitionedCall)^residual_block_3/StatefulPartitionedCall)^residual_block_4/StatefulPartitionedCall)^residual_block_5/StatefulPartitionedCall)^residual_block_6/StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2N
%masked_conv2d/StatefulPartitionedCall%masked_conv2d/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall2T
(residual_block_1/StatefulPartitionedCall(residual_block_1/StatefulPartitionedCall2T
(residual_block_2/StatefulPartitionedCall(residual_block_2/StatefulPartitionedCall2T
(residual_block_3/StatefulPartitionedCall(residual_block_3/StatefulPartitionedCall2T
(residual_block_4/StatefulPartitionedCall(residual_block_4/StatefulPartitionedCall2T
(residual_block_5/StatefulPartitionedCall(residual_block_5/StatefulPartitionedCall2T
(residual_block_6/StatefulPartitionedCall(residual_block_6/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
,__inference_sequential_1_layer_call_fn_42644

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_379222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_4_layer_call_fn_43269

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_377842
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_37816

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
0__inference_residual_block_2_layer_call_fn_41984

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_43258

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_2_layer_call_fn_38166
masked_conv2d_7_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_381452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_7_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_37699

inputs
masked_conv2d_1_37677
masked_conv2d_1_37679
masked_conv2d_1_37681
masked_conv2d_2_37684
masked_conv2d_2_37686
masked_conv2d_2_37688
masked_conv2d_3_37691
masked_conv2d_3_37693
masked_conv2d_3_37695
identity��'masked_conv2d_1/StatefulPartitionedCall�'masked_conv2d_2/StatefulPartitionedCall�'masked_conv2d_3/StatefulPartitionedCall�
'masked_conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_1_37677masked_conv2d_1_37679masked_conv2d_1_37681*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_375612)
'masked_conv2d_1/StatefulPartitionedCall�
'masked_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_1/StatefulPartitionedCall:output:0masked_conv2d_2_37684masked_conv2d_2_37686masked_conv2d_2_37688*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_375932)
'masked_conv2d_2/StatefulPartitionedCall�
'masked_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_2/StatefulPartitionedCall:output:0masked_conv2d_3_37691masked_conv2d_3_37693masked_conv2d_3_37695*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_376252)
'masked_conv2d_3/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_3/StatefulPartitionedCall:output:0(^masked_conv2d_1/StatefulPartitionedCall(^masked_conv2d_2/StatefulPartitionedCall(^masked_conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_1/StatefulPartitionedCall'masked_conv2d_1/StatefulPartitionedCall2R
'masked_conv2d_2/StatefulPartitionedCall'masked_conv2d_2/StatefulPartitionedCall2R
'masked_conv2d_3/StatefulPartitionedCall'masked_conv2d_3/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_37561

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41961

inputs<
8sequential_2_masked_conv2d_7_mul_readvariableop_resource&
"sequential_2_masked_conv2d_7_mul_y<
8sequential_2_masked_conv2d_7_add_readvariableop_resource<
8sequential_2_masked_conv2d_8_mul_readvariableop_resource&
"sequential_2_masked_conv2d_8_mul_y<
8sequential_2_masked_conv2d_8_add_readvariableop_resource<
8sequential_2_masked_conv2d_9_mul_readvariableop_resource&
"sequential_2_masked_conv2d_9_mul_y<
8sequential_2_masked_conv2d_9_add_readvariableop_resource
identity��/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�/sequential_2/masked_conv2d_7/add/ReadVariableOp�/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�/sequential_2/masked_conv2d_8/add/ReadVariableOp�/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�/sequential_2/masked_conv2d_9/add/ReadVariableOp�
/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_7/MulMul7sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_2/masked_conv2d_7/Mul�
#sequential_2/masked_conv2d_7/Conv2DConv2Dinputs$sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_7/Conv2D�
/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_7/add/ReadVariableOp�
 sequential_2/masked_conv2d_7/addAddV2,sequential_2/masked_conv2d_7/Conv2D:output:07sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_7/add�
/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_8/MulMul7sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_2/masked_conv2d_8/Mul�
#sequential_2/masked_conv2d_8/Conv2DConv2D$sequential_2/masked_conv2d_7/add:z:0$sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_8/Conv2D�
/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_8/add/ReadVariableOp�
 sequential_2/masked_conv2d_8/addAddV2,sequential_2/masked_conv2d_8/Conv2D:output:07sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_8/add�
/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_9/MulMul7sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_2/masked_conv2d_9/Mul�
#sequential_2/masked_conv2d_9/Conv2DConv2D$sequential_2/masked_conv2d_8/add:z:0$sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_9/Conv2D�
/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_2/masked_conv2d_9/add/ReadVariableOp�
 sequential_2/masked_conv2d_9/addAddV2,sequential_2/masked_conv2d_9/Conv2D:output:07sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_2/masked_conv2d_9/add|
addAddV2$sequential_2/masked_conv2d_9/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_2/masked_conv2d_7/Mul/ReadVariableOp0^sequential_2/masked_conv2d_7/add/ReadVariableOp0^sequential_2/masked_conv2d_8/Mul/ReadVariableOp0^sequential_2/masked_conv2d_8/add/ReadVariableOp0^sequential_2/masked_conv2d_9/Mul/ReadVariableOp0^sequential_2/masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_7/add/ReadVariableOp/sequential_2/masked_conv2d_7/add/ReadVariableOp2b
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_8/add/ReadVariableOp/sequential_2/masked_conv2d_8/add/ReadVariableOp2b
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_9/add/ReadVariableOp/sequential_2/masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_9_layer_call_fn_43384

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_380712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_37922

inputs
masked_conv2d_4_37900
masked_conv2d_4_37902
masked_conv2d_4_37904
masked_conv2d_5_37907
masked_conv2d_5_37909
masked_conv2d_5_37911
masked_conv2d_6_37914
masked_conv2d_6_37916
masked_conv2d_6_37918
identity��'masked_conv2d_4/StatefulPartitionedCall�'masked_conv2d_5/StatefulPartitionedCall�'masked_conv2d_6/StatefulPartitionedCall�
'masked_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_4_37900masked_conv2d_4_37902masked_conv2d_4_37904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_377842)
'masked_conv2d_4/StatefulPartitionedCall�
'masked_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_4/StatefulPartitionedCall:output:0masked_conv2d_5_37907masked_conv2d_5_37909masked_conv2d_5_37911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_378162)
'masked_conv2d_5/StatefulPartitionedCall�
'masked_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_5/StatefulPartitionedCall:output:0masked_conv2d_6_37914masked_conv2d_6_37916masked_conv2d_6_37918*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_378482)
'masked_conv2d_6/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_6/StatefulPartitionedCall:output:0(^masked_conv2d_4/StatefulPartitionedCall(^masked_conv2d_5/StatefulPartitionedCall(^masked_conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_4/StatefulPartitionedCall'masked_conv2d_4/StatefulPartitionedCall2R
'masked_conv2d_5/StatefulPartitionedCall'masked_conv2d_5/StatefulPartitionedCall2R
'masked_conv2d_6/StatefulPartitionedCall'masked_conv2d_6/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_37894
masked_conv2d_4_input
masked_conv2d_4_37872
masked_conv2d_4_37874
masked_conv2d_4_37876
masked_conv2d_5_37879
masked_conv2d_5_37881
masked_conv2d_5_37883
masked_conv2d_6_37886
masked_conv2d_6_37888
masked_conv2d_6_37890
identity��'masked_conv2d_4/StatefulPartitionedCall�'masked_conv2d_5/StatefulPartitionedCall�'masked_conv2d_6/StatefulPartitionedCall�
'masked_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_4_inputmasked_conv2d_4_37872masked_conv2d_4_37874masked_conv2d_4_37876*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_377842)
'masked_conv2d_4/StatefulPartitionedCall�
'masked_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_4/StatefulPartitionedCall:output:0masked_conv2d_5_37879masked_conv2d_5_37881masked_conv2d_5_37883*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_378162)
'masked_conv2d_5/StatefulPartitionedCall�
'masked_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_5/StatefulPartitionedCall:output:0masked_conv2d_6_37886masked_conv2d_6_37888masked_conv2d_6_37890*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_378482)
'masked_conv2d_6/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_6/StatefulPartitionedCall:output:0(^masked_conv2d_4/StatefulPartitionedCall(^masked_conv2d_5/StatefulPartitionedCall(^masked_conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_4/StatefulPartitionedCall'masked_conv2d_4/StatefulPartitionedCall2R
'masked_conv2d_5/StatefulPartitionedCall'masked_conv2d_5/StatefulPartitionedCall2R
'masked_conv2d_6/StatefulPartitionedCall'masked_conv2d_6/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_4_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�,
�
I__inference_residual_block_layer_call_and_return_conditional_losses_41724

inputs:
6sequential_masked_conv2d_1_mul_readvariableop_resource$
 sequential_masked_conv2d_1_mul_y:
6sequential_masked_conv2d_1_add_readvariableop_resource:
6sequential_masked_conv2d_2_mul_readvariableop_resource$
 sequential_masked_conv2d_2_mul_y:
6sequential_masked_conv2d_2_add_readvariableop_resource:
6sequential_masked_conv2d_3_mul_readvariableop_resource$
 sequential_masked_conv2d_3_mul_y:
6sequential_masked_conv2d_3_add_readvariableop_resource
identity��-sequential/masked_conv2d_1/Mul/ReadVariableOp�-sequential/masked_conv2d_1/add/ReadVariableOp�-sequential/masked_conv2d_2/Mul/ReadVariableOp�-sequential/masked_conv2d_2/add/ReadVariableOp�-sequential/masked_conv2d_3/Mul/ReadVariableOp�-sequential/masked_conv2d_3/add/ReadVariableOp�
-sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02/
-sequential/masked_conv2d_1/Mul/ReadVariableOp�
sequential/masked_conv2d_1/MulMul5sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2 
sequential/masked_conv2d_1/Mul�
!sequential/masked_conv2d_1/Conv2DConv2Dinputs"sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_1/Conv2D�
-sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_1/add/ReadVariableOp�
sequential/masked_conv2d_1/addAddV2*sequential/masked_conv2d_1/Conv2D:output:05sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_1/add�
-sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential/masked_conv2d_2/Mul/ReadVariableOp�
sequential/masked_conv2d_2/MulMul5sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2 
sequential/masked_conv2d_2/Mul�
!sequential/masked_conv2d_2/Conv2DConv2D"sequential/masked_conv2d_1/add:z:0"sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2#
!sequential/masked_conv2d_2/Conv2D�
-sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/masked_conv2d_2/add/ReadVariableOp�
sequential/masked_conv2d_2/addAddV2*sequential/masked_conv2d_2/Conv2D:output:05sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2 
sequential/masked_conv2d_2/add�
-sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02/
-sequential/masked_conv2d_3/Mul/ReadVariableOp�
sequential/masked_conv2d_3/MulMul5sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0 sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2 
sequential/masked_conv2d_3/Mul�
!sequential/masked_conv2d_3/Conv2DConv2D"sequential/masked_conv2d_2/add:z:0"sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2#
!sequential/masked_conv2d_3/Conv2D�
-sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOp6sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential/masked_conv2d_3/add/ReadVariableOp�
sequential/masked_conv2d_3/addAddV2*sequential/masked_conv2d_3/Conv2D:output:05sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential/masked_conv2d_3/addz
addAddV2"sequential/masked_conv2d_3/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0.^sequential/masked_conv2d_1/Mul/ReadVariableOp.^sequential/masked_conv2d_1/add/ReadVariableOp.^sequential/masked_conv2d_2/Mul/ReadVariableOp.^sequential/masked_conv2d_2/add/ReadVariableOp.^sequential/masked_conv2d_3/Mul/ReadVariableOp.^sequential/masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2^
-sequential/masked_conv2d_1/Mul/ReadVariableOp-sequential/masked_conv2d_1/Mul/ReadVariableOp2^
-sequential/masked_conv2d_1/add/ReadVariableOp-sequential/masked_conv2d_1/add/ReadVariableOp2^
-sequential/masked_conv2d_2/Mul/ReadVariableOp-sequential/masked_conv2d_2/Mul/ReadVariableOp2^
-sequential/masked_conv2d_2/add/ReadVariableOp-sequential/masked_conv2d_2/add/ReadVariableOp2^
-sequential/masked_conv2d_3/Mul/ReadVariableOp-sequential/masked_conv2d_3/Mul/ReadVariableOp2^
-sequential/masked_conv2d_3/add/ReadVariableOp-sequential/masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_37848

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_4_layer_call_fn_42950

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_385912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_1_layer_call_fn_37991
masked_conv2d_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_379702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_4_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_38708

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
��
�=
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41382

inputs-
)masked_conv2d_mul_readvariableop_resource
masked_conv2d_mul_y-
)masked_conv2d_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_1_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_1_mul_yI
Eresidual_block_sequential_masked_conv2d_1_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_2_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_2_mul_yI
Eresidual_block_sequential_masked_conv2d_2_add_readvariableop_resourceI
Eresidual_block_sequential_masked_conv2d_3_mul_readvariableop_resource3
/residual_block_sequential_masked_conv2d_3_mul_yI
Eresidual_block_sequential_masked_conv2d_3_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_4_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_5_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resourceM
Iresidual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource7
3residual_block_1_sequential_1_masked_conv2d_6_mul_yM
Iresidual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_7_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_8_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resourceM
Iresidual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource7
3residual_block_2_sequential_2_masked_conv2d_9_mul_yM
Iresidual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_10_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_11_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resourceN
Jresidual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resource8
4residual_block_3_sequential_3_masked_conv2d_12_mul_yN
Jresidual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_13_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_14_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resourceN
Jresidual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resource8
4residual_block_4_sequential_4_masked_conv2d_15_mul_yN
Jresidual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_16_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_17_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resourceN
Jresidual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resource8
4residual_block_5_sequential_5_masked_conv2d_18_mul_yN
Jresidual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_19_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_20_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resourceN
Jresidual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resource8
4residual_block_6_sequential_6_masked_conv2d_21_mul_yN
Jresidual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp� masked_conv2d/Mul/ReadVariableOp� masked_conv2d/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
 masked_conv2d/Mul/ReadVariableOpReadVariableOp)masked_conv2d_mul_readvariableop_resource*'
_output_shapes
:�*
dtype02"
 masked_conv2d/Mul/ReadVariableOp�
masked_conv2d/MulMul(masked_conv2d/Mul/ReadVariableOp:value:0masked_conv2d_mul_y*
T0*'
_output_shapes
:�2
masked_conv2d/Mul�
masked_conv2d/Conv2DConv2Dinputsmasked_conv2d/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d/Conv2D�
 masked_conv2d/add/ReadVariableOpReadVariableOp)masked_conv2d_add_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 masked_conv2d/add/ReadVariableOp�
masked_conv2d/addAddV2masked_conv2d/Conv2D:output:0(masked_conv2d/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d/add�
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02>
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_1/MulMulDresidual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2/
-residual_block/sequential/masked_conv2d_1/Mul�
0residual_block/sequential/masked_conv2d_1/Conv2DConv2Dmasked_conv2d/add:z:01residual_block/sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_1/Conv2D�
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02>
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_1/addAddV29residual_block/sequential/masked_conv2d_1/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2/
-residual_block/sequential/masked_conv2d_1/add�
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02>
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_2/MulMulDresidual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2/
-residual_block/sequential/masked_conv2d_2/Mul�
0residual_block/sequential/masked_conv2d_2/Conv2DConv2D1residual_block/sequential/masked_conv2d_1/add:z:01residual_block/sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_2/Conv2D�
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02>
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_2/addAddV29residual_block/sequential/masked_conv2d_2/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2/
-residual_block/sequential/masked_conv2d_2/add�
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02>
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�
-residual_block/sequential/masked_conv2d_3/MulMulDresidual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp:value:0/residual_block_sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2/
-residual_block/sequential/masked_conv2d_3/Mul�
0residual_block/sequential/masked_conv2d_3/Conv2DConv2D1residual_block/sequential/masked_conv2d_2/add:z:01residual_block/sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
22
0residual_block/sequential/masked_conv2d_3/Conv2D�
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOpEresidual_block_sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�
-residual_block/sequential/masked_conv2d_3/addAddV29residual_block/sequential/masked_conv2d_3/Conv2D:output:0Dresidual_block/sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2/
-residual_block/sequential/masked_conv2d_3/add�
residual_block/addAddV21residual_block/sequential/masked_conv2d_3/add:z:0masked_conv2d/add:z:0*
T0*0
_output_shapes
:����������2
residual_block/add�
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_4/MulMulHresidual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@23
1residual_block_1/sequential_1/masked_conv2d_4/Mul�
4residual_block_1/sequential_1/masked_conv2d_4/Conv2DConv2Dresidual_block/add:z:05residual_block_1/sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_4/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_4/addAddV2=residual_block_1/sequential_1/masked_conv2d_4/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_1/sequential_1/masked_conv2d_4/add�
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_5/MulMulHresidual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@23
1residual_block_1/sequential_1/masked_conv2d_5/Mul�
4residual_block_1/sequential_1/masked_conv2d_5/Conv2DConv2D5residual_block_1/sequential_1/masked_conv2d_4/add:z:05residual_block_1/sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_5/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_5/addAddV2=residual_block_1/sequential_1/masked_conv2d_5/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_1/sequential_1/masked_conv2d_5/add�
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_6/MulMulHresidual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:03residual_block_1_sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�23
1residual_block_1/sequential_1/masked_conv2d_6/Mul�
4residual_block_1/sequential_1/masked_conv2d_6/Conv2DConv2D5residual_block_1/sequential_1/masked_conv2d_5/add:z:05residual_block_1/sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
26
4residual_block_1/sequential_1/masked_conv2d_6/Conv2D�
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOpIresidual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype02B
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�
1residual_block_1/sequential_1/masked_conv2d_6/addAddV2=residual_block_1/sequential_1/masked_conv2d_6/Conv2D:output:0Hresidual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������23
1residual_block_1/sequential_1/masked_conv2d_6/add�
residual_block_1/addAddV25residual_block_1/sequential_1/masked_conv2d_6/add:z:0residual_block/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_1/add�
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_7/MulMulHresidual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@23
1residual_block_2/sequential_2/masked_conv2d_7/Mul�
4residual_block_2/sequential_2/masked_conv2d_7/Conv2DConv2Dresidual_block_1/add:z:05residual_block_2/sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_7/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_7/addAddV2=residual_block_2/sequential_2/masked_conv2d_7/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_2/sequential_2/masked_conv2d_7/add�
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_8/MulMulHresidual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@23
1residual_block_2/sequential_2/masked_conv2d_8/Mul�
4residual_block_2/sequential_2/masked_conv2d_8/Conv2DConv2D5residual_block_2/sequential_2/masked_conv2d_7/add:z:05residual_block_2/sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_8/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_8/addAddV2=residual_block_2/sequential_2/masked_conv2d_8/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@23
1residual_block_2/sequential_2/masked_conv2d_8/add�
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_9/MulMulHresidual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:03residual_block_2_sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�23
1residual_block_2/sequential_2/masked_conv2d_9/Mul�
4residual_block_2/sequential_2/masked_conv2d_9/Conv2DConv2D5residual_block_2/sequential_2/masked_conv2d_8/add:z:05residual_block_2/sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
26
4residual_block_2/sequential_2/masked_conv2d_9/Conv2D�
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOpIresidual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype02B
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�
1residual_block_2/sequential_2/masked_conv2d_9/addAddV2=residual_block_2/sequential_2/masked_conv2d_9/Conv2D:output:0Hresidual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������23
1residual_block_2/sequential_2/masked_conv2d_9/add�
residual_block_2/addAddV25residual_block_2/sequential_2/masked_conv2d_9/add:z:0residual_block_1/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_2/add�
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_10/MulMulIresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_3/sequential_3/masked_conv2d_10/Mul�
5residual_block_3/sequential_3/masked_conv2d_10/Conv2DConv2Dresidual_block_2/add:z:06residual_block_3/sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_10/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_10/addAddV2>residual_block_3/sequential_3/masked_conv2d_10/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_3/sequential_3/masked_conv2d_10/add�
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_11/MulMulIresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_3/sequential_3/masked_conv2d_11/Mul�
5residual_block_3/sequential_3/masked_conv2d_11/Conv2DConv2D6residual_block_3/sequential_3/masked_conv2d_10/add:z:06residual_block_3/sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_11/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_11/addAddV2>residual_block_3/sequential_3/masked_conv2d_11/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_3/sequential_3/masked_conv2d_11/add�
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_12/MulMulIresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:04residual_block_3_sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_3/sequential_3/masked_conv2d_12/Mul�
5residual_block_3/sequential_3/masked_conv2d_12/Conv2DConv2D6residual_block_3/sequential_3/masked_conv2d_11/add:z:06residual_block_3/sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_3/sequential_3/masked_conv2d_12/Conv2D�
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOpJresidual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�
2residual_block_3/sequential_3/masked_conv2d_12/addAddV2>residual_block_3/sequential_3/masked_conv2d_12/Conv2D:output:0Iresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_3/sequential_3/masked_conv2d_12/add�
residual_block_3/addAddV26residual_block_3/sequential_3/masked_conv2d_12/add:z:0residual_block_2/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_3/add�
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_13/MulMulIresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_4/sequential_4/masked_conv2d_13/Mul�
5residual_block_4/sequential_4/masked_conv2d_13/Conv2DConv2Dresidual_block_3/add:z:06residual_block_4/sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_13/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_13/addAddV2>residual_block_4/sequential_4/masked_conv2d_13/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_4/sequential_4/masked_conv2d_13/add�
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_14/MulMulIresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_4/sequential_4/masked_conv2d_14/Mul�
5residual_block_4/sequential_4/masked_conv2d_14/Conv2DConv2D6residual_block_4/sequential_4/masked_conv2d_13/add:z:06residual_block_4/sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_14/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_14/addAddV2>residual_block_4/sequential_4/masked_conv2d_14/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_4/sequential_4/masked_conv2d_14/add�
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_15/MulMulIresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:04residual_block_4_sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_4/sequential_4/masked_conv2d_15/Mul�
5residual_block_4/sequential_4/masked_conv2d_15/Conv2DConv2D6residual_block_4/sequential_4/masked_conv2d_14/add:z:06residual_block_4/sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_4/sequential_4/masked_conv2d_15/Conv2D�
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOpJresidual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�
2residual_block_4/sequential_4/masked_conv2d_15/addAddV2>residual_block_4/sequential_4/masked_conv2d_15/Conv2D:output:0Iresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_4/sequential_4/masked_conv2d_15/add�
residual_block_4/addAddV26residual_block_4/sequential_4/masked_conv2d_15/add:z:0residual_block_3/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_4/add�
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_16/MulMulIresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_5/sequential_5/masked_conv2d_16/Mul�
5residual_block_5/sequential_5/masked_conv2d_16/Conv2DConv2Dresidual_block_4/add:z:06residual_block_5/sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_16/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_16/addAddV2>residual_block_5/sequential_5/masked_conv2d_16/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_5/sequential_5/masked_conv2d_16/add�
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_17/MulMulIresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_5/sequential_5/masked_conv2d_17/Mul�
5residual_block_5/sequential_5/masked_conv2d_17/Conv2DConv2D6residual_block_5/sequential_5/masked_conv2d_16/add:z:06residual_block_5/sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_17/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_17/addAddV2>residual_block_5/sequential_5/masked_conv2d_17/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_5/sequential_5/masked_conv2d_17/add�
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_18/MulMulIresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:04residual_block_5_sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_5/sequential_5/masked_conv2d_18/Mul�
5residual_block_5/sequential_5/masked_conv2d_18/Conv2DConv2D6residual_block_5/sequential_5/masked_conv2d_17/add:z:06residual_block_5/sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_5/sequential_5/masked_conv2d_18/Conv2D�
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOpJresidual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�
2residual_block_5/sequential_5/masked_conv2d_18/addAddV2>residual_block_5/sequential_5/masked_conv2d_18/Conv2D:output:0Iresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_5/sequential_5/masked_conv2d_18/add�
residual_block_5/addAddV26residual_block_5/sequential_5/masked_conv2d_18/add:z:0residual_block_4/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_5/add�
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_19/MulMulIresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@24
2residual_block_6/sequential_6/masked_conv2d_19/Mul�
5residual_block_6/sequential_6/masked_conv2d_19/Conv2DConv2Dresidual_block_5/add:z:06residual_block_6/sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_19/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_19/addAddV2>residual_block_6/sequential_6/masked_conv2d_19/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_6/sequential_6/masked_conv2d_19/add�
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_20/MulMulIresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@24
2residual_block_6/sequential_6/masked_conv2d_20/Mul�
5residual_block_6/sequential_6/masked_conv2d_20/Conv2DConv2D6residual_block_6/sequential_6/masked_conv2d_19/add:z:06residual_block_6/sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_20/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_20/addAddV2>residual_block_6/sequential_6/masked_conv2d_20/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@24
2residual_block_6/sequential_6/masked_conv2d_20/add�
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_21/MulMulIresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:04residual_block_6_sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�24
2residual_block_6/sequential_6/masked_conv2d_21/Mul�
5residual_block_6/sequential_6/masked_conv2d_21/Conv2DConv2D6residual_block_6/sequential_6/masked_conv2d_20/add:z:06residual_block_6/sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
27
5residual_block_6/sequential_6/masked_conv2d_21/Conv2D�
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOpJresidual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype02C
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
2residual_block_6/sequential_6/masked_conv2d_21/addAddV2>residual_block_6/sequential_6/masked_conv2d_21/Conv2D:output:0Iresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������24
2residual_block_6/sequential_6/masked_conv2d_21/add�
residual_block_6/addAddV26residual_block_6/sequential_6/masked_conv2d_21/add:z:0residual_block_5/add:z:0*
T0*0
_output_shapes
:����������2
residual_block_6/add�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dresidual_block_6/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
conv2d/Relu�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_1/BiasAdd�
conv2d_1/SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_1/Sigmoid�
IdentityIdentityconv2d_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^masked_conv2d/Mul/ReadVariableOp!^masked_conv2d/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_1/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_2/add/ReadVariableOp=^residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp=^residual_block/sequential/masked_conv2d_3/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpA^residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpA^residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpB^residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpB^residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpB^residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpB^residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 masked_conv2d/Mul/ReadVariableOp masked_conv2d/Mul/ReadVariableOp2D
 masked_conv2d/add/ReadVariableOp masked_conv2d/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp<residual_block/sequential/masked_conv2d_1/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp<residual_block/sequential/masked_conv2d_2/add/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp<residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp2|
<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp<residual_block/sequential/masked_conv2d_3/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2�
@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp@residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2�
@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp@residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp2�
Aresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpAresidual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp2�
Aresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpAresidual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp2�
Aresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpAresidual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp2�
Aresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpAresidual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
,__inference_sequential_1_layer_call_fn_42667

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_379702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_8_layer_call_fn_43361

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_380392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_38517

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_37646
masked_conv2d_1_input
masked_conv2d_1_37574
masked_conv2d_1_37576
masked_conv2d_1_37578
masked_conv2d_2_37606
masked_conv2d_2_37608
masked_conv2d_2_37610
masked_conv2d_3_37638
masked_conv2d_3_37640
masked_conv2d_3_37642
identity��'masked_conv2d_1/StatefulPartitionedCall�'masked_conv2d_2/StatefulPartitionedCall�'masked_conv2d_3/StatefulPartitionedCall�
'masked_conv2d_1/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_1_inputmasked_conv2d_1_37574masked_conv2d_1_37576masked_conv2d_1_37578*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_375612)
'masked_conv2d_1/StatefulPartitionedCall�
'masked_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_1/StatefulPartitionedCall:output:0masked_conv2d_2_37606masked_conv2d_2_37608masked_conv2d_2_37610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_375932)
'masked_conv2d_2/StatefulPartitionedCall�
'masked_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_2/StatefulPartitionedCall:output:0masked_conv2d_3_37638masked_conv2d_3_37640masked_conv2d_3_37642*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_376252)
'masked_conv2d_3/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_3/StatefulPartitionedCall:output:0(^masked_conv2d_1/StatefulPartitionedCall(^masked_conv2d_2/StatefulPartitionedCall(^masked_conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_1/StatefulPartitionedCall'masked_conv2d_1/StatefulPartitionedCall2R
'masked_conv2d_2/StatefulPartitionedCall'masked_conv2d_2/StatefulPartitionedCall2R
'masked_conv2d_3/StatefulPartitionedCall'masked_conv2d_3/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_1_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_38092
masked_conv2d_7_input
masked_conv2d_7_38020
masked_conv2d_7_38022
masked_conv2d_7_38024
masked_conv2d_8_38052
masked_conv2d_8_38054
masked_conv2d_8_38056
masked_conv2d_9_38084
masked_conv2d_9_38086
masked_conv2d_9_38088
identity��'masked_conv2d_7/StatefulPartitionedCall�'masked_conv2d_8/StatefulPartitionedCall�'masked_conv2d_9/StatefulPartitionedCall�
'masked_conv2d_7/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_7_inputmasked_conv2d_7_38020masked_conv2d_7_38022masked_conv2d_7_38024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_380072)
'masked_conv2d_7/StatefulPartitionedCall�
'masked_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_7/StatefulPartitionedCall:output:0masked_conv2d_8_38052masked_conv2d_8_38054masked_conv2d_8_38056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_380392)
'masked_conv2d_8/StatefulPartitionedCall�
'masked_conv2d_9/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_8/StatefulPartitionedCall:output:0masked_conv2d_9_38084masked_conv2d_9_38086masked_conv2d_9_38088*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_380712)
'masked_conv2d_9/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_9/StatefulPartitionedCall:output:0(^masked_conv2d_7/StatefulPartitionedCall(^masked_conv2d_8/StatefulPartitionedCall(^masked_conv2d_9/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_7/StatefulPartitionedCall'masked_conv2d_7/StatefulPartitionedCall2R
'masked_conv2d_8/StatefulPartitionedCall'masked_conv2d_8/StatefulPartitionedCall2R
'masked_conv2d_9/StatefulPartitionedCall'masked_conv2d_9/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_7_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_5_layer_call_fn_38835
masked_conv2d_16_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_388142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_16_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_38145

inputs
masked_conv2d_7_38123
masked_conv2d_7_38125
masked_conv2d_7_38127
masked_conv2d_8_38130
masked_conv2d_8_38132
masked_conv2d_8_38134
masked_conv2d_9_38137
masked_conv2d_9_38139
masked_conv2d_9_38141
identity��'masked_conv2d_7/StatefulPartitionedCall�'masked_conv2d_8/StatefulPartitionedCall�'masked_conv2d_9/StatefulPartitionedCall�
'masked_conv2d_7/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_7_38123masked_conv2d_7_38125masked_conv2d_7_38127*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_380072)
'masked_conv2d_7/StatefulPartitionedCall�
'masked_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_7/StatefulPartitionedCall:output:0masked_conv2d_8_38130masked_conv2d_8_38132masked_conv2d_8_38134*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_380392)
'masked_conv2d_8/StatefulPartitionedCall�
'masked_conv2d_9/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_8/StatefulPartitionedCall:output:0masked_conv2d_9_38137masked_conv2d_9_38139masked_conv2d_9_38141*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_380712)
'masked_conv2d_9/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_9/StatefulPartitionedCall:output:0(^masked_conv2d_7/StatefulPartitionedCall(^masked_conv2d_8/StatefulPartitionedCall(^masked_conv2d_9/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_7/StatefulPartitionedCall'masked_conv2d_7/StatefulPartitionedCall2R
'masked_conv2d_8/StatefulPartitionedCall'masked_conv2d_8/StatefulPartitionedCall2R
'masked_conv2d_9/StatefulPartitionedCall'masked_conv2d_9/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�%
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_43131

inputs0
,masked_conv2d_19_mul_readvariableop_resource
masked_conv2d_19_mul_y0
,masked_conv2d_19_add_readvariableop_resource0
,masked_conv2d_20_mul_readvariableop_resource
masked_conv2d_20_mul_y0
,masked_conv2d_20_add_readvariableop_resource0
,masked_conv2d_21_mul_readvariableop_resource
masked_conv2d_21_mul_y0
,masked_conv2d_21_add_readvariableop_resource
identity��#masked_conv2d_19/Mul/ReadVariableOp�#masked_conv2d_19/add/ReadVariableOp�#masked_conv2d_20/Mul/ReadVariableOp�#masked_conv2d_20/add/ReadVariableOp�#masked_conv2d_21/Mul/ReadVariableOp�#masked_conv2d_21/add/ReadVariableOp�
#masked_conv2d_19/Mul/ReadVariableOpReadVariableOp,masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_19/Mul/ReadVariableOp�
masked_conv2d_19/MulMul+masked_conv2d_19/Mul/ReadVariableOp:value:0masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_19/Mul�
masked_conv2d_19/Conv2DConv2Dinputsmasked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_19/Conv2D�
#masked_conv2d_19/add/ReadVariableOpReadVariableOp,masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_19/add/ReadVariableOp�
masked_conv2d_19/addAddV2 masked_conv2d_19/Conv2D:output:0+masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_19/add�
#masked_conv2d_20/Mul/ReadVariableOpReadVariableOp,masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_20/Mul/ReadVariableOp�
masked_conv2d_20/MulMul+masked_conv2d_20/Mul/ReadVariableOp:value:0masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_20/Mul�
masked_conv2d_20/Conv2DConv2Dmasked_conv2d_19/add:z:0masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_20/Conv2D�
#masked_conv2d_20/add/ReadVariableOpReadVariableOp,masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_20/add/ReadVariableOp�
masked_conv2d_20/addAddV2 masked_conv2d_20/Conv2D:output:0+masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_20/add�
#masked_conv2d_21/Mul/ReadVariableOpReadVariableOp,masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_21/Mul/ReadVariableOp�
masked_conv2d_21/MulMul+masked_conv2d_21/Mul/ReadVariableOp:value:0masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_21/Mul�
masked_conv2d_21/Conv2DConv2Dmasked_conv2d_20/add:z:0masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_21/Conv2D�
#masked_conv2d_21/add/ReadVariableOpReadVariableOp,masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_21/add/ReadVariableOp�
masked_conv2d_21/addAddV2 masked_conv2d_21/Conv2D:output:0+masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_21/add�
IdentityIdentitymasked_conv2d_21/add:z:0$^masked_conv2d_19/Mul/ReadVariableOp$^masked_conv2d_19/add/ReadVariableOp$^masked_conv2d_20/Mul/ReadVariableOp$^masked_conv2d_20/add/ReadVariableOp$^masked_conv2d_21/Mul/ReadVariableOp$^masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_19/Mul/ReadVariableOp#masked_conv2d_19/Mul/ReadVariableOp2J
#masked_conv2d_19/add/ReadVariableOp#masked_conv2d_19/add/ReadVariableOp2J
#masked_conv2d_20/Mul/ReadVariableOp#masked_conv2d_20/Mul/ReadVariableOp2J
#masked_conv2d_20/add/ReadVariableOp#masked_conv2d_20/add/ReadVariableOp2J
#masked_conv2d_21/Mul/ReadVariableOp#masked_conv2d_21/Mul/ReadVariableOp2J
#masked_conv2d_21/add/ReadVariableOp#masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
��
�.
__inference__traced_save_44020
file_prefix.
*savev2_masked_conv2d_w_read_readvariableop.
*savev2_masked_conv2d_b_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop0
,savev2_masked_conv2d_1_w_read_readvariableop0
,savev2_masked_conv2d_1_b_read_readvariableop0
,savev2_masked_conv2d_2_w_read_readvariableop0
,savev2_masked_conv2d_2_b_read_readvariableop0
,savev2_masked_conv2d_3_w_read_readvariableop0
,savev2_masked_conv2d_3_b_read_readvariableop0
,savev2_masked_conv2d_4_w_read_readvariableop0
,savev2_masked_conv2d_4_b_read_readvariableop0
,savev2_masked_conv2d_5_w_read_readvariableop0
,savev2_masked_conv2d_5_b_read_readvariableop0
,savev2_masked_conv2d_6_w_read_readvariableop0
,savev2_masked_conv2d_6_b_read_readvariableop0
,savev2_masked_conv2d_7_w_read_readvariableop0
,savev2_masked_conv2d_7_b_read_readvariableop0
,savev2_masked_conv2d_8_w_read_readvariableop0
,savev2_masked_conv2d_8_b_read_readvariableop0
,savev2_masked_conv2d_9_w_read_readvariableop0
,savev2_masked_conv2d_9_b_read_readvariableop1
-savev2_masked_conv2d_10_w_read_readvariableop1
-savev2_masked_conv2d_10_b_read_readvariableop1
-savev2_masked_conv2d_11_w_read_readvariableop1
-savev2_masked_conv2d_11_b_read_readvariableop1
-savev2_masked_conv2d_12_w_read_readvariableop1
-savev2_masked_conv2d_12_b_read_readvariableop1
-savev2_masked_conv2d_13_w_read_readvariableop1
-savev2_masked_conv2d_13_b_read_readvariableop1
-savev2_masked_conv2d_14_w_read_readvariableop1
-savev2_masked_conv2d_14_b_read_readvariableop1
-savev2_masked_conv2d_15_w_read_readvariableop1
-savev2_masked_conv2d_15_b_read_readvariableop1
-savev2_masked_conv2d_16_w_read_readvariableop1
-savev2_masked_conv2d_16_b_read_readvariableop1
-savev2_masked_conv2d_17_w_read_readvariableop1
-savev2_masked_conv2d_17_b_read_readvariableop1
-savev2_masked_conv2d_18_w_read_readvariableop1
-savev2_masked_conv2d_18_b_read_readvariableop1
-savev2_masked_conv2d_19_w_read_readvariableop1
-savev2_masked_conv2d_19_b_read_readvariableop1
-savev2_masked_conv2d_20_w_read_readvariableop1
-savev2_masked_conv2d_20_b_read_readvariableop1
-savev2_masked_conv2d_21_w_read_readvariableop1
-savev2_masked_conv2d_21_b_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_rmsprop_masked_conv2d_w_rms_read_readvariableop:
6savev2_rmsprop_masked_conv2d_b_rms_read_readvariableop8
4savev2_rmsprop_conv2d_kernel_rms_read_readvariableop6
2savev2_rmsprop_conv2d_bias_rms_read_readvariableop:
6savev2_rmsprop_conv2d_1_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_1_bias_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_1_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_1_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_2_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_2_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_3_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_3_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_4_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_4_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_5_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_5_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_6_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_6_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_7_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_7_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_8_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_8_b_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_9_w_rms_read_readvariableop<
8savev2_rmsprop_masked_conv2d_9_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_10_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_10_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_11_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_11_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_12_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_12_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_13_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_13_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_14_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_14_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_15_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_15_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_16_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_16_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_17_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_17_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_18_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_18_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_19_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_19_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_20_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_20_b_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_21_w_rms_read_readvariableop=
9savev2_rmsprop_masked_conv2d_21_b_rms_read_readvariableop
savev2_const_22

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*�5
value�5B�5jB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBOlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/32/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/33/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/34/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/35/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/36/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/37/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/38/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/39/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/40/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/41/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/42/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/43/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*�
value�B�jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�,
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_masked_conv2d_w_read_readvariableop*savev2_masked_conv2d_b_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop,savev2_masked_conv2d_1_w_read_readvariableop,savev2_masked_conv2d_1_b_read_readvariableop,savev2_masked_conv2d_2_w_read_readvariableop,savev2_masked_conv2d_2_b_read_readvariableop,savev2_masked_conv2d_3_w_read_readvariableop,savev2_masked_conv2d_3_b_read_readvariableop,savev2_masked_conv2d_4_w_read_readvariableop,savev2_masked_conv2d_4_b_read_readvariableop,savev2_masked_conv2d_5_w_read_readvariableop,savev2_masked_conv2d_5_b_read_readvariableop,savev2_masked_conv2d_6_w_read_readvariableop,savev2_masked_conv2d_6_b_read_readvariableop,savev2_masked_conv2d_7_w_read_readvariableop,savev2_masked_conv2d_7_b_read_readvariableop,savev2_masked_conv2d_8_w_read_readvariableop,savev2_masked_conv2d_8_b_read_readvariableop,savev2_masked_conv2d_9_w_read_readvariableop,savev2_masked_conv2d_9_b_read_readvariableop-savev2_masked_conv2d_10_w_read_readvariableop-savev2_masked_conv2d_10_b_read_readvariableop-savev2_masked_conv2d_11_w_read_readvariableop-savev2_masked_conv2d_11_b_read_readvariableop-savev2_masked_conv2d_12_w_read_readvariableop-savev2_masked_conv2d_12_b_read_readvariableop-savev2_masked_conv2d_13_w_read_readvariableop-savev2_masked_conv2d_13_b_read_readvariableop-savev2_masked_conv2d_14_w_read_readvariableop-savev2_masked_conv2d_14_b_read_readvariableop-savev2_masked_conv2d_15_w_read_readvariableop-savev2_masked_conv2d_15_b_read_readvariableop-savev2_masked_conv2d_16_w_read_readvariableop-savev2_masked_conv2d_16_b_read_readvariableop-savev2_masked_conv2d_17_w_read_readvariableop-savev2_masked_conv2d_17_b_read_readvariableop-savev2_masked_conv2d_18_w_read_readvariableop-savev2_masked_conv2d_18_b_read_readvariableop-savev2_masked_conv2d_19_w_read_readvariableop-savev2_masked_conv2d_19_b_read_readvariableop-savev2_masked_conv2d_20_w_read_readvariableop-savev2_masked_conv2d_20_b_read_readvariableop-savev2_masked_conv2d_21_w_read_readvariableop-savev2_masked_conv2d_21_b_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_rmsprop_masked_conv2d_w_rms_read_readvariableop6savev2_rmsprop_masked_conv2d_b_rms_read_readvariableop4savev2_rmsprop_conv2d_kernel_rms_read_readvariableop2savev2_rmsprop_conv2d_bias_rms_read_readvariableop6savev2_rmsprop_conv2d_1_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_1_bias_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_1_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_1_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_2_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_2_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_3_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_3_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_4_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_4_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_5_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_5_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_6_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_6_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_7_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_7_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_8_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_8_b_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_9_w_rms_read_readvariableop8savev2_rmsprop_masked_conv2d_9_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_10_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_10_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_11_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_11_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_12_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_12_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_13_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_13_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_14_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_14_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_15_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_15_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_16_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_16_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_17_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_17_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_18_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_18_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_19_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_19_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_20_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_20_b_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_21_w_rms_read_readvariableop9savev2_rmsprop_masked_conv2d_21_b_rms_read_readvariableopsavev2_const_22"/device:CPU:0*
_output_shapes
 *x
dtypesn
l2j	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�	
_input_shapes�	
�	: :�:�:�@:@:@:: : : : : :�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�: : : : :�:�:�@:@:@::�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�:�@:@:@@:@:@�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:�@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:-")
'
_output_shapes
:@�:!#

_output_shapes	
:�:-$)
'
_output_shapes
:�@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:-()
'
_output_shapes
:@�:!)

_output_shapes	
:�:-*)
'
_output_shapes
:�@: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:-.)
'
_output_shapes
:@�:!/

_output_shapes	
:�:-0)
'
_output_shapes
:�@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:-4)
'
_output_shapes
:@�:!5

_output_shapes	
:�:6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: :-:)
'
_output_shapes
:�:!;

_output_shapes	
:�:-<)
'
_output_shapes
:�@: =

_output_shapes
:@:,>(
&
_output_shapes
:@: ?

_output_shapes
::-@)
'
_output_shapes
:�@: A

_output_shapes
:@:,B(
&
_output_shapes
:@@: C

_output_shapes
:@:-D)
'
_output_shapes
:@�:!E

_output_shapes	
:�:-F)
'
_output_shapes
:�@: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@:-J)
'
_output_shapes
:@�:!K

_output_shapes	
:�:-L)
'
_output_shapes
:�@: M

_output_shapes
:@:,N(
&
_output_shapes
:@@: O

_output_shapes
:@:-P)
'
_output_shapes
:@�:!Q

_output_shapes	
:�:-R)
'
_output_shapes
:�@: S

_output_shapes
:@:,T(
&
_output_shapes
:@@: U

_output_shapes
:@:-V)
'
_output_shapes
:@�:!W

_output_shapes	
:�:-X)
'
_output_shapes
:�@: Y

_output_shapes
:@:,Z(
&
_output_shapes
:@@: [

_output_shapes
:@:-\)
'
_output_shapes
:@�:!]

_output_shapes	
:�:-^)
'
_output_shapes
:�@: _

_output_shapes
:@:,`(
&
_output_shapes
:@@: a

_output_shapes
:@:-b)
'
_output_shapes
:@�:!c

_output_shapes	
:�:-d)
'
_output_shapes
:�@: e

_output_shapes
:@:,f(
&
_output_shapes
:@@: g

_output_shapes
:@:-h)
'
_output_shapes
:@�:!i

_output_shapes	
:�:j

_output_shapes
: 
�.
�
K__inference_residual_block_3_layer_call_and_return_conditional_losses_39575

inputs=
9sequential_3_masked_conv2d_10_mul_readvariableop_resource'
#sequential_3_masked_conv2d_10_mul_y=
9sequential_3_masked_conv2d_10_add_readvariableop_resource=
9sequential_3_masked_conv2d_11_mul_readvariableop_resource'
#sequential_3_masked_conv2d_11_mul_y=
9sequential_3_masked_conv2d_11_add_readvariableop_resource=
9sequential_3_masked_conv2d_12_mul_readvariableop_resource'
#sequential_3_masked_conv2d_12_mul_y=
9sequential_3_masked_conv2d_12_add_readvariableop_resource
identity��0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�0sequential_3/masked_conv2d_10/add/ReadVariableOp�0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�0sequential_3/masked_conv2d_11/add/ReadVariableOp�0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�0sequential_3/masked_conv2d_12/add/ReadVariableOp�
0sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_10/MulMul8sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_3/masked_conv2d_10/Mul�
$sequential_3/masked_conv2d_10/Conv2DConv2Dinputs%sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_10/Conv2D�
0sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_10/add/ReadVariableOp�
!sequential_3/masked_conv2d_10/addAddV2-sequential_3/masked_conv2d_10/Conv2D:output:08sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_10/add�
0sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_11/MulMul8sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_3/masked_conv2d_11/Mul�
$sequential_3/masked_conv2d_11/Conv2DConv2D%sequential_3/masked_conv2d_10/add:z:0%sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_11/Conv2D�
0sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_11/add/ReadVariableOp�
!sequential_3/masked_conv2d_11/addAddV2-sequential_3/masked_conv2d_11/Conv2D:output:08sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_11/add�
0sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_12/MulMul8sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_3/masked_conv2d_12/Mul�
$sequential_3/masked_conv2d_12/Conv2DConv2D%sequential_3/masked_conv2d_11/add:z:0%sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_12/Conv2D�
0sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_3/masked_conv2d_12/add/ReadVariableOp�
!sequential_3/masked_conv2d_12/addAddV2-sequential_3/masked_conv2d_12/Conv2D:output:08sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_3/masked_conv2d_12/add}
addAddV2%sequential_3/masked_conv2d_12/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_3/masked_conv2d_10/Mul/ReadVariableOp1^sequential_3/masked_conv2d_10/add/ReadVariableOp1^sequential_3/masked_conv2d_11/Mul/ReadVariableOp1^sequential_3/masked_conv2d_11/add/ReadVariableOp1^sequential_3/masked_conv2d_12/Mul/ReadVariableOp1^sequential_3/masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp0sequential_3/masked_conv2d_10/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_10/add/ReadVariableOp0sequential_3/masked_conv2d_10/add/ReadVariableOp2d
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp0sequential_3/masked_conv2d_11/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_11/add/ReadVariableOp0sequential_3/masked_conv2d_11/add/ReadVariableOp2d
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp0sequential_3/masked_conv2d_12/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_12/add/ReadVariableOp0sequential_3/masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_10_layer_call_fn_43407

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_382302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_38262

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_4_layer_call_and_return_conditional_losses_39671

inputs=
9sequential_4_masked_conv2d_13_mul_readvariableop_resource'
#sequential_4_masked_conv2d_13_mul_y=
9sequential_4_masked_conv2d_13_add_readvariableop_resource=
9sequential_4_masked_conv2d_14_mul_readvariableop_resource'
#sequential_4_masked_conv2d_14_mul_y=
9sequential_4_masked_conv2d_14_add_readvariableop_resource=
9sequential_4_masked_conv2d_15_mul_readvariableop_resource'
#sequential_4_masked_conv2d_15_mul_y=
9sequential_4_masked_conv2d_15_add_readvariableop_resource
identity��0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�0sequential_4/masked_conv2d_13/add/ReadVariableOp�0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�0sequential_4/masked_conv2d_14/add/ReadVariableOp�0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�0sequential_4/masked_conv2d_15/add/ReadVariableOp�
0sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_13/MulMul8sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_4/masked_conv2d_13/Mul�
$sequential_4/masked_conv2d_13/Conv2DConv2Dinputs%sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_13/Conv2D�
0sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_13/add/ReadVariableOp�
!sequential_4/masked_conv2d_13/addAddV2-sequential_4/masked_conv2d_13/Conv2D:output:08sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_13/add�
0sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_14/MulMul8sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_4/masked_conv2d_14/Mul�
$sequential_4/masked_conv2d_14/Conv2DConv2D%sequential_4/masked_conv2d_13/add:z:0%sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_14/Conv2D�
0sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_14/add/ReadVariableOp�
!sequential_4/masked_conv2d_14/addAddV2-sequential_4/masked_conv2d_14/Conv2D:output:08sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_14/add�
0sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_15/MulMul8sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_4/masked_conv2d_15/Mul�
$sequential_4/masked_conv2d_15/Conv2DConv2D%sequential_4/masked_conv2d_14/add:z:0%sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_15/Conv2D�
0sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_4/masked_conv2d_15/add/ReadVariableOp�
!sequential_4/masked_conv2d_15/addAddV2-sequential_4/masked_conv2d_15/Conv2D:output:08sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_4/masked_conv2d_15/add}
addAddV2%sequential_4/masked_conv2d_15/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_4/masked_conv2d_13/Mul/ReadVariableOp1^sequential_4/masked_conv2d_13/add/ReadVariableOp1^sequential_4/masked_conv2d_14/Mul/ReadVariableOp1^sequential_4/masked_conv2d_14/add/ReadVariableOp1^sequential_4/masked_conv2d_15/Mul/ReadVariableOp1^sequential_4/masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp0sequential_4/masked_conv2d_13/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_13/add/ReadVariableOp0sequential_4/masked_conv2d_13/add/ReadVariableOp2d
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp0sequential_4/masked_conv2d_14/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_14/add/ReadVariableOp0sequential_4/masked_conv2d_14/add/ReadVariableOp2d
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp0sequential_4/masked_conv2d_15/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_15/add/ReadVariableOp0sequential_4/masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_38193

inputs
masked_conv2d_7_38171
masked_conv2d_7_38173
masked_conv2d_7_38175
masked_conv2d_8_38178
masked_conv2d_8_38180
masked_conv2d_8_38182
masked_conv2d_9_38185
masked_conv2d_9_38187
masked_conv2d_9_38189
identity��'masked_conv2d_7/StatefulPartitionedCall�'masked_conv2d_8/StatefulPartitionedCall�'masked_conv2d_9/StatefulPartitionedCall�
'masked_conv2d_7/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_7_38171masked_conv2d_7_38173masked_conv2d_7_38175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_380072)
'masked_conv2d_7/StatefulPartitionedCall�
'masked_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_7/StatefulPartitionedCall:output:0masked_conv2d_8_38178masked_conv2d_8_38180masked_conv2d_8_38182*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_380392)
'masked_conv2d_8/StatefulPartitionedCall�
'masked_conv2d_9/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_8/StatefulPartitionedCall:output:0masked_conv2d_9_38185masked_conv2d_9_38187masked_conv2d_9_38189*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_380712)
'masked_conv2d_9/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_9/StatefulPartitionedCall:output:0(^masked_conv2d_7/StatefulPartitionedCall(^masked_conv2d_8/StatefulPartitionedCall(^masked_conv2d_9/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_7/StatefulPartitionedCall'masked_conv2d_7/StatefulPartitionedCall2R
'masked_conv2d_8/StatefulPartitionedCall'masked_conv2d_8/StatefulPartitionedCall2R
'masked_conv2d_9/StatefulPartitionedCall'masked_conv2d_9/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_6_layer_call_fn_42400

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_38416

inputs
masked_conv2d_10_38394
masked_conv2d_10_38396
masked_conv2d_10_38398
masked_conv2d_11_38401
masked_conv2d_11_38403
masked_conv2d_11_38405
masked_conv2d_12_38408
masked_conv2d_12_38410
masked_conv2d_12_38412
identity��(masked_conv2d_10/StatefulPartitionedCall�(masked_conv2d_11/StatefulPartitionedCall�(masked_conv2d_12/StatefulPartitionedCall�
(masked_conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_10_38394masked_conv2d_10_38396masked_conv2d_10_38398*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_382302*
(masked_conv2d_10/StatefulPartitionedCall�
(masked_conv2d_11/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_10/StatefulPartitionedCall:output:0masked_conv2d_11_38401masked_conv2d_11_38403masked_conv2d_11_38405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_382622*
(masked_conv2d_11/StatefulPartitionedCall�
(masked_conv2d_12/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_11/StatefulPartitionedCall:output:0masked_conv2d_12_38408masked_conv2d_12_38410masked_conv2d_12_38412*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_382942*
(masked_conv2d_12/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_12/StatefulPartitionedCall:output:0)^masked_conv2d_10/StatefulPartitionedCall)^masked_conv2d_11/StatefulPartitionedCall)^masked_conv2d_12/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_10/StatefulPartitionedCall(masked_conv2d_10/StatefulPartitionedCall2T
(masked_conv2d_11/StatefulPartitionedCall(masked_conv2d_11/StatefulPartitionedCall2T
(masked_conv2d_12/StatefulPartitionedCall(masked_conv2d_12/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�$
�
E__inference_sequential_layer_call_and_return_conditional_losses_42491

inputs/
+masked_conv2d_1_mul_readvariableop_resource
masked_conv2d_1_mul_y/
+masked_conv2d_1_add_readvariableop_resource/
+masked_conv2d_2_mul_readvariableop_resource
masked_conv2d_2_mul_y/
+masked_conv2d_2_add_readvariableop_resource/
+masked_conv2d_3_mul_readvariableop_resource
masked_conv2d_3_mul_y/
+masked_conv2d_3_add_readvariableop_resource
identity��"masked_conv2d_1/Mul/ReadVariableOp�"masked_conv2d_1/add/ReadVariableOp�"masked_conv2d_2/Mul/ReadVariableOp�"masked_conv2d_2/add/ReadVariableOp�"masked_conv2d_3/Mul/ReadVariableOp�"masked_conv2d_3/add/ReadVariableOp�
"masked_conv2d_1/Mul/ReadVariableOpReadVariableOp+masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_1/Mul/ReadVariableOp�
masked_conv2d_1/MulMul*masked_conv2d_1/Mul/ReadVariableOp:value:0masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_1/Mul�
masked_conv2d_1/Conv2DConv2Dinputsmasked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_1/Conv2D�
"masked_conv2d_1/add/ReadVariableOpReadVariableOp+masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_1/add/ReadVariableOp�
masked_conv2d_1/addAddV2masked_conv2d_1/Conv2D:output:0*masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_1/add�
"masked_conv2d_2/Mul/ReadVariableOpReadVariableOp+masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_2/Mul/ReadVariableOp�
masked_conv2d_2/MulMul*masked_conv2d_2/Mul/ReadVariableOp:value:0masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_2/Mul�
masked_conv2d_2/Conv2DConv2Dmasked_conv2d_1/add:z:0masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_2/Conv2D�
"masked_conv2d_2/add/ReadVariableOpReadVariableOp+masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_2/add/ReadVariableOp�
masked_conv2d_2/addAddV2masked_conv2d_2/Conv2D:output:0*masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_2/add�
"masked_conv2d_3/Mul/ReadVariableOpReadVariableOp+masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_3/Mul/ReadVariableOp�
masked_conv2d_3/MulMul*masked_conv2d_3/Mul/ReadVariableOp:value:0masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_3/Mul�
masked_conv2d_3/Conv2DConv2Dmasked_conv2d_2/add:z:0masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_3/Conv2D�
"masked_conv2d_3/add/ReadVariableOpReadVariableOp+masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_3/add/ReadVariableOp�
masked_conv2d_3/addAddV2masked_conv2d_3/Conv2D:output:0*masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_3/add�
IdentityIdentitymasked_conv2d_3/add:z:0#^masked_conv2d_1/Mul/ReadVariableOp#^masked_conv2d_1/add/ReadVariableOp#^masked_conv2d_2/Mul/ReadVariableOp#^masked_conv2d_2/add/ReadVariableOp#^masked_conv2d_3/Mul/ReadVariableOp#^masked_conv2d_3/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_1/Mul/ReadVariableOp"masked_conv2d_1/Mul/ReadVariableOp2H
"masked_conv2d_1/add/ReadVariableOp"masked_conv2d_1/add/ReadVariableOp2H
"masked_conv2d_2/Mul/ReadVariableOp"masked_conv2d_2/Mul/ReadVariableOp2H
"masked_conv2d_2/add/ReadVariableOp"masked_conv2d_2/add/ReadVariableOp2H
"masked_conv2d_3/Mul/ReadVariableOp"masked_conv2d_3/Mul/ReadVariableOp2H
"masked_conv2d_3/add/ReadVariableOp"masked_conv2d_3/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_19_layer_call_fn_43614

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_388992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_39037

inputs
masked_conv2d_19_39015
masked_conv2d_19_39017
masked_conv2d_19_39019
masked_conv2d_20_39022
masked_conv2d_20_39024
masked_conv2d_20_39026
masked_conv2d_21_39029
masked_conv2d_21_39031
masked_conv2d_21_39033
identity��(masked_conv2d_19/StatefulPartitionedCall�(masked_conv2d_20/StatefulPartitionedCall�(masked_conv2d_21/StatefulPartitionedCall�
(masked_conv2d_19/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_19_39015masked_conv2d_19_39017masked_conv2d_19_39019*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_388992*
(masked_conv2d_19/StatefulPartitionedCall�
(masked_conv2d_20/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_19/StatefulPartitionedCall:output:0masked_conv2d_20_39022masked_conv2d_20_39024masked_conv2d_20_39026*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_389312*
(masked_conv2d_20/StatefulPartitionedCall�
(masked_conv2d_21/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_20/StatefulPartitionedCall:output:0masked_conv2d_21_39029masked_conv2d_21_39031masked_conv2d_21_39033*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_389632*
(masked_conv2d_21/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_21/StatefulPartitionedCall:output:0)^masked_conv2d_19/StatefulPartitionedCall)^masked_conv2d_20/StatefulPartitionedCall)^masked_conv2d_21/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_19/StatefulPartitionedCall(masked_conv2d_19/StatefulPartitionedCall2T
(masked_conv2d_20/StatefulPartitionedCall(masked_conv2d_20/StatefulPartitionedCall2T
(masked_conv2d_21/StatefulPartitionedCall(masked_conv2d_21/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_5_layer_call_fn_43292

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_378162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_17_layer_call_fn_43568

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_387082
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42377

inputs=
9sequential_6_masked_conv2d_19_mul_readvariableop_resource'
#sequential_6_masked_conv2d_19_mul_y=
9sequential_6_masked_conv2d_19_add_readvariableop_resource=
9sequential_6_masked_conv2d_20_mul_readvariableop_resource'
#sequential_6_masked_conv2d_20_mul_y=
9sequential_6_masked_conv2d_20_add_readvariableop_resource=
9sequential_6_masked_conv2d_21_mul_readvariableop_resource'
#sequential_6_masked_conv2d_21_mul_y=
9sequential_6_masked_conv2d_21_add_readvariableop_resource
identity��0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�0sequential_6/masked_conv2d_19/add/ReadVariableOp�0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�0sequential_6/masked_conv2d_20/add/ReadVariableOp�0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�0sequential_6/masked_conv2d_21/add/ReadVariableOp�
0sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_19/MulMul8sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_6/masked_conv2d_19/Mul�
$sequential_6/masked_conv2d_19/Conv2DConv2Dinputs%sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_19/Conv2D�
0sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_19/add/ReadVariableOp�
!sequential_6/masked_conv2d_19/addAddV2-sequential_6/masked_conv2d_19/Conv2D:output:08sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_19/add�
0sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_20/MulMul8sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_6/masked_conv2d_20/Mul�
$sequential_6/masked_conv2d_20/Conv2DConv2D%sequential_6/masked_conv2d_19/add:z:0%sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_20/Conv2D�
0sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_20/add/ReadVariableOp�
!sequential_6/masked_conv2d_20/addAddV2-sequential_6/masked_conv2d_20/Conv2D:output:08sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_20/add�
0sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_21/MulMul8sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_6/masked_conv2d_21/Mul�
$sequential_6/masked_conv2d_21/Conv2DConv2D%sequential_6/masked_conv2d_20/add:z:0%sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_21/Conv2D�
0sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_6/masked_conv2d_21/add/ReadVariableOp�
!sequential_6/masked_conv2d_21/addAddV2-sequential_6/masked_conv2d_21/Conv2D:output:08sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_6/masked_conv2d_21/add}
addAddV2%sequential_6/masked_conv2d_21/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_6/masked_conv2d_19/Mul/ReadVariableOp1^sequential_6/masked_conv2d_19/add/ReadVariableOp1^sequential_6/masked_conv2d_20/Mul/ReadVariableOp1^sequential_6/masked_conv2d_20/add/ReadVariableOp1^sequential_6/masked_conv2d_21/Mul/ReadVariableOp1^sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp0sequential_6/masked_conv2d_19/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_19/add/ReadVariableOp0sequential_6/masked_conv2d_19/add/ReadVariableOp2d
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp0sequential_6/masked_conv2d_20/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_20/add/ReadVariableOp0sequential_6/masked_conv2d_20/add/ReadVariableOp2d
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp0sequential_6/masked_conv2d_21/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_21/add/ReadVariableOp0sequential_6/masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_38676

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�
�
-__inference_masked_conv2d_layer_call_fn_41695

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_391222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
.__inference_residual_block_layer_call_fn_41776

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_392002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_38039

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_3_layer_call_and_return_conditional_losses_39546

inputs=
9sequential_3_masked_conv2d_10_mul_readvariableop_resource'
#sequential_3_masked_conv2d_10_mul_y=
9sequential_3_masked_conv2d_10_add_readvariableop_resource=
9sequential_3_masked_conv2d_11_mul_readvariableop_resource'
#sequential_3_masked_conv2d_11_mul_y=
9sequential_3_masked_conv2d_11_add_readvariableop_resource=
9sequential_3_masked_conv2d_12_mul_readvariableop_resource'
#sequential_3_masked_conv2d_12_mul_y=
9sequential_3_masked_conv2d_12_add_readvariableop_resource
identity��0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�0sequential_3/masked_conv2d_10/add/ReadVariableOp�0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�0sequential_3/masked_conv2d_11/add/ReadVariableOp�0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�0sequential_3/masked_conv2d_12/add/ReadVariableOp�
0sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_10/MulMul8sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_3/masked_conv2d_10/Mul�
$sequential_3/masked_conv2d_10/Conv2DConv2Dinputs%sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_10/Conv2D�
0sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_10/add/ReadVariableOp�
!sequential_3/masked_conv2d_10/addAddV2-sequential_3/masked_conv2d_10/Conv2D:output:08sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_10/add�
0sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_11/MulMul8sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_3/masked_conv2d_11/Mul�
$sequential_3/masked_conv2d_11/Conv2DConv2D%sequential_3/masked_conv2d_10/add:z:0%sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_11/Conv2D�
0sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_11/add/ReadVariableOp�
!sequential_3/masked_conv2d_11/addAddV2-sequential_3/masked_conv2d_11/Conv2D:output:08sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_11/add�
0sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_12/MulMul8sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_3/masked_conv2d_12/Mul�
$sequential_3/masked_conv2d_12/Conv2DConv2D%sequential_3/masked_conv2d_11/add:z:0%sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_12/Conv2D�
0sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_3/masked_conv2d_12/add/ReadVariableOp�
!sequential_3/masked_conv2d_12/addAddV2-sequential_3/masked_conv2d_12/Conv2D:output:08sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_3/masked_conv2d_12/add}
addAddV2%sequential_3/masked_conv2d_12/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_3/masked_conv2d_10/Mul/ReadVariableOp1^sequential_3/masked_conv2d_10/add/ReadVariableOp1^sequential_3/masked_conv2d_11/Mul/ReadVariableOp1^sequential_3/masked_conv2d_11/add/ReadVariableOp1^sequential_3/masked_conv2d_12/Mul/ReadVariableOp1^sequential_3/masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp0sequential_3/masked_conv2d_10/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_10/add/ReadVariableOp0sequential_3/masked_conv2d_10/add/ReadVariableOp2d
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp0sequential_3/masked_conv2d_11/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_11/add/ReadVariableOp0sequential_3/masked_conv2d_11/add/ReadVariableOp2d
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp0sequential_3/masked_conv2d_12/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_12/add/ReadVariableOp0sequential_3/masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
/__inference_masked_conv2d_3_layer_call_fn_43246

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_376252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_1_layer_call_and_return_conditional_losses_39296

inputs<
8sequential_1_masked_conv2d_4_mul_readvariableop_resource&
"sequential_1_masked_conv2d_4_mul_y<
8sequential_1_masked_conv2d_4_add_readvariableop_resource<
8sequential_1_masked_conv2d_5_mul_readvariableop_resource&
"sequential_1_masked_conv2d_5_mul_y<
8sequential_1_masked_conv2d_5_add_readvariableop_resource<
8sequential_1_masked_conv2d_6_mul_readvariableop_resource&
"sequential_1_masked_conv2d_6_mul_y<
8sequential_1_masked_conv2d_6_add_readvariableop_resource
identity��/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�/sequential_1/masked_conv2d_4/add/ReadVariableOp�/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�/sequential_1/masked_conv2d_5/add/ReadVariableOp�/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�/sequential_1/masked_conv2d_6/add/ReadVariableOp�
/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_4/MulMul7sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_1/masked_conv2d_4/Mul�
#sequential_1/masked_conv2d_4/Conv2DConv2Dinputs$sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_4/Conv2D�
/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_4/add/ReadVariableOp�
 sequential_1/masked_conv2d_4/addAddV2,sequential_1/masked_conv2d_4/Conv2D:output:07sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_4/add�
/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_5/MulMul7sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_1/masked_conv2d_5/Mul�
#sequential_1/masked_conv2d_5/Conv2DConv2D$sequential_1/masked_conv2d_4/add:z:0$sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_5/Conv2D�
/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_1/masked_conv2d_5/add/ReadVariableOp�
 sequential_1/masked_conv2d_5/addAddV2,sequential_1/masked_conv2d_5/Conv2D:output:07sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_1/masked_conv2d_5/add�
/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
 sequential_1/masked_conv2d_6/MulMul7sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:0"sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_1/masked_conv2d_6/Mul�
#sequential_1/masked_conv2d_6/Conv2DConv2D$sequential_1/masked_conv2d_5/add:z:0$sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_1/masked_conv2d_6/Conv2D�
/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOp8sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_1/masked_conv2d_6/add/ReadVariableOp�
 sequential_1/masked_conv2d_6/addAddV2,sequential_1/masked_conv2d_6/Conv2D:output:07sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_1/masked_conv2d_6/add|
addAddV2$sequential_1/masked_conv2d_6/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_1/masked_conv2d_4/Mul/ReadVariableOp0^sequential_1/masked_conv2d_4/add/ReadVariableOp0^sequential_1/masked_conv2d_5/Mul/ReadVariableOp0^sequential_1/masked_conv2d_5/add/ReadVariableOp0^sequential_1/masked_conv2d_6/Mul/ReadVariableOp0^sequential_1/masked_conv2d_6/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_1/masked_conv2d_4/Mul/ReadVariableOp/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_4/add/ReadVariableOp/sequential_1/masked_conv2d_4/add/ReadVariableOp2b
/sequential_1/masked_conv2d_5/Mul/ReadVariableOp/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_5/add/ReadVariableOp/sequential_1/masked_conv2d_5/add/ReadVariableOp2b
/sequential_1/masked_conv2d_6/Mul/ReadVariableOp/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2b
/sequential_1/masked_conv2d_6/add/ReadVariableOp/sequential_1/masked_conv2d_6/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_5_layer_call_fn_42296

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_398252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_38315
masked_conv2d_10_input
masked_conv2d_10_38243
masked_conv2d_10_38245
masked_conv2d_10_38247
masked_conv2d_11_38275
masked_conv2d_11_38277
masked_conv2d_11_38279
masked_conv2d_12_38307
masked_conv2d_12_38309
masked_conv2d_12_38311
identity��(masked_conv2d_10/StatefulPartitionedCall�(masked_conv2d_11/StatefulPartitionedCall�(masked_conv2d_12/StatefulPartitionedCall�
(masked_conv2d_10/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_10_inputmasked_conv2d_10_38243masked_conv2d_10_38245masked_conv2d_10_38247*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_382302*
(masked_conv2d_10/StatefulPartitionedCall�
(masked_conv2d_11/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_10/StatefulPartitionedCall:output:0masked_conv2d_11_38275masked_conv2d_11_38277masked_conv2d_11_38279*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_382622*
(masked_conv2d_11/StatefulPartitionedCall�
(masked_conv2d_12/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_11/StatefulPartitionedCall:output:0masked_conv2d_12_38307masked_conv2d_12_38309masked_conv2d_12_38311*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_382942*
(masked_conv2d_12/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_12/StatefulPartitionedCall:output:0)^masked_conv2d_10/StatefulPartitionedCall)^masked_conv2d_11/StatefulPartitionedCall)^masked_conv2d_12/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_10/StatefulPartitionedCall(masked_conv2d_10/StatefulPartitionedCall2T
(masked_conv2d_11/StatefulPartitionedCall(masked_conv2d_11/StatefulPartitionedCall2T
(masked_conv2d_12/StatefulPartitionedCall(masked_conv2d_12/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_10_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_38591

inputs
masked_conv2d_13_38569
masked_conv2d_13_38571
masked_conv2d_13_38573
masked_conv2d_14_38576
masked_conv2d_14_38578
masked_conv2d_14_38580
masked_conv2d_15_38583
masked_conv2d_15_38585
masked_conv2d_15_38587
identity��(masked_conv2d_13/StatefulPartitionedCall�(masked_conv2d_14/StatefulPartitionedCall�(masked_conv2d_15/StatefulPartitionedCall�
(masked_conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_13_38569masked_conv2d_13_38571masked_conv2d_13_38573*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_384532*
(masked_conv2d_13/StatefulPartitionedCall�
(masked_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_13/StatefulPartitionedCall:output:0masked_conv2d_14_38576masked_conv2d_14_38578masked_conv2d_14_38580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_384852*
(masked_conv2d_14/StatefulPartitionedCall�
(masked_conv2d_15/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_14/StatefulPartitionedCall:output:0masked_conv2d_15_38583masked_conv2d_15_38585masked_conv2d_15_38587*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_385172*
(masked_conv2d_15/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_15/StatefulPartitionedCall:output:0)^masked_conv2d_13/StatefulPartitionedCall)^masked_conv2d_14/StatefulPartitionedCall)^masked_conv2d_15/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_13/StatefulPartitionedCall(masked_conv2d_13/StatefulPartitionedCall2T
(masked_conv2d_14/StatefulPartitionedCall(masked_conv2d_14/StatefulPartitionedCall2T
(masked_conv2d_15/StatefulPartitionedCall(masked_conv2d_15/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_13_layer_call_fn_43476

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_384532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_43465

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�%
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_42927

inputs0
,masked_conv2d_13_mul_readvariableop_resource
masked_conv2d_13_mul_y0
,masked_conv2d_13_add_readvariableop_resource0
,masked_conv2d_14_mul_readvariableop_resource
masked_conv2d_14_mul_y0
,masked_conv2d_14_add_readvariableop_resource0
,masked_conv2d_15_mul_readvariableop_resource
masked_conv2d_15_mul_y0
,masked_conv2d_15_add_readvariableop_resource
identity��#masked_conv2d_13/Mul/ReadVariableOp�#masked_conv2d_13/add/ReadVariableOp�#masked_conv2d_14/Mul/ReadVariableOp�#masked_conv2d_14/add/ReadVariableOp�#masked_conv2d_15/Mul/ReadVariableOp�#masked_conv2d_15/add/ReadVariableOp�
#masked_conv2d_13/Mul/ReadVariableOpReadVariableOp,masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_13/Mul/ReadVariableOp�
masked_conv2d_13/MulMul+masked_conv2d_13/Mul/ReadVariableOp:value:0masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_13/Mul�
masked_conv2d_13/Conv2DConv2Dinputsmasked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_13/Conv2D�
#masked_conv2d_13/add/ReadVariableOpReadVariableOp,masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_13/add/ReadVariableOp�
masked_conv2d_13/addAddV2 masked_conv2d_13/Conv2D:output:0+masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_13/add�
#masked_conv2d_14/Mul/ReadVariableOpReadVariableOp,masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_14/Mul/ReadVariableOp�
masked_conv2d_14/MulMul+masked_conv2d_14/Mul/ReadVariableOp:value:0masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_14/Mul�
masked_conv2d_14/Conv2DConv2Dmasked_conv2d_13/add:z:0masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_14/Conv2D�
#masked_conv2d_14/add/ReadVariableOpReadVariableOp,masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_14/add/ReadVariableOp�
masked_conv2d_14/addAddV2 masked_conv2d_14/Conv2D:output:0+masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_14/add�
#masked_conv2d_15/Mul/ReadVariableOpReadVariableOp,masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_15/Mul/ReadVariableOp�
masked_conv2d_15/MulMul+masked_conv2d_15/Mul/ReadVariableOp:value:0masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_15/Mul�
masked_conv2d_15/Conv2DConv2Dmasked_conv2d_14/add:z:0masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_15/Conv2D�
#masked_conv2d_15/add/ReadVariableOpReadVariableOp,masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_15/add/ReadVariableOp�
masked_conv2d_15/addAddV2 masked_conv2d_15/Conv2D:output:0+masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_15/add�
IdentityIdentitymasked_conv2d_15/add:z:0$^masked_conv2d_13/Mul/ReadVariableOp$^masked_conv2d_13/add/ReadVariableOp$^masked_conv2d_14/Mul/ReadVariableOp$^masked_conv2d_14/add/ReadVariableOp$^masked_conv2d_15/Mul/ReadVariableOp$^masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_13/Mul/ReadVariableOp#masked_conv2d_13/Mul/ReadVariableOp2J
#masked_conv2d_13/add/ReadVariableOp#masked_conv2d_13/add/ReadVariableOp2J
#masked_conv2d_14/Mul/ReadVariableOp#masked_conv2d_14/Mul/ReadVariableOp2J
#masked_conv2d_14/add/ReadVariableOp#masked_conv2d_14/add/ReadVariableOp2J
#masked_conv2d_15/Mul/ReadVariableOp#masked_conv2d_15/Mul/ReadVariableOp2J
#masked_conv2d_15/add/ReadVariableOp#masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_43557

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�%
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_42825

inputs0
,masked_conv2d_10_mul_readvariableop_resource
masked_conv2d_10_mul_y0
,masked_conv2d_10_add_readvariableop_resource0
,masked_conv2d_11_mul_readvariableop_resource
masked_conv2d_11_mul_y0
,masked_conv2d_11_add_readvariableop_resource0
,masked_conv2d_12_mul_readvariableop_resource
masked_conv2d_12_mul_y0
,masked_conv2d_12_add_readvariableop_resource
identity��#masked_conv2d_10/Mul/ReadVariableOp�#masked_conv2d_10/add/ReadVariableOp�#masked_conv2d_11/Mul/ReadVariableOp�#masked_conv2d_11/add/ReadVariableOp�#masked_conv2d_12/Mul/ReadVariableOp�#masked_conv2d_12/add/ReadVariableOp�
#masked_conv2d_10/Mul/ReadVariableOpReadVariableOp,masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_10/Mul/ReadVariableOp�
masked_conv2d_10/MulMul+masked_conv2d_10/Mul/ReadVariableOp:value:0masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_10/Mul�
masked_conv2d_10/Conv2DConv2Dinputsmasked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_10/Conv2D�
#masked_conv2d_10/add/ReadVariableOpReadVariableOp,masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_10/add/ReadVariableOp�
masked_conv2d_10/addAddV2 masked_conv2d_10/Conv2D:output:0+masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_10/add�
#masked_conv2d_11/Mul/ReadVariableOpReadVariableOp,masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_11/Mul/ReadVariableOp�
masked_conv2d_11/MulMul+masked_conv2d_11/Mul/ReadVariableOp:value:0masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_11/Mul�
masked_conv2d_11/Conv2DConv2Dmasked_conv2d_10/add:z:0masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_11/Conv2D�
#masked_conv2d_11/add/ReadVariableOpReadVariableOp,masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_11/add/ReadVariableOp�
masked_conv2d_11/addAddV2 masked_conv2d_11/Conv2D:output:0+masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_11/add�
#masked_conv2d_12/Mul/ReadVariableOpReadVariableOp,masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_12/Mul/ReadVariableOp�
masked_conv2d_12/MulMul+masked_conv2d_12/Mul/ReadVariableOp:value:0masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_12/Mul�
masked_conv2d_12/Conv2DConv2Dmasked_conv2d_11/add:z:0masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_12/Conv2D�
#masked_conv2d_12/add/ReadVariableOpReadVariableOp,masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_12/add/ReadVariableOp�
masked_conv2d_12/addAddV2 masked_conv2d_12/Conv2D:output:0+masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_12/add�
IdentityIdentitymasked_conv2d_12/add:z:0$^masked_conv2d_10/Mul/ReadVariableOp$^masked_conv2d_10/add/ReadVariableOp$^masked_conv2d_11/Mul/ReadVariableOp$^masked_conv2d_11/add/ReadVariableOp$^masked_conv2d_12/Mul/ReadVariableOp$^masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_10/Mul/ReadVariableOp#masked_conv2d_10/Mul/ReadVariableOp2J
#masked_conv2d_10/add/ReadVariableOp#masked_conv2d_10/add/ReadVariableOp2J
#masked_conv2d_11/Mul/ReadVariableOp#masked_conv2d_11/Mul/ReadVariableOp2J
#masked_conv2d_11/add/ReadVariableOp#masked_conv2d_11/add/ReadVariableOp2J
#masked_conv2d_12/Mul/ReadVariableOp#masked_conv2d_12/Mul/ReadVariableOp2J
#masked_conv2d_12/add/ReadVariableOp#masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_43649

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_38963

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�%
�
G__inference_sequential_6_layer_call_and_return_conditional_losses_43103

inputs0
,masked_conv2d_19_mul_readvariableop_resource
masked_conv2d_19_mul_y0
,masked_conv2d_19_add_readvariableop_resource0
,masked_conv2d_20_mul_readvariableop_resource
masked_conv2d_20_mul_y0
,masked_conv2d_20_add_readvariableop_resource0
,masked_conv2d_21_mul_readvariableop_resource
masked_conv2d_21_mul_y0
,masked_conv2d_21_add_readvariableop_resource
identity��#masked_conv2d_19/Mul/ReadVariableOp�#masked_conv2d_19/add/ReadVariableOp�#masked_conv2d_20/Mul/ReadVariableOp�#masked_conv2d_20/add/ReadVariableOp�#masked_conv2d_21/Mul/ReadVariableOp�#masked_conv2d_21/add/ReadVariableOp�
#masked_conv2d_19/Mul/ReadVariableOpReadVariableOp,masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_19/Mul/ReadVariableOp�
masked_conv2d_19/MulMul+masked_conv2d_19/Mul/ReadVariableOp:value:0masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_19/Mul�
masked_conv2d_19/Conv2DConv2Dinputsmasked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_19/Conv2D�
#masked_conv2d_19/add/ReadVariableOpReadVariableOp,masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_19/add/ReadVariableOp�
masked_conv2d_19/addAddV2 masked_conv2d_19/Conv2D:output:0+masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_19/add�
#masked_conv2d_20/Mul/ReadVariableOpReadVariableOp,masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_20/Mul/ReadVariableOp�
masked_conv2d_20/MulMul+masked_conv2d_20/Mul/ReadVariableOp:value:0masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_20/Mul�
masked_conv2d_20/Conv2DConv2Dmasked_conv2d_19/add:z:0masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_20/Conv2D�
#masked_conv2d_20/add/ReadVariableOpReadVariableOp,masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_20/add/ReadVariableOp�
masked_conv2d_20/addAddV2 masked_conv2d_20/Conv2D:output:0+masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_20/add�
#masked_conv2d_21/Mul/ReadVariableOpReadVariableOp,masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_21/Mul/ReadVariableOp�
masked_conv2d_21/MulMul+masked_conv2d_21/Mul/ReadVariableOp:value:0masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_21/Mul�
masked_conv2d_21/Conv2DConv2Dmasked_conv2d_20/add:z:0masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_21/Conv2D�
#masked_conv2d_21/add/ReadVariableOpReadVariableOp,masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_21/add/ReadVariableOp�
masked_conv2d_21/addAddV2 masked_conv2d_21/Conv2D:output:0+masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_21/add�
IdentityIdentitymasked_conv2d_21/add:z:0$^masked_conv2d_19/Mul/ReadVariableOp$^masked_conv2d_19/add/ReadVariableOp$^masked_conv2d_20/Mul/ReadVariableOp$^masked_conv2d_20/add/ReadVariableOp$^masked_conv2d_21/Mul/ReadVariableOp$^masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_19/Mul/ReadVariableOp#masked_conv2d_19/Mul/ReadVariableOp2J
#masked_conv2d_19/add/ReadVariableOp#masked_conv2d_19/add/ReadVariableOp2J
#masked_conv2d_20/Mul/ReadVariableOp#masked_conv2d_20/Mul/ReadVariableOp2J
#masked_conv2d_20/add/ReadVariableOp#masked_conv2d_20/add/ReadVariableOp2J
#masked_conv2d_21/Mul/ReadVariableOp#masked_conv2d_21/Mul/ReadVariableOp2J
#masked_conv2d_21/add/ReadVariableOp#masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
*__inference_sequential_layer_call_fn_37768
masked_conv2d_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_377472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_1_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�Z
�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40682

inputs
masked_conv2d_40531
masked_conv2d_40533
masked_conv2d_40535
residual_block_40538
residual_block_40540
residual_block_40542
residual_block_40544
residual_block_40546
residual_block_40548
residual_block_40550
residual_block_40552
residual_block_40554
residual_block_1_40557
residual_block_1_40559
residual_block_1_40561
residual_block_1_40563
residual_block_1_40565
residual_block_1_40567
residual_block_1_40569
residual_block_1_40571
residual_block_1_40573
residual_block_2_40576
residual_block_2_40578
residual_block_2_40580
residual_block_2_40582
residual_block_2_40584
residual_block_2_40586
residual_block_2_40588
residual_block_2_40590
residual_block_2_40592
residual_block_3_40595
residual_block_3_40597
residual_block_3_40599
residual_block_3_40601
residual_block_3_40603
residual_block_3_40605
residual_block_3_40607
residual_block_3_40609
residual_block_3_40611
residual_block_4_40614
residual_block_4_40616
residual_block_4_40618
residual_block_4_40620
residual_block_4_40622
residual_block_4_40624
residual_block_4_40626
residual_block_4_40628
residual_block_4_40630
residual_block_5_40633
residual_block_5_40635
residual_block_5_40637
residual_block_5_40639
residual_block_5_40641
residual_block_5_40643
residual_block_5_40645
residual_block_5_40647
residual_block_5_40649
residual_block_6_40652
residual_block_6_40654
residual_block_6_40656
residual_block_6_40658
residual_block_6_40660
residual_block_6_40662
residual_block_6_40664
residual_block_6_40666
residual_block_6_40668
conv2d_40671
conv2d_40673
conv2d_1_40676
conv2d_1_40678
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�%masked_conv2d/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�(residual_block_1/StatefulPartitionedCall�(residual_block_2/StatefulPartitionedCall�(residual_block_3/StatefulPartitionedCall�(residual_block_4/StatefulPartitionedCall�(residual_block_5/StatefulPartitionedCall�(residual_block_6/StatefulPartitionedCall�
%masked_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_40531masked_conv2d_40533masked_conv2d_40535*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_391222'
%masked_conv2d/StatefulPartitionedCall�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall.masked_conv2d/StatefulPartitionedCall:output:0residual_block_40538residual_block_40540residual_block_40542residual_block_40544residual_block_40546residual_block_40548residual_block_40550residual_block_40552residual_block_40554*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_residual_block_layer_call_and_return_conditional_losses_392002(
&residual_block/StatefulPartitionedCall�
(residual_block_1/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0residual_block_1_40557residual_block_1_40559residual_block_1_40561residual_block_1_40563residual_block_1_40565residual_block_1_40567residual_block_1_40569residual_block_1_40571residual_block_1_40573*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_393252*
(residual_block_1/StatefulPartitionedCall�
(residual_block_2/StatefulPartitionedCallStatefulPartitionedCall1residual_block_1/StatefulPartitionedCall:output:0residual_block_2_40576residual_block_2_40578residual_block_2_40580residual_block_2_40582residual_block_2_40584residual_block_2_40586residual_block_2_40588residual_block_2_40590residual_block_2_40592*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_2_layer_call_and_return_conditional_losses_394502*
(residual_block_2/StatefulPartitionedCall�
(residual_block_3/StatefulPartitionedCallStatefulPartitionedCall1residual_block_2/StatefulPartitionedCall:output:0residual_block_3_40595residual_block_3_40597residual_block_3_40599residual_block_3_40601residual_block_3_40603residual_block_3_40605residual_block_3_40607residual_block_3_40609residual_block_3_40611*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_3_layer_call_and_return_conditional_losses_395752*
(residual_block_3/StatefulPartitionedCall�
(residual_block_4/StatefulPartitionedCallStatefulPartitionedCall1residual_block_3/StatefulPartitionedCall:output:0residual_block_4_40614residual_block_4_40616residual_block_4_40618residual_block_4_40620residual_block_4_40622residual_block_4_40624residual_block_4_40626residual_block_4_40628residual_block_4_40630*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_397002*
(residual_block_4/StatefulPartitionedCall�
(residual_block_5/StatefulPartitionedCallStatefulPartitionedCall1residual_block_4/StatefulPartitionedCall:output:0residual_block_5_40633residual_block_5_40635residual_block_5_40637residual_block_5_40639residual_block_5_40641residual_block_5_40643residual_block_5_40645residual_block_5_40647residual_block_5_40649*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_5_layer_call_and_return_conditional_losses_398252*
(residual_block_5/StatefulPartitionedCall�
(residual_block_6/StatefulPartitionedCallStatefulPartitionedCall1residual_block_5/StatefulPartitionedCall:output:0residual_block_6_40652residual_block_6_40654residual_block_6_40656residual_block_6_40658residual_block_6_40660residual_block_6_40662residual_block_6_40664residual_block_6_40666residual_block_6_40668*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399502*
(residual_block_6/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCall1residual_block_6/StatefulPartitionedCall:output:0conv2d_40671conv2d_40673*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_400282 
conv2d/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_40676conv2d_1_40678*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_400552"
 conv2d_1/StatefulPartitionedCall�
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall&^masked_conv2d/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall)^residual_block_1/StatefulPartitionedCall)^residual_block_2/StatefulPartitionedCall)^residual_block_3/StatefulPartitionedCall)^residual_block_4/StatefulPartitionedCall)^residual_block_5/StatefulPartitionedCall)^residual_block_6/StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2N
%masked_conv2d/StatefulPartitionedCall%masked_conv2d/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall2T
(residual_block_1/StatefulPartitionedCall(residual_block_1/StatefulPartitionedCall2T
(residual_block_2/StatefulPartitionedCall(residual_block_2/StatefulPartitionedCall2T
(residual_block_3/StatefulPartitionedCall(residual_block_3/StatefulPartitionedCall2T
(residual_block_4/StatefulPartitionedCall(residual_block_4/StatefulPartitionedCall2T
(residual_block_5/StatefulPartitionedCall(residual_block_5/StatefulPartitionedCall2T
(residual_block_6/StatefulPartitionedCall(residual_block_6/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�.
�
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41932

inputs<
8sequential_2_masked_conv2d_7_mul_readvariableop_resource&
"sequential_2_masked_conv2d_7_mul_y<
8sequential_2_masked_conv2d_7_add_readvariableop_resource<
8sequential_2_masked_conv2d_8_mul_readvariableop_resource&
"sequential_2_masked_conv2d_8_mul_y<
8sequential_2_masked_conv2d_8_add_readvariableop_resource<
8sequential_2_masked_conv2d_9_mul_readvariableop_resource&
"sequential_2_masked_conv2d_9_mul_y<
8sequential_2_masked_conv2d_9_add_readvariableop_resource
identity��/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�/sequential_2/masked_conv2d_7/add/ReadVariableOp�/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�/sequential_2/masked_conv2d_8/add/ReadVariableOp�/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�/sequential_2/masked_conv2d_9/add/ReadVariableOp�
/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype021
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_7/MulMul7sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2"
 sequential_2/masked_conv2d_7/Mul�
#sequential_2/masked_conv2d_7/Conv2DConv2Dinputs$sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_7/Conv2D�
/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_7/add/ReadVariableOp�
 sequential_2/masked_conv2d_7/addAddV2,sequential_2/masked_conv2d_7/Conv2D:output:07sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_7/add�
/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_8/MulMul7sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2"
 sequential_2/masked_conv2d_8/Mul�
#sequential_2/masked_conv2d_8/Conv2DConv2D$sequential_2/masked_conv2d_7/add:z:0$sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_8/Conv2D�
/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_2/masked_conv2d_8/add/ReadVariableOp�
 sequential_2/masked_conv2d_8/addAddV2,sequential_2/masked_conv2d_8/Conv2D:output:07sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2"
 sequential_2/masked_conv2d_8/add�
/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype021
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
 sequential_2/masked_conv2d_9/MulMul7sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:0"sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2"
 sequential_2/masked_conv2d_9/Mul�
#sequential_2/masked_conv2d_9/Conv2DConv2D$sequential_2/masked_conv2d_8/add:z:0$sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2%
#sequential_2/masked_conv2d_9/Conv2D�
/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOp8sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_2/masked_conv2d_9/add/ReadVariableOp�
 sequential_2/masked_conv2d_9/addAddV2,sequential_2/masked_conv2d_9/Conv2D:output:07sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_2/masked_conv2d_9/add|
addAddV2$sequential_2/masked_conv2d_9/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:00^sequential_2/masked_conv2d_7/Mul/ReadVariableOp0^sequential_2/masked_conv2d_7/add/ReadVariableOp0^sequential_2/masked_conv2d_8/Mul/ReadVariableOp0^sequential_2/masked_conv2d_8/add/ReadVariableOp0^sequential_2/masked_conv2d_9/Mul/ReadVariableOp0^sequential_2/masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2b
/sequential_2/masked_conv2d_7/Mul/ReadVariableOp/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_7/add/ReadVariableOp/sequential_2/masked_conv2d_7/add/ReadVariableOp2b
/sequential_2/masked_conv2d_8/Mul/ReadVariableOp/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_8/add/ReadVariableOp/sequential_2/masked_conv2d_8/add/ReadVariableOp2b
/sequential_2/masked_conv2d_9/Mul/ReadVariableOp/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2b
/sequential_2/masked_conv2d_9/add/ReadVariableOp/sequential_2/masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_38340
masked_conv2d_10_input
masked_conv2d_10_38318
masked_conv2d_10_38320
masked_conv2d_10_38322
masked_conv2d_11_38325
masked_conv2d_11_38327
masked_conv2d_11_38329
masked_conv2d_12_38332
masked_conv2d_12_38334
masked_conv2d_12_38336
identity��(masked_conv2d_10/StatefulPartitionedCall�(masked_conv2d_11/StatefulPartitionedCall�(masked_conv2d_12/StatefulPartitionedCall�
(masked_conv2d_10/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_10_inputmasked_conv2d_10_38318masked_conv2d_10_38320masked_conv2d_10_38322*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_382302*
(masked_conv2d_10/StatefulPartitionedCall�
(masked_conv2d_11/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_10/StatefulPartitionedCall:output:0masked_conv2d_11_38325masked_conv2d_11_38327masked_conv2d_11_38329*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_382622*
(masked_conv2d_11/StatefulPartitionedCall�
(masked_conv2d_12/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_11/StatefulPartitionedCall:output:0masked_conv2d_12_38332masked_conv2d_12_38334masked_conv2d_12_38336*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_382942*
(masked_conv2d_12/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_12/StatefulPartitionedCall:output:0)^masked_conv2d_10/StatefulPartitionedCall)^masked_conv2d_11/StatefulPartitionedCall)^masked_conv2d_12/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_10/StatefulPartitionedCall(masked_conv2d_10/StatefulPartitionedCall2T
(masked_conv2d_11/StatefulPartitionedCall(masked_conv2d_11/StatefulPartitionedCall2T
(masked_conv2d_12/StatefulPartitionedCall(masked_conv2d_12/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_10_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_38007

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_43373

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_43327

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
0__inference_residual_block_1_layer_call_fn_41903

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_393252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_43488

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Mul/ReadVariableOpe
MulMulMul/ReadVariableOp:value:0mul_y*
T0*&
_output_shapes
:@@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
��
�E
 __inference__wrapped_model_37545
input_16
2pixelcnn_masked_conv2d_mul_readvariableop_resource 
pixelcnn_masked_conv2d_mul_y6
2pixelcnn_masked_conv2d_add_readvariableop_resourceR
Npixelcnn_residual_block_sequential_masked_conv2d_1_mul_readvariableop_resource<
8pixelcnn_residual_block_sequential_masked_conv2d_1_mul_yR
Npixelcnn_residual_block_sequential_masked_conv2d_1_add_readvariableop_resourceR
Npixelcnn_residual_block_sequential_masked_conv2d_2_mul_readvariableop_resource<
8pixelcnn_residual_block_sequential_masked_conv2d_2_mul_yR
Npixelcnn_residual_block_sequential_masked_conv2d_2_add_readvariableop_resourceR
Npixelcnn_residual_block_sequential_masked_conv2d_3_mul_readvariableop_resource<
8pixelcnn_residual_block_sequential_masked_conv2d_3_mul_yR
Npixelcnn_residual_block_sequential_masked_conv2d_3_add_readvariableop_resourceV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource@
<pixelcnn_residual_block_1_sequential_1_masked_conv2d_4_mul_yV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resourceV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource@
<pixelcnn_residual_block_1_sequential_1_masked_conv2d_5_mul_yV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resourceV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource@
<pixelcnn_residual_block_1_sequential_1_masked_conv2d_6_mul_yV
Rpixelcnn_residual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resourceV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource@
<pixelcnn_residual_block_2_sequential_2_masked_conv2d_7_mul_yV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resourceV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource@
<pixelcnn_residual_block_2_sequential_2_masked_conv2d_8_mul_yV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resourceV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource@
<pixelcnn_residual_block_2_sequential_2_masked_conv2d_9_mul_yV
Rpixelcnn_residual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resourceW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resourceA
=pixelcnn_residual_block_3_sequential_3_masked_conv2d_10_mul_yW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resourceW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resourceA
=pixelcnn_residual_block_3_sequential_3_masked_conv2d_11_mul_yW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resourceW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resourceA
=pixelcnn_residual_block_3_sequential_3_masked_conv2d_12_mul_yW
Spixelcnn_residual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resourceW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resourceA
=pixelcnn_residual_block_4_sequential_4_masked_conv2d_13_mul_yW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resourceW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resourceA
=pixelcnn_residual_block_4_sequential_4_masked_conv2d_14_mul_yW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resourceW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resourceA
=pixelcnn_residual_block_4_sequential_4_masked_conv2d_15_mul_yW
Spixelcnn_residual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resourceW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resourceA
=pixelcnn_residual_block_5_sequential_5_masked_conv2d_16_mul_yW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resourceW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resourceA
=pixelcnn_residual_block_5_sequential_5_masked_conv2d_17_mul_yW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resourceW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resourceA
=pixelcnn_residual_block_5_sequential_5_masked_conv2d_18_mul_yW
Spixelcnn_residual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resourceW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resourceA
=pixelcnn_residual_block_6_sequential_6_masked_conv2d_19_mul_yW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resourceW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resourceA
=pixelcnn_residual_block_6_sequential_6_masked_conv2d_20_mul_yW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resourceW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resourceA
=pixelcnn_residual_block_6_sequential_6_masked_conv2d_21_mul_yW
Spixelcnn_residual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource2
.pixelcnn_conv2d_conv2d_readvariableop_resource3
/pixelcnn_conv2d_biasadd_readvariableop_resource4
0pixelcnn_conv2d_1_conv2d_readvariableop_resource5
1pixelcnn_conv2d_1_biasadd_readvariableop_resource
identity��&PixelCnn/conv2d/BiasAdd/ReadVariableOp�%PixelCnn/conv2d/Conv2D/ReadVariableOp�(PixelCnn/conv2d_1/BiasAdd/ReadVariableOp�'PixelCnn/conv2d_1/Conv2D/ReadVariableOp�)PixelCnn/masked_conv2d/Mul/ReadVariableOp�)PixelCnn/masked_conv2d/add/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�EPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
)PixelCnn/masked_conv2d/Mul/ReadVariableOpReadVariableOp2pixelcnn_masked_conv2d_mul_readvariableop_resource*'
_output_shapes
:�*
dtype02+
)PixelCnn/masked_conv2d/Mul/ReadVariableOp�
PixelCnn/masked_conv2d/MulMul1PixelCnn/masked_conv2d/Mul/ReadVariableOp:value:0pixelcnn_masked_conv2d_mul_y*
T0*'
_output_shapes
:�2
PixelCnn/masked_conv2d/Mul�
PixelCnn/masked_conv2d/Conv2DConv2Dinput_1PixelCnn/masked_conv2d/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
PixelCnn/masked_conv2d/Conv2D�
)PixelCnn/masked_conv2d/add/ReadVariableOpReadVariableOp2pixelcnn_masked_conv2d_add_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)PixelCnn/masked_conv2d/add/ReadVariableOp�
PixelCnn/masked_conv2d/addAddV2&PixelCnn/masked_conv2d/Conv2D:output:01PixelCnn/masked_conv2d/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
PixelCnn/masked_conv2d/add�
EPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_1_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_1/MulMulMPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp:value:08pixelcnn_residual_block_sequential_masked_conv2d_1_mul_y*
T0*'
_output_shapes
:�@28
6PixelCnn/residual_block/sequential/masked_conv2d_1/Mul�
9PixelCnn/residual_block/sequential/masked_conv2d_1/Conv2DConv2DPixelCnn/masked_conv2d/add:z:0:PixelCnn/residual_block/sequential/masked_conv2d_1/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2;
9PixelCnn/residual_block/sequential/masked_conv2d_1/Conv2D�
EPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_1_add_readvariableop_resource*
_output_shapes
:@*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_1/addAddV2BPixelCnn/residual_block/sequential/masked_conv2d_1/Conv2D:output:0MPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@28
6PixelCnn/residual_block/sequential/masked_conv2d_1/add�
EPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_2_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_2/MulMulMPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp:value:08pixelcnn_residual_block_sequential_masked_conv2d_2_mul_y*
T0*&
_output_shapes
:@@28
6PixelCnn/residual_block/sequential/masked_conv2d_2/Mul�
9PixelCnn/residual_block/sequential/masked_conv2d_2/Conv2DConv2D:PixelCnn/residual_block/sequential/masked_conv2d_1/add:z:0:PixelCnn/residual_block/sequential/masked_conv2d_2/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2;
9PixelCnn/residual_block/sequential/masked_conv2d_2/Conv2D�
EPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_2_add_readvariableop_resource*
_output_shapes
:@*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_2/addAddV2BPixelCnn/residual_block/sequential/masked_conv2d_2/Conv2D:output:0MPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@28
6PixelCnn/residual_block/sequential/masked_conv2d_2/add�
EPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_3_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_3/MulMulMPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp:value:08pixelcnn_residual_block_sequential_masked_conv2d_3_mul_y*
T0*'
_output_shapes
:@�28
6PixelCnn/residual_block/sequential/masked_conv2d_3/Mul�
9PixelCnn/residual_block/sequential/masked_conv2d_3/Conv2DConv2D:PixelCnn/residual_block/sequential/masked_conv2d_2/add:z:0:PixelCnn/residual_block/sequential/masked_conv2d_3/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2;
9PixelCnn/residual_block/sequential/masked_conv2d_3/Conv2D�
EPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOpReadVariableOpNpixelcnn_residual_block_sequential_masked_conv2d_3_add_readvariableop_resource*
_output_shapes	
:�*
dtype02G
EPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOp�
6PixelCnn/residual_block/sequential/masked_conv2d_3/addAddV2BPixelCnn/residual_block/sequential/masked_conv2d_3/Conv2D:output:0MPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������28
6PixelCnn/residual_block/sequential/masked_conv2d_3/add�
PixelCnn/residual_block/addAddV2:PixelCnn/residual_block/sequential/masked_conv2d_3/add:z:0PixelCnn/masked_conv2d/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block/add�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_4_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/MulMulQPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_1_sequential_1_masked_conv2d_4_mul_y*
T0*'
_output_shapes
:�@2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul�
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Conv2DConv2DPixelCnn/residual_block/add:z:0>PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2?
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Conv2D�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_4_add_readvariableop_resource*
_output_shapes
:@*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/addAddV2FPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Conv2D:output:0QPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_5_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/MulMulQPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_1_sequential_1_masked_conv2d_5_mul_y*
T0*&
_output_shapes
:@@2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul�
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Conv2DConv2D>PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add:z:0>PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2?
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Conv2D�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_5_add_readvariableop_resource*
_output_shapes
:@*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/addAddV2FPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Conv2D:output:0QPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_6_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/MulMulQPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_1_sequential_1_masked_conv2d_6_mul_y*
T0*'
_output_shapes
:@�2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul�
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Conv2DConv2D>PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add:z:0>PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2?
=PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Conv2D�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_1_sequential_1_masked_conv2d_6_add_readvariableop_resource*
_output_shapes	
:�*
dtype02K
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp�
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/addAddV2FPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Conv2D:output:0QPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2<
:PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add�
PixelCnn/residual_block_1/addAddV2>PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add:z:0PixelCnn/residual_block/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_1/add�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/MulMulQPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_2_sequential_2_masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul�
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Conv2DConv2D!PixelCnn/residual_block_1/add:z:0>PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2?
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Conv2D�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/addAddV2FPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Conv2D:output:0QPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/MulMulQPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_2_sequential_2_masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul�
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Conv2DConv2D>PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add:z:0>PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2?
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Conv2D�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/addAddV2FPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Conv2D:output:0QPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/MulMulQPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp:value:0<pixelcnn_residual_block_2_sequential_2_masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul�
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Conv2DConv2D>PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add:z:0>PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2?
=PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Conv2D�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpReadVariableOpRpixelcnn_residual_block_2_sequential_2_masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype02K
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp�
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/addAddV2FPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Conv2D:output:0QPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2<
:PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add�
PixelCnn/residual_block_2/addAddV2>PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add:z:0!PixelCnn/residual_block_1/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_2/add�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/MulMulRPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_3_sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul�
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Conv2DConv2D!PixelCnn/residual_block_2/add:z:0?PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Conv2D�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/addAddV2GPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Conv2D:output:0RPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/MulMulRPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_3_sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul�
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Conv2DConv2D?PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add:z:0?PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Conv2D�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/addAddV2GPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Conv2D:output:0RPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/MulMulRPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_3_sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul�
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Conv2DConv2D?PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add:z:0?PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2@
>PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Conv2D�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_3_sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype02L
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp�
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/addAddV2GPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Conv2D:output:0RPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2=
;PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add�
PixelCnn/residual_block_3/addAddV2?PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add:z:0!PixelCnn/residual_block_2/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_3/add�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/MulMulRPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_4_sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul�
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Conv2DConv2D!PixelCnn/residual_block_3/add:z:0?PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Conv2D�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/addAddV2GPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Conv2D:output:0RPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/MulMulRPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_4_sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul�
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Conv2DConv2D?PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add:z:0?PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Conv2D�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/addAddV2GPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Conv2D:output:0RPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/MulMulRPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_4_sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul�
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Conv2DConv2D?PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add:z:0?PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2@
>PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Conv2D�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_4_sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype02L
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp�
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/addAddV2GPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Conv2D:output:0RPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2=
;PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add�
PixelCnn/residual_block_4/addAddV2?PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add:z:0!PixelCnn/residual_block_3/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_4/add�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_16_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/MulMulRPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_5_sequential_5_masked_conv2d_16_mul_y*
T0*'
_output_shapes
:�@2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul�
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Conv2DConv2D!PixelCnn/residual_block_4/add:z:0?PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Conv2D�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_16_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/addAddV2GPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Conv2D:output:0RPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_17_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/MulMulRPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_5_sequential_5_masked_conv2d_17_mul_y*
T0*&
_output_shapes
:@@2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul�
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Conv2DConv2D?PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add:z:0?PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Conv2D�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_17_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/addAddV2GPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Conv2D:output:0RPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_18_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/MulMulRPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_5_sequential_5_masked_conv2d_18_mul_y*
T0*'
_output_shapes
:@�2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul�
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Conv2DConv2D?PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add:z:0?PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2@
>PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Conv2D�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_5_sequential_5_masked_conv2d_18_add_readvariableop_resource*
_output_shapes	
:�*
dtype02L
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp�
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/addAddV2GPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Conv2D:output:0RPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2=
;PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add�
PixelCnn/residual_block_5/addAddV2?PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add:z:0!PixelCnn/residual_block_4/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_5/add�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/MulMulRPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_6_sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul�
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Conv2DConv2D!PixelCnn/residual_block_5/add:z:0?PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Conv2D�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/addAddV2GPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Conv2D:output:0RPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/MulMulRPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_6_sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul�
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Conv2DConv2D?PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add:z:0?PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2@
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Conv2D�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/addAddV2GPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Conv2D:output:0RPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/MulMulRPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:0=pixelcnn_residual_block_6_sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul�
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Conv2DConv2D?PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add:z:0?PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2@
>PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Conv2D�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOpSpixelcnn_residual_block_6_sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype02L
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp�
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/addAddV2GPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Conv2D:output:0RPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2=
;PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add�
PixelCnn/residual_block_6/addAddV2?PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add:z:0!PixelCnn/residual_block_5/add:z:0*
T0*0
_output_shapes
:����������2
PixelCnn/residual_block_6/add�
%PixelCnn/conv2d/Conv2D/ReadVariableOpReadVariableOp.pixelcnn_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype02'
%PixelCnn/conv2d/Conv2D/ReadVariableOp�
PixelCnn/conv2d/Conv2DConv2D!PixelCnn/residual_block_6/add:z:0-PixelCnn/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
PixelCnn/conv2d/Conv2D�
&PixelCnn/conv2d/BiasAdd/ReadVariableOpReadVariableOp/pixelcnn_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&PixelCnn/conv2d/BiasAdd/ReadVariableOp�
PixelCnn/conv2d/BiasAddBiasAddPixelCnn/conv2d/Conv2D:output:0.PixelCnn/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
PixelCnn/conv2d/BiasAdd�
PixelCnn/conv2d/ReluRelu PixelCnn/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@2
PixelCnn/conv2d/Relu�
'PixelCnn/conv2d_1/Conv2D/ReadVariableOpReadVariableOp0pixelcnn_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'PixelCnn/conv2d_1/Conv2D/ReadVariableOp�
PixelCnn/conv2d_1/Conv2DConv2D"PixelCnn/conv2d/Relu:activations:0/PixelCnn/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
PixelCnn/conv2d_1/Conv2D�
(PixelCnn/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp1pixelcnn_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(PixelCnn/conv2d_1/BiasAdd/ReadVariableOp�
PixelCnn/conv2d_1/BiasAddBiasAdd!PixelCnn/conv2d_1/Conv2D:output:00PixelCnn/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
PixelCnn/conv2d_1/BiasAdd�
PixelCnn/conv2d_1/SigmoidSigmoid"PixelCnn/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
PixelCnn/conv2d_1/Sigmoid�
IdentityIdentityPixelCnn/conv2d_1/Sigmoid:y:0'^PixelCnn/conv2d/BiasAdd/ReadVariableOp&^PixelCnn/conv2d/Conv2D/ReadVariableOp)^PixelCnn/conv2d_1/BiasAdd/ReadVariableOp(^PixelCnn/conv2d_1/Conv2D/ReadVariableOp*^PixelCnn/masked_conv2d/Mul/ReadVariableOp*^PixelCnn/masked_conv2d/add/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOpF^PixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpJ^PixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpJ^PixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpK^PixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpK^PixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpK^PixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpK^PixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2P
&PixelCnn/conv2d/BiasAdd/ReadVariableOp&PixelCnn/conv2d/BiasAdd/ReadVariableOp2N
%PixelCnn/conv2d/Conv2D/ReadVariableOp%PixelCnn/conv2d/Conv2D/ReadVariableOp2T
(PixelCnn/conv2d_1/BiasAdd/ReadVariableOp(PixelCnn/conv2d_1/BiasAdd/ReadVariableOp2R
'PixelCnn/conv2d_1/Conv2D/ReadVariableOp'PixelCnn/conv2d_1/Conv2D/ReadVariableOp2V
)PixelCnn/masked_conv2d/Mul/ReadVariableOp)PixelCnn/masked_conv2d/Mul/ReadVariableOp2V
)PixelCnn/masked_conv2d/add/ReadVariableOp)PixelCnn/masked_conv2d/add/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_1/Mul/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_1/add/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_2/Mul/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_2/add/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_3/Mul/ReadVariableOp2�
EPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOpEPixelCnn/residual_block/sequential/masked_conv2d_3/add/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/Mul/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_4/add/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/Mul/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_5/add/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/Mul/ReadVariableOp2�
IPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOpIPixelCnn/residual_block_1/sequential_1/masked_conv2d_6/add/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/Mul/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_7/add/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/Mul/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_8/add/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/Mul/ReadVariableOp2�
IPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOpIPixelCnn/residual_block_2/sequential_2/masked_conv2d_9/add/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/Mul/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_10/add/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/Mul/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_11/add/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/Mul/ReadVariableOp2�
JPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOpJPixelCnn/residual_block_3/sequential_3/masked_conv2d_12/add/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/Mul/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_13/add/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/Mul/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_14/add/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/Mul/ReadVariableOp2�
JPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOpJPixelCnn/residual_block_4/sequential_4/masked_conv2d_15/add/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/Mul/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_16/add/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/Mul/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_17/add/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/Mul/ReadVariableOp2�
JPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOpJPixelCnn/residual_block_5/sequential_5/masked_conv2d_18/add/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/Mul/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_19/add/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/Mul/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_20/add/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/Mul/ReadVariableOp2�
JPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOpJPixelCnn/residual_block_6/sequential_6/masked_conv2d_21/add/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_38230

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_43580

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�%
�
G__inference_sequential_3_layer_call_and_return_conditional_losses_42797

inputs0
,masked_conv2d_10_mul_readvariableop_resource
masked_conv2d_10_mul_y0
,masked_conv2d_10_add_readvariableop_resource0
,masked_conv2d_11_mul_readvariableop_resource
masked_conv2d_11_mul_y0
,masked_conv2d_11_add_readvariableop_resource0
,masked_conv2d_12_mul_readvariableop_resource
masked_conv2d_12_mul_y0
,masked_conv2d_12_add_readvariableop_resource
identity��#masked_conv2d_10/Mul/ReadVariableOp�#masked_conv2d_10/add/ReadVariableOp�#masked_conv2d_11/Mul/ReadVariableOp�#masked_conv2d_11/add/ReadVariableOp�#masked_conv2d_12/Mul/ReadVariableOp�#masked_conv2d_12/add/ReadVariableOp�
#masked_conv2d_10/Mul/ReadVariableOpReadVariableOp,masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02%
#masked_conv2d_10/Mul/ReadVariableOp�
masked_conv2d_10/MulMul+masked_conv2d_10/Mul/ReadVariableOp:value:0masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_10/Mul�
masked_conv2d_10/Conv2DConv2Dinputsmasked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_10/Conv2D�
#masked_conv2d_10/add/ReadVariableOpReadVariableOp,masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_10/add/ReadVariableOp�
masked_conv2d_10/addAddV2 masked_conv2d_10/Conv2D:output:0+masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_10/add�
#masked_conv2d_11/Mul/ReadVariableOpReadVariableOp,masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#masked_conv2d_11/Mul/ReadVariableOp�
masked_conv2d_11/MulMul+masked_conv2d_11/Mul/ReadVariableOp:value:0masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_11/Mul�
masked_conv2d_11/Conv2DConv2Dmasked_conv2d_10/add:z:0masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_11/Conv2D�
#masked_conv2d_11/add/ReadVariableOpReadVariableOp,masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype02%
#masked_conv2d_11/add/ReadVariableOp�
masked_conv2d_11/addAddV2 masked_conv2d_11/Conv2D:output:0+masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_11/add�
#masked_conv2d_12/Mul/ReadVariableOpReadVariableOp,masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02%
#masked_conv2d_12/Mul/ReadVariableOp�
masked_conv2d_12/MulMul+masked_conv2d_12/Mul/ReadVariableOp:value:0masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_12/Mul�
masked_conv2d_12/Conv2DConv2Dmasked_conv2d_11/add:z:0masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_12/Conv2D�
#masked_conv2d_12/add/ReadVariableOpReadVariableOp,masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#masked_conv2d_12/add/ReadVariableOp�
masked_conv2d_12/addAddV2 masked_conv2d_12/Conv2D:output:0+masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_12/add�
IdentityIdentitymasked_conv2d_12/add:z:0$^masked_conv2d_10/Mul/ReadVariableOp$^masked_conv2d_10/add/ReadVariableOp$^masked_conv2d_11/Mul/ReadVariableOp$^masked_conv2d_11/add/ReadVariableOp$^masked_conv2d_12/Mul/ReadVariableOp$^masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2J
#masked_conv2d_10/Mul/ReadVariableOp#masked_conv2d_10/Mul/ReadVariableOp2J
#masked_conv2d_10/add/ReadVariableOp#masked_conv2d_10/add/ReadVariableOp2J
#masked_conv2d_11/Mul/ReadVariableOp#masked_conv2d_11/Mul/ReadVariableOp2J
#masked_conv2d_11/add/ReadVariableOp#masked_conv2d_11/add/ReadVariableOp2J
#masked_conv2d_12/Mul/ReadVariableOp#masked_conv2d_12/Mul/ReadVariableOp2J
#masked_conv2d_12/add/ReadVariableOp#masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
*__inference_sequential_layer_call_fn_42542

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_376992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_38538
masked_conv2d_13_input
masked_conv2d_13_38466
masked_conv2d_13_38468
masked_conv2d_13_38470
masked_conv2d_14_38498
masked_conv2d_14_38500
masked_conv2d_14_38502
masked_conv2d_15_38530
masked_conv2d_15_38532
masked_conv2d_15_38534
identity��(masked_conv2d_13/StatefulPartitionedCall�(masked_conv2d_14/StatefulPartitionedCall�(masked_conv2d_15/StatefulPartitionedCall�
(masked_conv2d_13/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_13_inputmasked_conv2d_13_38466masked_conv2d_13_38468masked_conv2d_13_38470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_384532*
(masked_conv2d_13/StatefulPartitionedCall�
(masked_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_13/StatefulPartitionedCall:output:0masked_conv2d_14_38498masked_conv2d_14_38500masked_conv2d_14_38502*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_384852*
(masked_conv2d_14/StatefulPartitionedCall�
(masked_conv2d_15/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_14/StatefulPartitionedCall:output:0masked_conv2d_15_38530masked_conv2d_15_38532masked_conv2d_15_38534*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_385172*
(masked_conv2d_15/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_15/StatefulPartitionedCall:output:0)^masked_conv2d_13/StatefulPartitionedCall)^masked_conv2d_14/StatefulPartitionedCall)^masked_conv2d_15/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_13/StatefulPartitionedCall(masked_conv2d_13/StatefulPartitionedCall2T
(masked_conv2d_14/StatefulPartitionedCall(masked_conv2d_14/StatefulPartitionedCall2T
(masked_conv2d_15/StatefulPartitionedCall(masked_conv2d_15/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_13_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_4_layer_call_fn_42192

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_4_layer_call_and_return_conditional_losses_397002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_37869
masked_conv2d_4_input
masked_conv2d_4_37797
masked_conv2d_4_37799
masked_conv2d_4_37801
masked_conv2d_5_37829
masked_conv2d_5_37831
masked_conv2d_5_37833
masked_conv2d_6_37861
masked_conv2d_6_37863
masked_conv2d_6_37865
identity��'masked_conv2d_4/StatefulPartitionedCall�'masked_conv2d_5/StatefulPartitionedCall�'masked_conv2d_6/StatefulPartitionedCall�
'masked_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_4_inputmasked_conv2d_4_37797masked_conv2d_4_37799masked_conv2d_4_37801*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_377842)
'masked_conv2d_4/StatefulPartitionedCall�
'masked_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_4/StatefulPartitionedCall:output:0masked_conv2d_5_37829masked_conv2d_5_37831masked_conv2d_5_37833*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_378162)
'masked_conv2d_5/StatefulPartitionedCall�
'masked_conv2d_6/StatefulPartitionedCallStatefulPartitionedCall0masked_conv2d_5/StatefulPartitionedCall:output:0masked_conv2d_6_37861masked_conv2d_6_37863masked_conv2d_6_37865*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_378482)
'masked_conv2d_6/StatefulPartitionedCall�
IdentityIdentity0masked_conv2d_6/StatefulPartitionedCall:output:0(^masked_conv2d_4/StatefulPartitionedCall(^masked_conv2d_5/StatefulPartitionedCall(^masked_conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2R
'masked_conv2d_4/StatefulPartitionedCall'masked_conv2d_4/StatefulPartitionedCall2R
'masked_conv2d_5/StatefulPartitionedCall'masked_conv2d_5/StatefulPartitionedCall2R
'masked_conv2d_6/StatefulPartitionedCall'masked_conv2d_6/StatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_4_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_4_layer_call_fn_38612
masked_conv2d_13_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_385912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_13_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_4_layer_call_and_return_conditional_losses_39700

inputs=
9sequential_4_masked_conv2d_13_mul_readvariableop_resource'
#sequential_4_masked_conv2d_13_mul_y=
9sequential_4_masked_conv2d_13_add_readvariableop_resource=
9sequential_4_masked_conv2d_14_mul_readvariableop_resource'
#sequential_4_masked_conv2d_14_mul_y=
9sequential_4_masked_conv2d_14_add_readvariableop_resource=
9sequential_4_masked_conv2d_15_mul_readvariableop_resource'
#sequential_4_masked_conv2d_15_mul_y=
9sequential_4_masked_conv2d_15_add_readvariableop_resource
identity��0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�0sequential_4/masked_conv2d_13/add/ReadVariableOp�0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�0sequential_4/masked_conv2d_14/add/ReadVariableOp�0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�0sequential_4/masked_conv2d_15/add/ReadVariableOp�
0sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_13/MulMul8sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_4/masked_conv2d_13/Mul�
$sequential_4/masked_conv2d_13/Conv2DConv2Dinputs%sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_13/Conv2D�
0sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_13/add/ReadVariableOp�
!sequential_4/masked_conv2d_13/addAddV2-sequential_4/masked_conv2d_13/Conv2D:output:08sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_13/add�
0sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_14/MulMul8sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_4/masked_conv2d_14/Mul�
$sequential_4/masked_conv2d_14/Conv2DConv2D%sequential_4/masked_conv2d_13/add:z:0%sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_14/Conv2D�
0sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_14/add/ReadVariableOp�
!sequential_4/masked_conv2d_14/addAddV2-sequential_4/masked_conv2d_14/Conv2D:output:08sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_14/add�
0sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_15/MulMul8sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_4/masked_conv2d_15/Mul�
$sequential_4/masked_conv2d_15/Conv2DConv2D%sequential_4/masked_conv2d_14/add:z:0%sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_15/Conv2D�
0sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_4/masked_conv2d_15/add/ReadVariableOp�
!sequential_4/masked_conv2d_15/addAddV2-sequential_4/masked_conv2d_15/Conv2D:output:08sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_4/masked_conv2d_15/add}
addAddV2%sequential_4/masked_conv2d_15/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_4/masked_conv2d_13/Mul/ReadVariableOp1^sequential_4/masked_conv2d_13/add/ReadVariableOp1^sequential_4/masked_conv2d_14/Mul/ReadVariableOp1^sequential_4/masked_conv2d_14/add/ReadVariableOp1^sequential_4/masked_conv2d_15/Mul/ReadVariableOp1^sequential_4/masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp0sequential_4/masked_conv2d_13/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_13/add/ReadVariableOp0sequential_4/masked_conv2d_13/add/ReadVariableOp2d
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp0sequential_4/masked_conv2d_14/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_14/add/ReadVariableOp0sequential_4/masked_conv2d_14/add/ReadVariableOp2d
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp0sequential_4/masked_conv2d_15/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_15/add/ReadVariableOp0sequential_4/masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�#
�	
(__inference_PixelCnn_layer_call_fn_41672

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_PixelCnn_layer_call_and_return_conditional_losses_406822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�
{
&__inference_conv2d_layer_call_fn_42443

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_400282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
,__inference_sequential_6_layer_call_fn_43177

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_390852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
0__inference_masked_conv2d_15_layer_call_fn_43522

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_385172
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_2_layer_call_fn_42769

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_381932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�$
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_42695

inputs/
+masked_conv2d_7_mul_readvariableop_resource
masked_conv2d_7_mul_y/
+masked_conv2d_7_add_readvariableop_resource/
+masked_conv2d_8_mul_readvariableop_resource
masked_conv2d_8_mul_y/
+masked_conv2d_8_add_readvariableop_resource/
+masked_conv2d_9_mul_readvariableop_resource
masked_conv2d_9_mul_y/
+masked_conv2d_9_add_readvariableop_resource
identity��"masked_conv2d_7/Mul/ReadVariableOp�"masked_conv2d_7/add/ReadVariableOp�"masked_conv2d_8/Mul/ReadVariableOp�"masked_conv2d_8/add/ReadVariableOp�"masked_conv2d_9/Mul/ReadVariableOp�"masked_conv2d_9/add/ReadVariableOp�
"masked_conv2d_7/Mul/ReadVariableOpReadVariableOp+masked_conv2d_7_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype02$
"masked_conv2d_7/Mul/ReadVariableOp�
masked_conv2d_7/MulMul*masked_conv2d_7/Mul/ReadVariableOp:value:0masked_conv2d_7_mul_y*
T0*'
_output_shapes
:�@2
masked_conv2d_7/Mul�
masked_conv2d_7/Conv2DConv2Dinputsmasked_conv2d_7/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_7/Conv2D�
"masked_conv2d_7/add/ReadVariableOpReadVariableOp+masked_conv2d_7_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_7/add/ReadVariableOp�
masked_conv2d_7/addAddV2masked_conv2d_7/Conv2D:output:0*masked_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_7/add�
"masked_conv2d_8/Mul/ReadVariableOpReadVariableOp+masked_conv2d_8_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"masked_conv2d_8/Mul/ReadVariableOp�
masked_conv2d_8/MulMul*masked_conv2d_8/Mul/ReadVariableOp:value:0masked_conv2d_8_mul_y*
T0*&
_output_shapes
:@@2
masked_conv2d_8/Mul�
masked_conv2d_8/Conv2DConv2Dmasked_conv2d_7/add:z:0masked_conv2d_8/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
masked_conv2d_8/Conv2D�
"masked_conv2d_8/add/ReadVariableOpReadVariableOp+masked_conv2d_8_add_readvariableop_resource*
_output_shapes
:@*
dtype02$
"masked_conv2d_8/add/ReadVariableOp�
masked_conv2d_8/addAddV2masked_conv2d_8/Conv2D:output:0*masked_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
masked_conv2d_8/add�
"masked_conv2d_9/Mul/ReadVariableOpReadVariableOp+masked_conv2d_9_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"masked_conv2d_9/Mul/ReadVariableOp�
masked_conv2d_9/MulMul*masked_conv2d_9/Mul/ReadVariableOp:value:0masked_conv2d_9_mul_y*
T0*'
_output_shapes
:@�2
masked_conv2d_9/Mul�
masked_conv2d_9/Conv2DConv2Dmasked_conv2d_8/add:z:0masked_conv2d_9/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
masked_conv2d_9/Conv2D�
"masked_conv2d_9/add/ReadVariableOpReadVariableOp+masked_conv2d_9_add_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"masked_conv2d_9/add/ReadVariableOp�
masked_conv2d_9/addAddV2masked_conv2d_9/Conv2D:output:0*masked_conv2d_9/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
masked_conv2d_9/add�
IdentityIdentitymasked_conv2d_9/add:z:0#^masked_conv2d_7/Mul/ReadVariableOp#^masked_conv2d_7/add/ReadVariableOp#^masked_conv2d_8/Mul/ReadVariableOp#^masked_conv2d_8/add/ReadVariableOp#^masked_conv2d_9/Mul/ReadVariableOp#^masked_conv2d_9/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2H
"masked_conv2d_7/Mul/ReadVariableOp"masked_conv2d_7/Mul/ReadVariableOp2H
"masked_conv2d_7/add/ReadVariableOp"masked_conv2d_7/add/ReadVariableOp2H
"masked_conv2d_8/Mul/ReadVariableOp"masked_conv2d_8/Mul/ReadVariableOp2H
"masked_conv2d_8/add/ReadVariableOp"masked_conv2d_8/add/ReadVariableOp2H
"masked_conv2d_9/Mul/ReadVariableOp"masked_conv2d_9/Mul/ReadVariableOp2H
"masked_conv2d_9/add/ReadVariableOp"masked_conv2d_9/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_3_layer_call_fn_38437
masked_conv2d_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_384162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_10_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_4_layer_call_fn_38660
masked_conv2d_13_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_386392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_13_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_38862

inputs
masked_conv2d_16_38840
masked_conv2d_16_38842
masked_conv2d_16_38844
masked_conv2d_17_38847
masked_conv2d_17_38849
masked_conv2d_17_38851
masked_conv2d_18_38854
masked_conv2d_18_38856
masked_conv2d_18_38858
identity��(masked_conv2d_16/StatefulPartitionedCall�(masked_conv2d_17/StatefulPartitionedCall�(masked_conv2d_18/StatefulPartitionedCall�
(masked_conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsmasked_conv2d_16_38840masked_conv2d_16_38842masked_conv2d_16_38844*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_386762*
(masked_conv2d_16/StatefulPartitionedCall�
(masked_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_16/StatefulPartitionedCall:output:0masked_conv2d_17_38847masked_conv2d_17_38849masked_conv2d_17_38851*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_387082*
(masked_conv2d_17/StatefulPartitionedCall�
(masked_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_17/StatefulPartitionedCall:output:0masked_conv2d_18_38854masked_conv2d_18_38856masked_conv2d_18_38858*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_387402*
(masked_conv2d_18/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_18/StatefulPartitionedCall:output:0)^masked_conv2d_16/StatefulPartitionedCall)^masked_conv2d_17/StatefulPartitionedCall)^masked_conv2d_18/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_16/StatefulPartitionedCall(masked_conv2d_16/StatefulPartitionedCall2T
(masked_conv2d_17/StatefulPartitionedCall(masked_conv2d_17/StatefulPartitionedCall2T
(masked_conv2d_18/StatefulPartitionedCall(masked_conv2d_18/StatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�#
�	
(__inference_PixelCnn_layer_call_fn_40526
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*R
_read_only_resource_inputs4
20	
!"$%'(*+-.0134679:<=?@BCDEF*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_PixelCnn_layer_call_and_return_conditional_losses_403832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:���������::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,#(
&
_output_shapes
::,&(
&
_output_shapes
::,)(
&
_output_shapes
::,,(
&
_output_shapes
::,/(
&
_output_shapes
::,2(
&
_output_shapes
::,5(
&
_output_shapes
::,8(
&
_output_shapes
::,;(
&
_output_shapes
::,>(
&
_output_shapes
::,A(
&
_output_shapes
:
�

�
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_39122

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42036

inputs=
9sequential_3_masked_conv2d_10_mul_readvariableop_resource'
#sequential_3_masked_conv2d_10_mul_y=
9sequential_3_masked_conv2d_10_add_readvariableop_resource=
9sequential_3_masked_conv2d_11_mul_readvariableop_resource'
#sequential_3_masked_conv2d_11_mul_y=
9sequential_3_masked_conv2d_11_add_readvariableop_resource=
9sequential_3_masked_conv2d_12_mul_readvariableop_resource'
#sequential_3_masked_conv2d_12_mul_y=
9sequential_3_masked_conv2d_12_add_readvariableop_resource
identity��0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�0sequential_3/masked_conv2d_10/add/ReadVariableOp�0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�0sequential_3/masked_conv2d_11/add/ReadVariableOp�0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�0sequential_3/masked_conv2d_12/add/ReadVariableOp�
0sequential_3/masked_conv2d_10/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_10/MulMul8sequential_3/masked_conv2d_10/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_10_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_3/masked_conv2d_10/Mul�
$sequential_3/masked_conv2d_10/Conv2DConv2Dinputs%sequential_3/masked_conv2d_10/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_10/Conv2D�
0sequential_3/masked_conv2d_10/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_10_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_10/add/ReadVariableOp�
!sequential_3/masked_conv2d_10/addAddV2-sequential_3/masked_conv2d_10/Conv2D:output:08sequential_3/masked_conv2d_10/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_10/add�
0sequential_3/masked_conv2d_11/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_11/MulMul8sequential_3/masked_conv2d_11/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_11_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_3/masked_conv2d_11/Mul�
$sequential_3/masked_conv2d_11/Conv2DConv2D%sequential_3/masked_conv2d_10/add:z:0%sequential_3/masked_conv2d_11/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_11/Conv2D�
0sequential_3/masked_conv2d_11/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_11_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_3/masked_conv2d_11/add/ReadVariableOp�
!sequential_3/masked_conv2d_11/addAddV2-sequential_3/masked_conv2d_11/Conv2D:output:08sequential_3/masked_conv2d_11/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_3/masked_conv2d_11/add�
0sequential_3/masked_conv2d_12/Mul/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp�
!sequential_3/masked_conv2d_12/MulMul8sequential_3/masked_conv2d_12/Mul/ReadVariableOp:value:0#sequential_3_masked_conv2d_12_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_3/masked_conv2d_12/Mul�
$sequential_3/masked_conv2d_12/Conv2DConv2D%sequential_3/masked_conv2d_11/add:z:0%sequential_3/masked_conv2d_12/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_3/masked_conv2d_12/Conv2D�
0sequential_3/masked_conv2d_12/add/ReadVariableOpReadVariableOp9sequential_3_masked_conv2d_12_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_3/masked_conv2d_12/add/ReadVariableOp�
!sequential_3/masked_conv2d_12/addAddV2-sequential_3/masked_conv2d_12/Conv2D:output:08sequential_3/masked_conv2d_12/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_3/masked_conv2d_12/add}
addAddV2%sequential_3/masked_conv2d_12/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_3/masked_conv2d_10/Mul/ReadVariableOp1^sequential_3/masked_conv2d_10/add/ReadVariableOp1^sequential_3/masked_conv2d_11/Mul/ReadVariableOp1^sequential_3/masked_conv2d_11/add/ReadVariableOp1^sequential_3/masked_conv2d_12/Mul/ReadVariableOp1^sequential_3/masked_conv2d_12/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_3/masked_conv2d_10/Mul/ReadVariableOp0sequential_3/masked_conv2d_10/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_10/add/ReadVariableOp0sequential_3/masked_conv2d_10/add/ReadVariableOp2d
0sequential_3/masked_conv2d_11/Mul/ReadVariableOp0sequential_3/masked_conv2d_11/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_11/add/ReadVariableOp0sequential_3/masked_conv2d_11/add/ReadVariableOp2d
0sequential_3/masked_conv2d_12/Mul/ReadVariableOp0sequential_3/masked_conv2d_12/Mul/ReadVariableOp2d
0sequential_3/masked_conv2d_12/add/ReadVariableOp0sequential_3/masked_conv2d_12/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
}
(__inference_conv2d_1_layer_call_fn_42463

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_400552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_38761
masked_conv2d_16_input
masked_conv2d_16_38689
masked_conv2d_16_38691
masked_conv2d_16_38693
masked_conv2d_17_38721
masked_conv2d_17_38723
masked_conv2d_17_38725
masked_conv2d_18_38753
masked_conv2d_18_38755
masked_conv2d_18_38757
identity��(masked_conv2d_16/StatefulPartitionedCall�(masked_conv2d_17/StatefulPartitionedCall�(masked_conv2d_18/StatefulPartitionedCall�
(masked_conv2d_16/StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_16_inputmasked_conv2d_16_38689masked_conv2d_16_38691masked_conv2d_16_38693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_386762*
(masked_conv2d_16/StatefulPartitionedCall�
(masked_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_16/StatefulPartitionedCall:output:0masked_conv2d_17_38721masked_conv2d_17_38723masked_conv2d_17_38725*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_387082*
(masked_conv2d_17/StatefulPartitionedCall�
(masked_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall1masked_conv2d_17/StatefulPartitionedCall:output:0masked_conv2d_18_38753masked_conv2d_18_38755masked_conv2d_18_38757*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_387402*
(masked_conv2d_18/StatefulPartitionedCall�
IdentityIdentity1masked_conv2d_18/StatefulPartitionedCall:output:0)^masked_conv2d_16/StatefulPartitionedCall)^masked_conv2d_17/StatefulPartitionedCall)^masked_conv2d_18/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2T
(masked_conv2d_16/StatefulPartitionedCall(masked_conv2d_16/StatefulPartitionedCall2T
(masked_conv2d_17/StatefulPartitionedCall(masked_conv2d_17/StatefulPartitionedCall2T
(masked_conv2d_18/StatefulPartitionedCall(masked_conv2d_18/StatefulPartitionedCall:h d
0
_output_shapes
:����������
0
_user_specified_namemasked_conv2d_16_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_43396

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�@*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�@2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:@*
dtype02
add/ReadVariableOpz
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:����������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_41684

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�

�
,__inference_sequential_1_layer_call_fn_37943
masked_conv2d_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmasked_conv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_379222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:����������
/
_user_specified_namemasked_conv2d_4_input:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
,__inference_sequential_2_layer_call_fn_42746

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_381452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_1_layer_call_fn_41880

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_1_layer_call_and_return_conditional_losses_393252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
0__inference_residual_block_6_layer_call_fn_42423

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_6_layer_call_and_return_conditional_losses_399502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�.
�
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42169

inputs=
9sequential_4_masked_conv2d_13_mul_readvariableop_resource'
#sequential_4_masked_conv2d_13_mul_y=
9sequential_4_masked_conv2d_13_add_readvariableop_resource=
9sequential_4_masked_conv2d_14_mul_readvariableop_resource'
#sequential_4_masked_conv2d_14_mul_y=
9sequential_4_masked_conv2d_14_add_readvariableop_resource=
9sequential_4_masked_conv2d_15_mul_readvariableop_resource'
#sequential_4_masked_conv2d_15_mul_y=
9sequential_4_masked_conv2d_15_add_readvariableop_resource
identity��0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�0sequential_4/masked_conv2d_13/add/ReadVariableOp�0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�0sequential_4/masked_conv2d_14/add/ReadVariableOp�0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�0sequential_4/masked_conv2d_15/add/ReadVariableOp�
0sequential_4/masked_conv2d_13/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_13/MulMul8sequential_4/masked_conv2d_13/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_13_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_4/masked_conv2d_13/Mul�
$sequential_4/masked_conv2d_13/Conv2DConv2Dinputs%sequential_4/masked_conv2d_13/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_13/Conv2D�
0sequential_4/masked_conv2d_13/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_13_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_13/add/ReadVariableOp�
!sequential_4/masked_conv2d_13/addAddV2-sequential_4/masked_conv2d_13/Conv2D:output:08sequential_4/masked_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_13/add�
0sequential_4/masked_conv2d_14/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_14/MulMul8sequential_4/masked_conv2d_14/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_14_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_4/masked_conv2d_14/Mul�
$sequential_4/masked_conv2d_14/Conv2DConv2D%sequential_4/masked_conv2d_13/add:z:0%sequential_4/masked_conv2d_14/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_14/Conv2D�
0sequential_4/masked_conv2d_14/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_14_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_4/masked_conv2d_14/add/ReadVariableOp�
!sequential_4/masked_conv2d_14/addAddV2-sequential_4/masked_conv2d_14/Conv2D:output:08sequential_4/masked_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_4/masked_conv2d_14/add�
0sequential_4/masked_conv2d_15/Mul/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp�
!sequential_4/masked_conv2d_15/MulMul8sequential_4/masked_conv2d_15/Mul/ReadVariableOp:value:0#sequential_4_masked_conv2d_15_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_4/masked_conv2d_15/Mul�
$sequential_4/masked_conv2d_15/Conv2DConv2D%sequential_4/masked_conv2d_14/add:z:0%sequential_4/masked_conv2d_15/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_4/masked_conv2d_15/Conv2D�
0sequential_4/masked_conv2d_15/add/ReadVariableOpReadVariableOp9sequential_4_masked_conv2d_15_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_4/masked_conv2d_15/add/ReadVariableOp�
!sequential_4/masked_conv2d_15/addAddV2-sequential_4/masked_conv2d_15/Conv2D:output:08sequential_4/masked_conv2d_15/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_4/masked_conv2d_15/add}
addAddV2%sequential_4/masked_conv2d_15/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_4/masked_conv2d_13/Mul/ReadVariableOp1^sequential_4/masked_conv2d_13/add/ReadVariableOp1^sequential_4/masked_conv2d_14/Mul/ReadVariableOp1^sequential_4/masked_conv2d_14/add/ReadVariableOp1^sequential_4/masked_conv2d_15/Mul/ReadVariableOp1^sequential_4/masked_conv2d_15/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_4/masked_conv2d_13/Mul/ReadVariableOp0sequential_4/masked_conv2d_13/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_13/add/ReadVariableOp0sequential_4/masked_conv2d_13/add/ReadVariableOp2d
0sequential_4/masked_conv2d_14/Mul/ReadVariableOp0sequential_4/masked_conv2d_14/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_14/add/ReadVariableOp0sequential_4/masked_conv2d_14/add/ReadVariableOp2d
0sequential_4/masked_conv2d_15/Mul/ReadVariableOp0sequential_4/masked_conv2d_15/Mul/ReadVariableOp2d
0sequential_4/masked_conv2d_15/add/ReadVariableOp0sequential_4/masked_conv2d_15/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�

�
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_38740

inputs
mul_readvariableop_resource	
mul_y
add_readvariableop_resource
identity��Mul/ReadVariableOp�add/ReadVariableOp�
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Mul/ReadVariableOpf
MulMulMul/ReadVariableOp:value:0mul_y*
T0*'
_output_shapes
:@�2
Mul�
Conv2DConv2DinputsMul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOp{
addAddV2Conv2D:output:0add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:0^Mul/ReadVariableOp^add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:���������@:::2(
Mul/ReadVariableOpMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:,(
&
_output_shapes
:
�.
�
K__inference_residual_block_6_layer_call_and_return_conditional_losses_39950

inputs=
9sequential_6_masked_conv2d_19_mul_readvariableop_resource'
#sequential_6_masked_conv2d_19_mul_y=
9sequential_6_masked_conv2d_19_add_readvariableop_resource=
9sequential_6_masked_conv2d_20_mul_readvariableop_resource'
#sequential_6_masked_conv2d_20_mul_y=
9sequential_6_masked_conv2d_20_add_readvariableop_resource=
9sequential_6_masked_conv2d_21_mul_readvariableop_resource'
#sequential_6_masked_conv2d_21_mul_y=
9sequential_6_masked_conv2d_21_add_readvariableop_resource
identity��0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�0sequential_6/masked_conv2d_19/add/ReadVariableOp�0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�0sequential_6/masked_conv2d_20/add/ReadVariableOp�0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�0sequential_6/masked_conv2d_21/add/ReadVariableOp�
0sequential_6/masked_conv2d_19/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_mul_readvariableop_resource*'
_output_shapes
:�@*
dtype022
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_19/MulMul8sequential_6/masked_conv2d_19/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_19_mul_y*
T0*'
_output_shapes
:�@2#
!sequential_6/masked_conv2d_19/Mul�
$sequential_6/masked_conv2d_19/Conv2DConv2Dinputs%sequential_6/masked_conv2d_19/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_19/Conv2D�
0sequential_6/masked_conv2d_19/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_19_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_19/add/ReadVariableOp�
!sequential_6/masked_conv2d_19/addAddV2-sequential_6/masked_conv2d_19/Conv2D:output:08sequential_6/masked_conv2d_19/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_19/add�
0sequential_6/masked_conv2d_20/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_mul_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_20/MulMul8sequential_6/masked_conv2d_20/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_20_mul_y*
T0*&
_output_shapes
:@@2#
!sequential_6/masked_conv2d_20/Mul�
$sequential_6/masked_conv2d_20/Conv2DConv2D%sequential_6/masked_conv2d_19/add:z:0%sequential_6/masked_conv2d_20/Mul:z:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_20/Conv2D�
0sequential_6/masked_conv2d_20/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_20_add_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_6/masked_conv2d_20/add/ReadVariableOp�
!sequential_6/masked_conv2d_20/addAddV2-sequential_6/masked_conv2d_20/Conv2D:output:08sequential_6/masked_conv2d_20/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2#
!sequential_6/masked_conv2d_20/add�
0sequential_6/masked_conv2d_21/Mul/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_mul_readvariableop_resource*'
_output_shapes
:@�*
dtype022
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp�
!sequential_6/masked_conv2d_21/MulMul8sequential_6/masked_conv2d_21/Mul/ReadVariableOp:value:0#sequential_6_masked_conv2d_21_mul_y*
T0*'
_output_shapes
:@�2#
!sequential_6/masked_conv2d_21/Mul�
$sequential_6/masked_conv2d_21/Conv2DConv2D%sequential_6/masked_conv2d_20/add:z:0%sequential_6/masked_conv2d_21/Mul:z:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential_6/masked_conv2d_21/Conv2D�
0sequential_6/masked_conv2d_21/add/ReadVariableOpReadVariableOp9sequential_6_masked_conv2d_21_add_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential_6/masked_conv2d_21/add/ReadVariableOp�
!sequential_6/masked_conv2d_21/addAddV2-sequential_6/masked_conv2d_21/Conv2D:output:08sequential_6/masked_conv2d_21/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2#
!sequential_6/masked_conv2d_21/add}
addAddV2%sequential_6/masked_conv2d_21/add:z:0inputs*
T0*0
_output_shapes
:����������2
add�
IdentityIdentityadd:z:01^sequential_6/masked_conv2d_19/Mul/ReadVariableOp1^sequential_6/masked_conv2d_19/add/ReadVariableOp1^sequential_6/masked_conv2d_20/Mul/ReadVariableOp1^sequential_6/masked_conv2d_20/add/ReadVariableOp1^sequential_6/masked_conv2d_21/Mul/ReadVariableOp1^sequential_6/masked_conv2d_21/add/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*}
_input_shapesl
j:����������:::::::::2d
0sequential_6/masked_conv2d_19/Mul/ReadVariableOp0sequential_6/masked_conv2d_19/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_19/add/ReadVariableOp0sequential_6/masked_conv2d_19/add/ReadVariableOp2d
0sequential_6/masked_conv2d_20/Mul/ReadVariableOp0sequential_6/masked_conv2d_20/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_20/add/ReadVariableOp0sequential_6/masked_conv2d_20/add/ReadVariableOp2d
0sequential_6/masked_conv2d_21/Mul/ReadVariableOp0sequential_6/masked_conv2d_21/Mul/ReadVariableOp2d
0sequential_6/masked_conv2d_21/add/ReadVariableOp0sequential_6/masked_conv2d_21/add/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������D
conv2d_18
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�&
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
�_default_save_signature
�__call__
+�&call_and_return_all_conditional_losses"�!
_tf_keras_network�!{"class_name": "Functional", "name": "PixelCnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "PixelCnn", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}, "name": "masked_conv2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block", "inbound_nodes": [[["masked_conv2d", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_1", "inbound_nodes": [[["residual_block", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_2", "inbound_nodes": [[["residual_block_1", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_3", "inbound_nodes": [[["residual_block_2", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_4", "inbound_nodes": [[["residual_block_3", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_5", "inbound_nodes": [[["residual_block_4", 0, 0, {}]]]}, {"class_name": "ResidualBlock", "config": {"layer was saved without config": true}, "name": "residual_block_6", "inbound_nodes": [[["residual_block_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["residual_block_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv2d_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�
w
b
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
�
forward
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
forward
regularization_losses
trainable_variables
 	variables
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
"forward
#regularization_losses
$trainable_variables
%	variables
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
'forward
(regularization_losses
)trainable_variables
*	variables
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
,forward
-regularization_losses
.trainable_variables
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
1forward
2regularization_losses
3trainable_variables
4	variables
5	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�
6forward
7regularization_losses
8trainable_variables
9	variables
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ResidualBlock", "name": "residual_block_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
�	

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�	

Akernel
Bbias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
Giter
	Hdecay
Ilearning_rate
Jmomentum
Krho
rms�
rms�
;rms�
<rms�
Arms�
Brms�
Lrms�
Mrms�
Nrms�
Orms�
Prms�
Qrms�
Rrms�
Srms�
Trms�
Urms�
Vrms�
Wrms�
Xrms�
Yrms�
Zrms�
[rms�
\rms�
]rms�
^rms�
_rms�
`rms�
arms�
brms�
crms�
drms�
erms�
frms�
grms�
hrms�
irms�
jrms�
krms�
lrms�
mrms�
nrms�
orms�
prms�
qrms�
rrms�
srms�
trms�
urms�"
	optimizer
 "
trackable_list_wrapper
�
0
1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
`22
a23
b24
c25
d26
e27
f28
g29
h30
i31
j32
k33
l34
m35
n36
o37
p38
q39
r40
s41
t42
u43
;44
<45
A46
B47"
trackable_list_wrapper
�
0
1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
`22
a23
b24
c25
d26
e27
f28
g29
h30
i31
j32
k33
l34
m35
n36
o37
p38
q39
r40
s41
t42
u43
;44
<45
A46
B47"
trackable_list_wrapper
�
vmetrics
wlayer_regularization_losses
regularization_losses
trainable_variables
	variables

xlayers
ynon_trainable_variables
zlayer_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
*:(�2masked_conv2d/w
:�2masked_conv2d/b
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
{metrics
|layer_regularization_losses
regularization_losses
trainable_variables
	variables

}layers
~non_trainable_variables
layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_1_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
L0
M1
N2
O3
P4
Q5"
trackable_list_wrapper
J
L0
M1
N2
O3
P4
Q5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
regularization_losses
trainable_variables
	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_4_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
regularization_losses
trainable_variables
 	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_7_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
X0
Y1
Z2
[3
\4
]5"
trackable_list_wrapper
J
X0
Y1
Z2
[3
\4
]5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
#regularization_losses
$trainable_variables
%	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_10_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
^0
_1
`2
a3
b4
c5"
trackable_list_wrapper
J
^0
_1
`2
a3
b4
c5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
(regularization_losses
)trainable_variables
*	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_13_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
-regularization_losses
.trainable_variables
/	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_16_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
j0
k1
l2
m3
n4
o5"
trackable_list_wrapper
J
j0
k1
l2
m3
n4
o5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
2regularization_losses
3trainable_variables
4	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�layer_with_weights-2
�layer-2
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "masked_conv2d_19_input"}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}, {"class_name": "MaskedConv2D", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
 "
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
7regularization_losses
8trainable_variables
9	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&�@2conv2d/kernel
:@2conv2d/bias
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
=regularization_losses
>trainable_variables
?	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@2conv2d_1/kernel
:2conv2d_1/bias
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
Cregularization_losses
Dtrainable_variables
E	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
,:*�@2masked_conv2d_1/w
:@2masked_conv2d_1/b
+:)@@2masked_conv2d_2/w
:@2masked_conv2d_2/b
,:*@�2masked_conv2d_3/w
 :�2masked_conv2d_3/b
,:*�@2masked_conv2d_4/w
:@2masked_conv2d_4/b
+:)@@2masked_conv2d_5/w
:@2masked_conv2d_5/b
,:*@�2masked_conv2d_6/w
 :�2masked_conv2d_6/b
,:*�@2masked_conv2d_7/w
:@2masked_conv2d_7/b
+:)@@2masked_conv2d_8/w
:@2masked_conv2d_8/b
,:*@�2masked_conv2d_9/w
 :�2masked_conv2d_9/b
-:+�@2masked_conv2d_10/w
 :@2masked_conv2d_10/b
,:*@@2masked_conv2d_11/w
 :@2masked_conv2d_11/b
-:+@�2masked_conv2d_12/w
!:�2masked_conv2d_12/b
-:+�@2masked_conv2d_13/w
 :@2masked_conv2d_13/b
,:*@@2masked_conv2d_14/w
 :@2masked_conv2d_14/b
-:+@�2masked_conv2d_15/w
!:�2masked_conv2d_15/b
-:+�@2masked_conv2d_16/w
 :@2masked_conv2d_16/b
,:*@@2masked_conv2d_17/w
 :@2masked_conv2d_17/b
-:+@�2masked_conv2d_18/w
!:�2masked_conv2d_18/b
-:+�@2masked_conv2d_19/w
 :@2masked_conv2d_19/b
,:*@@2masked_conv2d_20/w
 :@2masked_conv2d_20/b
-:+@�2masked_conv2d_21/w
!:�2masked_conv2d_21/b
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
n
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
10"
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
�
Lw
Mb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
Nw
Ob
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
Pw
Qb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
L0
M1
N2
O3
P4
Q5"
trackable_list_wrapper
J
L0
M1
N2
O3
P4
Q5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
Rw
Sb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
Tw
Ub
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
Vw
Wb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
Xw
Yb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
Zw
[b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
\w
]b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
X0
Y1
Z2
[3
\4
]5"
trackable_list_wrapper
J
X0
Y1
Z2
[3
\4
]5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
^w
_b
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
`w
ab
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
bw
cb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
^0
_1
`2
a3
b4
c5"
trackable_list_wrapper
J
^0
_1
`2
a3
b4
c5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
dw
eb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
fw
gb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
hw
ib
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
jw
kb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
lw
mb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
nw
ob
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
j0
k1
l2
m3
n4
o5"
trackable_list_wrapper
J
j0
k1
l2
m3
n4
o5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
pw
qb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 128]}}
�
rw
sb
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
�
tw
ub
�regularization_losses
�trainable_variables
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaskedConv2D", "name": "masked_conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
60"
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
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
�
�metrics
 �layer_regularization_losses
�regularization_losses
�trainable_variables
�	variables
�layers
�non_trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
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
4:2�2RMSprop/masked_conv2d/w/rms
(:&�2RMSprop/masked_conv2d/b/rms
2:0�@2RMSprop/conv2d/kernel/rms
#:!@2RMSprop/conv2d/bias/rms
3:1@2RMSprop/conv2d_1/kernel/rms
%:#2RMSprop/conv2d_1/bias/rms
6:4�@2RMSprop/masked_conv2d_1/w/rms
):'@2RMSprop/masked_conv2d_1/b/rms
5:3@@2RMSprop/masked_conv2d_2/w/rms
):'@2RMSprop/masked_conv2d_2/b/rms
6:4@�2RMSprop/masked_conv2d_3/w/rms
*:(�2RMSprop/masked_conv2d_3/b/rms
6:4�@2RMSprop/masked_conv2d_4/w/rms
):'@2RMSprop/masked_conv2d_4/b/rms
5:3@@2RMSprop/masked_conv2d_5/w/rms
):'@2RMSprop/masked_conv2d_5/b/rms
6:4@�2RMSprop/masked_conv2d_6/w/rms
*:(�2RMSprop/masked_conv2d_6/b/rms
6:4�@2RMSprop/masked_conv2d_7/w/rms
):'@2RMSprop/masked_conv2d_7/b/rms
5:3@@2RMSprop/masked_conv2d_8/w/rms
):'@2RMSprop/masked_conv2d_8/b/rms
6:4@�2RMSprop/masked_conv2d_9/w/rms
*:(�2RMSprop/masked_conv2d_9/b/rms
7:5�@2RMSprop/masked_conv2d_10/w/rms
*:(@2RMSprop/masked_conv2d_10/b/rms
6:4@@2RMSprop/masked_conv2d_11/w/rms
*:(@2RMSprop/masked_conv2d_11/b/rms
7:5@�2RMSprop/masked_conv2d_12/w/rms
+:)�2RMSprop/masked_conv2d_12/b/rms
7:5�@2RMSprop/masked_conv2d_13/w/rms
*:(@2RMSprop/masked_conv2d_13/b/rms
6:4@@2RMSprop/masked_conv2d_14/w/rms
*:(@2RMSprop/masked_conv2d_14/b/rms
7:5@�2RMSprop/masked_conv2d_15/w/rms
+:)�2RMSprop/masked_conv2d_15/b/rms
7:5�@2RMSprop/masked_conv2d_16/w/rms
*:(@2RMSprop/masked_conv2d_16/b/rms
6:4@@2RMSprop/masked_conv2d_17/w/rms
*:(@2RMSprop/masked_conv2d_17/b/rms
7:5@�2RMSprop/masked_conv2d_18/w/rms
+:)�2RMSprop/masked_conv2d_18/b/rms
7:5�@2RMSprop/masked_conv2d_19/w/rms
*:(@2RMSprop/masked_conv2d_19/b/rms
6:4@@2RMSprop/masked_conv2d_20/w/rms
*:(@2RMSprop/masked_conv2d_20/b/rms
7:5@�2RMSprop/masked_conv2d_21/w/rms
+:)�2RMSprop/masked_conv2d_21/b/rms
�2�
 __inference__wrapped_model_37545�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *.�+
)�&
input_1���������
�2�
(__inference_PixelCnn_layer_call_fn_41527
(__inference_PixelCnn_layer_call_fn_40825
(__inference_PixelCnn_layer_call_fn_40526
(__inference_PixelCnn_layer_call_fn_41672�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41382
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41181
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40072
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40226�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_masked_conv2d_layer_call_fn_41695�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_41684�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_residual_block_layer_call_fn_41799
.__inference_residual_block_layer_call_fn_41776�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_residual_block_layer_call_and_return_conditional_losses_41753
I__inference_residual_block_layer_call_and_return_conditional_losses_41724�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_1_layer_call_fn_41880
0__inference_residual_block_1_layer_call_fn_41903�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41857
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41828�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_2_layer_call_fn_42007
0__inference_residual_block_2_layer_call_fn_41984�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41961
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41932�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_3_layer_call_fn_42088
0__inference_residual_block_3_layer_call_fn_42111�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42036
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42065�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_4_layer_call_fn_42215
0__inference_residual_block_4_layer_call_fn_42192�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42140
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42169�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_5_layer_call_fn_42319
0__inference_residual_block_5_layer_call_fn_42296�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42244
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42273�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_residual_block_6_layer_call_fn_42400
0__inference_residual_block_6_layer_call_fn_42423�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42348
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42377�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_conv2d_layer_call_fn_42443�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_42434�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_conv2d_1_layer_call_fn_42463�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42454�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_40980input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_sequential_layer_call_fn_42542
*__inference_sequential_layer_call_fn_42565
*__inference_sequential_layer_call_fn_37720
*__inference_sequential_layer_call_fn_37768�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_sequential_layer_call_and_return_conditional_losses_42519
E__inference_sequential_layer_call_and_return_conditional_losses_42491
E__inference_sequential_layer_call_and_return_conditional_losses_37646
E__inference_sequential_layer_call_and_return_conditional_losses_37671�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_1_layer_call_fn_37991
,__inference_sequential_1_layer_call_fn_37943
,__inference_sequential_1_layer_call_fn_42644
,__inference_sequential_1_layer_call_fn_42667�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_1_layer_call_and_return_conditional_losses_42621
G__inference_sequential_1_layer_call_and_return_conditional_losses_37869
G__inference_sequential_1_layer_call_and_return_conditional_losses_42593
G__inference_sequential_1_layer_call_and_return_conditional_losses_37894�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_2_layer_call_fn_38214
,__inference_sequential_2_layer_call_fn_42746
,__inference_sequential_2_layer_call_fn_38166
,__inference_sequential_2_layer_call_fn_42769�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_2_layer_call_and_return_conditional_losses_42695
G__inference_sequential_2_layer_call_and_return_conditional_losses_42723
G__inference_sequential_2_layer_call_and_return_conditional_losses_38092
G__inference_sequential_2_layer_call_and_return_conditional_losses_38117�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_3_layer_call_fn_38437
,__inference_sequential_3_layer_call_fn_42848
,__inference_sequential_3_layer_call_fn_42871
,__inference_sequential_3_layer_call_fn_38389�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_3_layer_call_and_return_conditional_losses_42825
G__inference_sequential_3_layer_call_and_return_conditional_losses_38315
G__inference_sequential_3_layer_call_and_return_conditional_losses_42797
G__inference_sequential_3_layer_call_and_return_conditional_losses_38340�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_4_layer_call_fn_42973
,__inference_sequential_4_layer_call_fn_38660
,__inference_sequential_4_layer_call_fn_42950
,__inference_sequential_4_layer_call_fn_38612�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_4_layer_call_and_return_conditional_losses_38538
G__inference_sequential_4_layer_call_and_return_conditional_losses_42927
G__inference_sequential_4_layer_call_and_return_conditional_losses_38563
G__inference_sequential_4_layer_call_and_return_conditional_losses_42899�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_5_layer_call_fn_38883
,__inference_sequential_5_layer_call_fn_43075
,__inference_sequential_5_layer_call_fn_38835
,__inference_sequential_5_layer_call_fn_43052�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_5_layer_call_and_return_conditional_losses_38786
G__inference_sequential_5_layer_call_and_return_conditional_losses_43001
G__inference_sequential_5_layer_call_and_return_conditional_losses_43029
G__inference_sequential_5_layer_call_and_return_conditional_losses_38761�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_6_layer_call_fn_39058
,__inference_sequential_6_layer_call_fn_43154
,__inference_sequential_6_layer_call_fn_43177
,__inference_sequential_6_layer_call_fn_39106�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_6_layer_call_and_return_conditional_losses_43103
G__inference_sequential_6_layer_call_and_return_conditional_losses_43131
G__inference_sequential_6_layer_call_and_return_conditional_losses_38984
G__inference_sequential_6_layer_call_and_return_conditional_losses_39009�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_masked_conv2d_1_layer_call_fn_43200�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_43189�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_2_layer_call_fn_43223�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_43212�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_3_layer_call_fn_43246�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_43235�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_4_layer_call_fn_43269�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_43258�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_5_layer_call_fn_43292�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_43281�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_6_layer_call_fn_43315�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_43304�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_7_layer_call_fn_43338�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_43327�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_8_layer_call_fn_43361�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_43350�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_masked_conv2d_9_layer_call_fn_43384�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_43373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_10_layer_call_fn_43407�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_43396�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_11_layer_call_fn_43430�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_43419�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_12_layer_call_fn_43453�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_43442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_13_layer_call_fn_43476�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_43465�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_14_layer_call_fn_43499�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_43488�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_15_layer_call_fn_43522�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_43511�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_16_layer_call_fn_43545�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_43534�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_17_layer_call_fn_43568�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_43557�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_18_layer_call_fn_43591�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_43580�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_19_layer_call_fn_43614�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_43603�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_20_layer_call_fn_43637�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_43626�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_masked_conv2d_21_layer_call_fn_43660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_43649�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17
J

Const_18
J

Const_19
J

Const_20
J

Const_21�
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40072�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB@�=
6�3
)�&
input_1���������
p

 
� "-�*
#� 
0���������
� �
C__inference_PixelCnn_layer_call_and_return_conditional_losses_40226�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB@�=
6�3
)�&
input_1���������
p 

 
� "-�*
#� 
0���������
� �
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41181�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB?�<
5�2
(�%
inputs���������
p

 
� "-�*
#� 
0���������
� �
C__inference_PixelCnn_layer_call_and_return_conditional_losses_41382�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB?�<
5�2
(�%
inputs���������
p 

 
� "-�*
#� 
0���������
� �
(__inference_PixelCnn_layer_call_fn_40526�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB@�=
6�3
)�&
input_1���������
p

 
� " �����������
(__inference_PixelCnn_layer_call_fn_40825�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB@�=
6�3
)�&
input_1���������
p 

 
� " �����������
(__inference_PixelCnn_layer_call_fn_41527�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB?�<
5�2
(�%
inputs���������
p

 
� " �����������
(__inference_PixelCnn_layer_call_fn_41672�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB?�<
5�2
(�%
inputs���������
p 

 
� " �����������
 __inference__wrapped_model_37545�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<AB8�5
.�+
)�&
input_1���������
� ";�8
6
conv2d_1*�'
conv2d_1����������
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42454lAB7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������
� �
(__inference_conv2d_1_layer_call_fn_42463_AB7�4
-�*
(�%
inputs���������@
� " �����������
A__inference_conv2d_layer_call_and_return_conditional_losses_42434m;<8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
&__inference_conv2d_layer_call_fn_42443`;<8�5
.�+
)�&
inputs����������
� " ����������@�
K__inference_masked_conv2d_10_layer_call_and_return_conditional_losses_43396o^�_8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_10_layer_call_fn_43407b^�_8�5
.�+
)�&
inputs����������
� " ����������@�
K__inference_masked_conv2d_11_layer_call_and_return_conditional_losses_43419n`�a7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_11_layer_call_fn_43430a`�a7�4
-�*
(�%
inputs���������@
� " ����������@�
K__inference_masked_conv2d_12_layer_call_and_return_conditional_losses_43442ob�c7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
0__inference_masked_conv2d_12_layer_call_fn_43453bb�c7�4
-�*
(�%
inputs���������@
� "!������������
K__inference_masked_conv2d_13_layer_call_and_return_conditional_losses_43465od�e8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_13_layer_call_fn_43476bd�e8�5
.�+
)�&
inputs����������
� " ����������@�
K__inference_masked_conv2d_14_layer_call_and_return_conditional_losses_43488nf�g7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_14_layer_call_fn_43499af�g7�4
-�*
(�%
inputs���������@
� " ����������@�
K__inference_masked_conv2d_15_layer_call_and_return_conditional_losses_43511oh�i7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
0__inference_masked_conv2d_15_layer_call_fn_43522bh�i7�4
-�*
(�%
inputs���������@
� "!������������
K__inference_masked_conv2d_16_layer_call_and_return_conditional_losses_43534oj�k8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_16_layer_call_fn_43545bj�k8�5
.�+
)�&
inputs����������
� " ����������@�
K__inference_masked_conv2d_17_layer_call_and_return_conditional_losses_43557nl�m7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_17_layer_call_fn_43568al�m7�4
-�*
(�%
inputs���������@
� " ����������@�
K__inference_masked_conv2d_18_layer_call_and_return_conditional_losses_43580on�o7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
0__inference_masked_conv2d_18_layer_call_fn_43591bn�o7�4
-�*
(�%
inputs���������@
� "!������������
K__inference_masked_conv2d_19_layer_call_and_return_conditional_losses_43603op�q8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_19_layer_call_fn_43614bp�q8�5
.�+
)�&
inputs����������
� " ����������@�
J__inference_masked_conv2d_1_layer_call_and_return_conditional_losses_43189oL�M8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_1_layer_call_fn_43200bL�M8�5
.�+
)�&
inputs����������
� " ����������@�
K__inference_masked_conv2d_20_layer_call_and_return_conditional_losses_43626nr�s7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
0__inference_masked_conv2d_20_layer_call_fn_43637ar�s7�4
-�*
(�%
inputs���������@
� " ����������@�
K__inference_masked_conv2d_21_layer_call_and_return_conditional_losses_43649ot�u7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
0__inference_masked_conv2d_21_layer_call_fn_43660bt�u7�4
-�*
(�%
inputs���������@
� "!������������
J__inference_masked_conv2d_2_layer_call_and_return_conditional_losses_43212nN�O7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_2_layer_call_fn_43223aN�O7�4
-�*
(�%
inputs���������@
� " ����������@�
J__inference_masked_conv2d_3_layer_call_and_return_conditional_losses_43235oP�Q7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
/__inference_masked_conv2d_3_layer_call_fn_43246bP�Q7�4
-�*
(�%
inputs���������@
� "!������������
J__inference_masked_conv2d_4_layer_call_and_return_conditional_losses_43258oR�S8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_4_layer_call_fn_43269bR�S8�5
.�+
)�&
inputs����������
� " ����������@�
J__inference_masked_conv2d_5_layer_call_and_return_conditional_losses_43281nT�U7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_5_layer_call_fn_43292aT�U7�4
-�*
(�%
inputs���������@
� " ����������@�
J__inference_masked_conv2d_6_layer_call_and_return_conditional_losses_43304oV�W7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
/__inference_masked_conv2d_6_layer_call_fn_43315bV�W7�4
-�*
(�%
inputs���������@
� "!������������
J__inference_masked_conv2d_7_layer_call_and_return_conditional_losses_43327oX�Y8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_7_layer_call_fn_43338bX�Y8�5
.�+
)�&
inputs����������
� " ����������@�
J__inference_masked_conv2d_8_layer_call_and_return_conditional_losses_43350nZ�[7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
/__inference_masked_conv2d_8_layer_call_fn_43361aZ�[7�4
-�*
(�%
inputs���������@
� " ����������@�
J__inference_masked_conv2d_9_layer_call_and_return_conditional_losses_43373o\�]7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
/__inference_masked_conv2d_9_layer_call_fn_43384b\�]7�4
-�*
(�%
inputs���������@
� "!������������
H__inference_masked_conv2d_layer_call_and_return_conditional_losses_41684o�7�4
-�*
(�%
inputs���������
� ".�+
$�!
0����������
� �
-__inference_masked_conv2d_layer_call_fn_41695b�7�4
-�*
(�%
inputs���������
� "!������������
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41828|R�ST�UV�W<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_1_layer_call_and_return_conditional_losses_41857|R�ST�UV�W<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_1_layer_call_fn_41880oR�ST�UV�W<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_1_layer_call_fn_41903oR�ST�UV�W<�9
2�/
)�&
inputs����������
p 
� "!������������
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41932|X�YZ�[\�]<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_2_layer_call_and_return_conditional_losses_41961|X�YZ�[\�]<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_2_layer_call_fn_41984oX�YZ�[\�]<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_2_layer_call_fn_42007oX�YZ�[\�]<�9
2�/
)�&
inputs����������
p 
� "!������������
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42036|^�_`�ab�c<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_3_layer_call_and_return_conditional_losses_42065|^�_`�ab�c<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_3_layer_call_fn_42088o^�_`�ab�c<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_3_layer_call_fn_42111o^�_`�ab�c<�9
2�/
)�&
inputs����������
p 
� "!������������
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42140|d�ef�gh�i<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_4_layer_call_and_return_conditional_losses_42169|d�ef�gh�i<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_4_layer_call_fn_42192od�ef�gh�i<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_4_layer_call_fn_42215od�ef�gh�i<�9
2�/
)�&
inputs����������
p 
� "!������������
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42244|j�kl�mn�o<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_5_layer_call_and_return_conditional_losses_42273|j�kl�mn�o<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_5_layer_call_fn_42296oj�kl�mn�o<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_5_layer_call_fn_42319oj�kl�mn�o<�9
2�/
)�&
inputs����������
p 
� "!������������
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42348|p�qr�st�u<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
K__inference_residual_block_6_layer_call_and_return_conditional_losses_42377|p�qr�st�u<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
0__inference_residual_block_6_layer_call_fn_42400op�qr�st�u<�9
2�/
)�&
inputs����������
p
� "!������������
0__inference_residual_block_6_layer_call_fn_42423op�qr�st�u<�9
2�/
)�&
inputs����������
p 
� "!������������
I__inference_residual_block_layer_call_and_return_conditional_losses_41724|L�MN�OP�Q<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
I__inference_residual_block_layer_call_and_return_conditional_losses_41753|L�MN�OP�Q<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
.__inference_residual_block_layer_call_fn_41776oL�MN�OP�Q<�9
2�/
)�&
inputs����������
p
� "!������������
.__inference_residual_block_layer_call_fn_41799oL�MN�OP�Q<�9
2�/
)�&
inputs����������
p 
� "!������������
G__inference_sequential_1_layer_call_and_return_conditional_losses_37869�R�ST�UV�WO�L
E�B
8�5
masked_conv2d_4_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_37894�R�ST�UV�WO�L
E�B
8�5
masked_conv2d_4_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_42593�R�ST�UV�W@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_42621�R�ST�UV�W@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_1_layer_call_fn_37943�R�ST�UV�WO�L
E�B
8�5
masked_conv2d_4_input����������
p

 
� "!������������
,__inference_sequential_1_layer_call_fn_37991�R�ST�UV�WO�L
E�B
8�5
masked_conv2d_4_input����������
p 

 
� "!������������
,__inference_sequential_1_layer_call_fn_42644sR�ST�UV�W@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_1_layer_call_fn_42667sR�ST�UV�W@�=
6�3
)�&
inputs����������
p 

 
� "!������������
G__inference_sequential_2_layer_call_and_return_conditional_losses_38092�X�YZ�[\�]O�L
E�B
8�5
masked_conv2d_7_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_38117�X�YZ�[\�]O�L
E�B
8�5
masked_conv2d_7_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_42695�X�YZ�[\�]@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_42723�X�YZ�[\�]@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_2_layer_call_fn_38166�X�YZ�[\�]O�L
E�B
8�5
masked_conv2d_7_input����������
p

 
� "!������������
,__inference_sequential_2_layer_call_fn_38214�X�YZ�[\�]O�L
E�B
8�5
masked_conv2d_7_input����������
p 

 
� "!������������
,__inference_sequential_2_layer_call_fn_42746sX�YZ�[\�]@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_2_layer_call_fn_42769sX�YZ�[\�]@�=
6�3
)�&
inputs����������
p 

 
� "!������������
G__inference_sequential_3_layer_call_and_return_conditional_losses_38315�^�_`�ab�cP�M
F�C
9�6
masked_conv2d_10_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_38340�^�_`�ab�cP�M
F�C
9�6
masked_conv2d_10_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_42797�^�_`�ab�c@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_3_layer_call_and_return_conditional_losses_42825�^�_`�ab�c@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_3_layer_call_fn_38389�^�_`�ab�cP�M
F�C
9�6
masked_conv2d_10_input����������
p

 
� "!������������
,__inference_sequential_3_layer_call_fn_38437�^�_`�ab�cP�M
F�C
9�6
masked_conv2d_10_input����������
p 

 
� "!������������
,__inference_sequential_3_layer_call_fn_42848s^�_`�ab�c@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_3_layer_call_fn_42871s^�_`�ab�c@�=
6�3
)�&
inputs����������
p 

 
� "!������������
G__inference_sequential_4_layer_call_and_return_conditional_losses_38538�d�ef�gh�iP�M
F�C
9�6
masked_conv2d_13_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_38563�d�ef�gh�iP�M
F�C
9�6
masked_conv2d_13_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_42899�d�ef�gh�i@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_42927�d�ef�gh�i@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_4_layer_call_fn_38612�d�ef�gh�iP�M
F�C
9�6
masked_conv2d_13_input����������
p

 
� "!������������
,__inference_sequential_4_layer_call_fn_38660�d�ef�gh�iP�M
F�C
9�6
masked_conv2d_13_input����������
p 

 
� "!������������
,__inference_sequential_4_layer_call_fn_42950sd�ef�gh�i@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_4_layer_call_fn_42973sd�ef�gh�i@�=
6�3
)�&
inputs����������
p 

 
� "!������������
G__inference_sequential_5_layer_call_and_return_conditional_losses_38761�j�kl�mn�oP�M
F�C
9�6
masked_conv2d_16_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_38786�j�kl�mn�oP�M
F�C
9�6
masked_conv2d_16_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_43001�j�kl�mn�o@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_43029�j�kl�mn�o@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_5_layer_call_fn_38835�j�kl�mn�oP�M
F�C
9�6
masked_conv2d_16_input����������
p

 
� "!������������
,__inference_sequential_5_layer_call_fn_38883�j�kl�mn�oP�M
F�C
9�6
masked_conv2d_16_input����������
p 

 
� "!������������
,__inference_sequential_5_layer_call_fn_43052sj�kl�mn�o@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_5_layer_call_fn_43075sj�kl�mn�o@�=
6�3
)�&
inputs����������
p 

 
� "!������������
G__inference_sequential_6_layer_call_and_return_conditional_losses_38984�p�qr�st�uP�M
F�C
9�6
masked_conv2d_19_input����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_39009�p�qr�st�uP�M
F�C
9�6
masked_conv2d_19_input����������
p 

 
� ".�+
$�!
0����������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_43103�p�qr�st�u@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
G__inference_sequential_6_layer_call_and_return_conditional_losses_43131�p�qr�st�u@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
,__inference_sequential_6_layer_call_fn_39058�p�qr�st�uP�M
F�C
9�6
masked_conv2d_19_input����������
p

 
� "!������������
,__inference_sequential_6_layer_call_fn_39106�p�qr�st�uP�M
F�C
9�6
masked_conv2d_19_input����������
p 

 
� "!������������
,__inference_sequential_6_layer_call_fn_43154sp�qr�st�u@�=
6�3
)�&
inputs����������
p

 
� "!������������
,__inference_sequential_6_layer_call_fn_43177sp�qr�st�u@�=
6�3
)�&
inputs����������
p 

 
� "!������������
E__inference_sequential_layer_call_and_return_conditional_losses_37646�L�MN�OP�QO�L
E�B
8�5
masked_conv2d_1_input����������
p

 
� ".�+
$�!
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_37671�L�MN�OP�QO�L
E�B
8�5
masked_conv2d_1_input����������
p 

 
� ".�+
$�!
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_42491�L�MN�OP�Q@�=
6�3
)�&
inputs����������
p

 
� ".�+
$�!
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_42519�L�MN�OP�Q@�=
6�3
)�&
inputs����������
p 

 
� ".�+
$�!
0����������
� �
*__inference_sequential_layer_call_fn_37720�L�MN�OP�QO�L
E�B
8�5
masked_conv2d_1_input����������
p

 
� "!������������
*__inference_sequential_layer_call_fn_37768�L�MN�OP�QO�L
E�B
8�5
masked_conv2d_1_input����������
p 

 
� "!������������
*__inference_sequential_layer_call_fn_42542sL�MN�OP�Q@�=
6�3
)�&
inputs����������
p

 
� "!������������
*__inference_sequential_layer_call_fn_42565sL�MN�OP�Q@�=
6�3
)�&
inputs����������
p 

 
� "!������������
#__inference_signature_wrapper_40980�\�L�MN�OP�QR�ST�UV�WX�YZ�[\�]^�_`�ab�cd�ef�gh�ij�kl�mn�op�qr�st�u;<ABC�@
� 
9�6
4
input_1)�&
input_1���������";�8
6
conv2d_1*�'
conv2d_1���������