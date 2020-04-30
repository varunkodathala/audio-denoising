# audio-denoising

Model designed to denoise the audio signal!

# Analysis

1. Time Domain:
- Thresholding
- Median Filtering

2. Frequency Domain:

- Butterworth Filter (4,5 and 6 orders)
- LPF + HPF

# Results:

- Thresholding
![Thresholding](purethresholding.jpg?raw=true)

- Median Filtering
![Median Filtering](median.jpg?raw=true)

- Butterworth - Bandpass (order:4)

![order 4](butter4.jpg?raw=true)

- Butterworth - Bandpass (order:5)

![order 5](butter5.jpg?raw=true)

- Butterworth - Bandpass (order:6)

![order 6](butter6.jpg?raw=true)

- LPF + HPF 

![LPF+HPF](lpf_hpf.jpg?raw=true)

# Audio:

1. [NOISY](original.m4a?raw=true) 
2. [Pure Thresholding](purethresholding.m4a?raw=true)
3. [Median Filtering](median.m4a?raw=true)
4. [ButterWorth order 4](recovered_butter4.m4a?raw=true)
5. [ButterWorth order 5](recovered_butter5.m4a?raw=true)
6. [ButterWorth order 6](recovered_butter6.m4a?raw=true)
7. [LPF+HPF](lpf_hpf.m4a?raw=true)

