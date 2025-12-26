# Image-Filtering-and-Manipulation

MATLAB Image Manipulation BasicsOverviewThis repository contains a fundamental demonstration of digital image processing (DIP) techniques using MATLAB. The script showcases the transition from raw image data acquisition to spatial transformations and statistical analysis.The primary goal is to demonstrate how images are treated as 2D matrices where operations—such as flipping, inverting, and thresholding—are performed via matrix calculus and iterative loops.

Features
The script executes the following image processing pipeline:Binarization: Converts grayscale intensity to a logical bitmap using im2bw.Spatial Transformations: * Transposition: $90^\circ$ rotation via matrix transpose.Flipping: Manual row/column re-indexing for horizontal and vertical mirroring.Point Operations: Generation of an image negative (intensity inversion).Statistical Profiling: Extraction of global image metrics including Mean, Standard Deviation, and Intensity Range ($[min, max]$).

Usage
Ensure you have the Image Processing Toolbox installed in MATLAB.


Run image_manipulation.m in the MATLAB environment.Technical AnalysisThe script handles the cameraman.tif file, which is an 8-bit grayscale standard test image.Manual Indexing vs. VectorizationWhile the script uses for loops for flipping operations to demonstrate the underlying logic, in a production environment, we would prioritize vectorization for performance:Matlab% Tip: Use built-in functions for O(1) or optimized O(n) performance
b_horizontal = fliplr(a); 
b_vertical   = flipud(a);


Statistical MethodsThe script utilizes std2(a), which computes the standard deviation of all elements in the array $a$ as:$$\sigma = \sqrt{\frac{1}{N-1} \sum_{i=1}^{N} (x_i - \mu)^2}$$
This is critical for understanding the contrast profile of the input signal.
