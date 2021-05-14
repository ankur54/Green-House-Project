%%%%Air General Parameters (usually constant)%%%%
%Density of dry air (Kg/m^3)
pa = 1.137;
%Specific Heat of Air(J/Kg.K)
Ca = 1005;

%%%%Cover Parameters (Polyethylene Used here)%%%%
%Cover absorptivity of solar radiation
ac =0.1;
%Cover transmittance 
tc = 0.85;
%Cover K(W/m.K)(polyethylene)
Kc = 0.028;
%Cover Thickness (m)
Lc = 0.03;

%%%%Outdoor params (canbe changed according to location)%%%%
%Solar Radiation 
I = 200;
%Wind Velocity(m/sec)
Vw = 1;
%Average Temprature outside(°C)
To = 10;
%Initial internal temprature(°C)
Ti = 20;
%Initial internal Relative Humidity
Hin = 35;
%Outside Relative Humidity
Hout = 60;

%%%%Greenhouse Size params (Can be changed)%%%%
%Length of GreenHouse(m)
len = 20;
%Width of greenhouse(m)
wid = 10;
%Height of GreenHouse(m)[without Roof]
heig = 3;
%Roof angle from Horizontal(degrees)
angle = 40;
%Angle in radian
angRad = angle*pi/180;
%Volume of greenhouse
Vol = len*wid*heig+0.5*wid*((wid/2)*tan(angRad))*len;
%Average Height of room
H = Vol/(len*wid);
%Mass of Air in greenHouse
M = pa*Vol;
%Surface area of Greenhouse(m^2)
S = 2*(len*heig+wid*heig)+wid*((wid/2)*tan(angRad))+2*(((wid/2)/cos(angRad))*len);
%Vertical Section of greenhouse
Sc = 2*(len*heig+wid*heig);
%Area of Ventilation(m^2)
Av = 2.2;
%Slope of Curve showing the Ventilation flux divided byWind Speed Variation
Kv = 0.7;
%percent of Ventilation opening
rv = 0.5;

%Number of air changes per hour
R = 5;

%%%%Heater Model%%%%
%Heating Coil Temprature(°C)
THeater = 50;
%Air mass flow rate from Heater(Kg/sec)
Mdot = 1;


%%%%Dehumidifier Model%%%%
%Air in flow rate in dehumidifier
mairdot = 1;
%Cold water in flow rate
mwaterdot = 0.1;
%Temperature of water going in Dehumidifier
Twi = To;

%simulate in simulink
sim('GreenHouseModel.slx');