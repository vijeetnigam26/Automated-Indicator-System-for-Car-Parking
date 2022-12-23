<h1 align="center"> Automated Indicator System for 🚘 Car Parking</h1>

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/title.png" height=214 width=291 />
</p> 

• Developed a Model that detects the available parking space in a large parking lot, and minimizes Human Interaction.

•	Designed it with Digital Signal Processing & Image processing Using MATLAB.

# 📝 Brief 

<img align="right" alt="Coder GIF" height=300 width=350 src="img\aisfcp2.jpg" />
The development of this system will use techniques of image processing that will be implemented in each phase of the methodology. This system gives information about the number of available parking space. It will provide benefit to all the drivers when they enter the parking lot. The system uses image processing, since the whole area in the parking lot can be observed with relatively few cameras and the Image of a parking lot is taken by a surveillance camera set at some height in the parking lot.  



Videos will be acquired from the top view of the parking arena with the help of a fixed camera. Video will be segmented into frames. Then from each segment a key frame will be extracted and further processing will be applied on the key frame, to reduce the computational
complexity.
<br><br>
👉🏻 *Lets assume, there is Commercial Complex which is having a 3 floor Basement Car Parking Space with a Capacity of 432 Cars – 144 Each Floor.* 
 <br>


# 📜 Algorithm 
The main steps of the proposed algorithm for parking space detection are:

1️⃣ The system will get live stream video of the parking lot from camera. Images are captured when a car enters the parking lot.

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/Presentation1.png" />
</p>

2️⃣ RGB Images are converted to binary images.

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/Presentation2.png" />
</p>

3️⃣ The frame is cropped lane wise and considered sequentially and individually in a loop.

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/Presentation3.png" />
</p>

4️⃣ Vacant slots with their respective lane is known by calculating the number of cars.

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/Presentation4.png" />
</p>

5️⃣ And then it provide proper navigation to the vehicle.

<p align="center">
  <img src="https://github.com/vijeetnigam26/Automated-Indicator-System-for-Car-Parking/blob/master/img/Presentation5.png" />
</p>

