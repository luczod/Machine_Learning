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

- Input Image(matrix) \* Feature/filter Detector(matrix) = Feature/filter Map(matrix)
- Column by column
- Create MANY features maps to obtain one convolutional layer
- ReLu break linearity
- Softmax uses the $\hat{y}$ output value
- Cross-Entropy (Loss function) > Mean Squared Error
- Cross-Entropy (logarithm): It handles very small numbers better and is better for classification

2. Max Pooling/Downsampling

- rotated image, distorted image
- find the maximum value in a part(matrix) of the Feature map
- pooled feature map(matrix) with max number in feature map
- reduce the size and parameters
- less information, but same features
- There is min pooling, avegare pooling ...

3. Flattening

- converts the matrix to a array (one row)

4. Full Connection

- Input Image > Convolutional Layer, ReLu > Pooling Layer > flattening > ML
- Backpropagation in all layers
- The feature detectors are trained and adjusted in that same gradient decent process
- Softmax & Cross-Entropy
