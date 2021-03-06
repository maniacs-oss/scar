#! /bin/bash

# SCAR - Serverless Container-aware ARchitectures
# Copyright (C) GRyCAP - I3M - UPV 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#Theano example from: http://deeplearning.net/software/theano/tutorial/adding.html#adding-two-matrices

cd /tmp

cat << EOF > helloworld.py
import theano
a = theano.tensor.vector() # declare variable
out = a + a ** 20               # build symbolic expression
f = theano.function([a], out)   # compile function
print(f([0, 1, 2]))
print('Computed something with Theano on AWS Lambda')
EOF

python helloworld.py



