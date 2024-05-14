### Deep Learning models can be used for a variety of complex tasks:

- Artificial Neural Networks for Regression and Classification
- Convolutional Neural Networks for Computer Vision
- Recurrent Neural Networks for Time Series Analysis
- Self Organizing Maps for Feature Extraction
- Deep Boltzmann Machines for Recommendation Systems
- Auto Encoders for Recommendation Systems

### Deep Learning vs Machine Learning:

Machine Learning it receives the data, executes the mathematical algorithm and outputs the result, in deep learning there is a hidden layer where each neuron receives all the parameters but does not use them all, each neuron performs an individual analysis of the data using only the parameters necessary for its mathematical algorithm, requiring an activation function to know which parameter is valid

### Training weights

- input values has weights
- $\hat{y}$ output value
- $y$ actual value
- cost function
- when $\hat{y} !== y$, use the cost function or the sum of cost function and change a weight from input values
- the goal is minimize the cost function
- curse of dimensionality
- Gradient Descent (cost function is convex, this means that SQUARED )
- ball roling / zig zaggy
- Stochastic Descent (cost function is NOT CONVEX)
- run one row at a time, find local minimum instead global minimum

### CNN

1. Convolution

- Input Image + Feature Detector = Feature Map
- Create many features maps to obtain one convolutrion layer
- ReLu break linearity
- Softmax & Cross-Entropy (Loss function)
- Cross-Entropy use logarithm

2. Max Pooling/downsampling

- pooled feature map with max number in feature map

3. Flattening

- converts the matrix to a array

4. Full Connection
