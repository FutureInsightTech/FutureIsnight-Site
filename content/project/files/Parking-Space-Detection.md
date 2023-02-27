---
title: "Parking Assistant"
date: 2023-02-21T15:03:36+05:00
draft: false
type: "page"
showTableOfContents: true
url: /Parking-Assistant/
---

# Introduction:
In this project we are going to make a parking assistant. Using the power of IOT Devices we will be able to detect the parking space, Also we reserved the parking space. 

# Technology Used:
The project is developed using the following technologies:
1. HTML 
2. CSS
3. JavaScript
4. Bootstrap

# Required Software:
To run this application on your computer you need to install the following software:
1. Xampp
2. Node JS 
3. VS Code
4. Arduino IDE 

# Required Hardware:
For this application to run properly we also required hardware. The hardware will be providing the values. which will be displayed on the website.

To make your Hardware you need the following things:
1. Arduino UNO Board
2. Bread Board
3. Male to Female Cables
4. IR Sensors
5. USB type B cable

Once all the hardware is here then assemble the hardware, Connect the IR sensor with the bread board and from bread board to Arduino  UNO Board.

Then connect the USB type cable to the computer and load the code from the repo.

## IR Sensor:
There are three pin in each sensor one is Ground, second is Power and the third one is Code line. The code line is the line that will provide the value to the Arduino board. The value will be in the form of 0 and 1. 0 means that there is no object and 1 means that there is an object.
On a Sensor there are three labels
1. **GNN**    
    GNN present ground line 
2. **OUT**
    OUT line present Code
3. **VCC**
    The VCC line Represent Power Line
    
## Color Code list for Sensors:
- **Sensor 1:**
    - **Code Line Color:** Orange
    - **Pot number**:  3
    - **Power Color:**  White
    - **Ground Color:** Green

- **Sensor 2**
    - **Code Color Line:** Red
    - **Port number:** 4
    - **Power Color:**  White
    - **Ground Color:** Green
    
- **Sensor 3:**
    - **Code color:** Yellow color
    - **Port Number:** 5
    - **Ground:** Yellow
    -  **Power:** White:
    - **Ground Color:** Green
    
- **Sensor 4:**
    - **Code color:** Blue
    - **Port number:** 7
    - **Power Color:**  White
    - **Ground color**: Purple
    

**Power For the Sensor:**
In the UNO Board there are two power point, 3.5 Volt and 5 Volt Power. We are using 5 Volt Power for the sensor.

# Connection Hardware with Website:
- The connection between website and the hardware is done using the javascript. The problem with Arduino is that it can not connect to the website directly so we need a server and the server is designed in javascript, using a framework called **Node js.**
- Using Node Js we are using two libraries 1.  [Socket.io](http://Socket.io) and  2. serialport
- Using both Libraries  we can connect to the UNO board. The name of the file is called server.js, The server will run at the port of 3000.
## Download Software:
To Install these Software you need to look the following articles:
1. For Xampp:  [https://www.ionos.com/digitalguide/server/tools/xampp-tutorial-create-your-own-local-test-server/](https://www.ionos.com/digitalguide/server/tools/xampp-tutorial-create-your-own-local-test-server/)
2. For Node Js:  [https://treehouse.github.io/installation-guides/windows/node-windows.html](https://treehouse.github.io/installation-guides/windows/node-windows.html)
3. VS Code: [https://medium.com/nerd-for-tech/install-visual-studio-code-fe3908c5cf15](https://medium.com/nerd-for-tech/install-visual-studio-code-fe3908c5cf15)
4. Arduino IDE: [https://www.tutorialspoint.com/arduino/arduino_installation.htm](https://www.tutorialspoint.com/arduino/arduino_installation.htm) 

## Cloning Project:
To run this application Follow the steps bellow:
- Once all of the application are installed on your system then you need to clone this repo.
- To clone this repo follow the picture bellow:
![Screenshot (1)](https://user-images.githubusercontent.com/82662797/160491518-e6a9df94-e284-42ed-936d-1673861583e7.png)

- Now all of the files on your system.

## Database Upload:
- For this application to run we must upload the database as well. The database is in the followinf directory “Manager-Website/database”.
- The name of the file is “parking_data.sql”
- To upload the database open your Xampp Control Panel
- Once open then start the SQL Server and Appach Server
![Untitled](https://user-images.githubusercontent.com/82662797/160491553-375927e3-027e-4c20-87df-9ff04b678f3f.png)
- Both will run and then open your Broswer and enter the following command: “**localhost**”
- Then press “**myphpadmin**” to open the SQL.
- Create a database called “parking_data”
- Once created the press the import button.
- A new window will be open.
- Once open the select the file and press Go.
- The database will be imported.

# Credentials for the website:
These are the default credentials for the website. You can change the credentials from the admin panel and for the admin panel you need to login using the following credentials.
## Admin 
Now The database is active to enter the admin panel you need to a username and password which are stated bellow:

This is the email and password for the admin:
- **Email**: 99marafay@gmail.com
- **Password:** 19march1999

## User:
This is the email and password for the user:
- **Email:** mike.ross123@gmail.com
- **Password:** mikeross

**Note:**
if facing any problem in uploading the database then follow the following link:
[Upoad Database Help](https://help.one.com/hc/en-us/articles/115005588189-How-do-I-import-a-database-to-phpMyAdmin-)

## Edge  Browser Extension:**
In order for the application to display live location using [Socket.Io](http://Socket.Io) we need a extension you can install this extension using the following Link:

[CORS Unblock - Microsoft Edge Addons](https://microsoftedge.microsoft.com/addons/detail/cors-unblock/hkjklmhkbkdhlgnnfbbcihcajofmjgbh)

## Important Note:
- You need the hardware if you want the live location if the hardware is not present the Application will crash.
- You need to change the port number in the app.js file
- You can find the port number from the Arduino IDE. Once your hardware is connected then you will see the port number in the IDE.

# Running The Application:
- Open vs code.
- Open a Terminal session in  Vs code.
- To open the terminal check out the image bellow:
![Screenshot (2)](https://user-images.githubusercontent.com/82662797/160491598-834af0ef-f9da-4c9e-af2a-a586e1dfc263.png)
![Screenshot (3)](https://user-images.githubusercontent.com/82662797/160491609-50c219cc-5091-4ddf-8899-7ae50710b47f.png)

- When Your Terminal is open then enter the following command:
```jsx
npm install
npm start
```
- Once all all the command are enter the your application will run.
- To see the progress just enter the “localhost:5000” on your browser.
# Conclusion:
With the hardware connected and the application running you can see the live location of the car.

**Note: The application will not work if the hardware is not connected.**

With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://rafay99.info) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you have any questions, please contact
## Future Insight:
- [Email](mailto:fututeinsight@gmail.com)
## Author:
The Author of this article is [Abdul Rafay](https://rafay99.info). You can contact him on the following platforms:
- [Personal-Website](https://rafay99.info)
- [GitHub](github.com/rafay99-epic) 
