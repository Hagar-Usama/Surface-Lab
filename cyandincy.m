function varargout = cyandincy(varargin)
% CYANDINCY MATLAB code for cyandincy.fig
%      CYANDINCY, by itself, creates a new CYANDINCY or raises the existing
%      singleton*.
%
%      H = CYANDINCY returns the handle to a new CYANDINCY or the handle to
%      the existing singleton*.
%
%      CYANDINCY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CYANDINCY.M with the given input arguments.
%
%      CYANDINCY('Property','Value',...) creates a new CYANDINCY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cyandincy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cyandincy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cyandincy

% Last Modified by GUIDE v2.5 30-Jun-2017 02:03:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cyandincy_OpeningFcn, ...
                   'gui_OutputFcn',  @cyandincy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT



% --- Executes just before cyandincy is made visible.
function cyandincy_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cyandincy (see VARARGIN)

% Choose default command line output for cyandincy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cyandincy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cyandincy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;







% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)    %plot
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global count array
count = count +1;

plot([-15,15],[0,0],'k', ...
     'LineWidth',2 );
hold on;
global a1 b1 r1 h1 theta  theta1  z1 a2 b2 r2 h2 tt z2  a3 b3 r3 z3 xc1 yc1 a4 b4 r4 z4 a5 b5 r5 h5 z5 slope
%step= str2double(get(handles.step,'string'));
if (get(handles.radiobutton1, 'value') == 1)
    det(count) =1;
   tt= det(count);
   
a1= str2double(get(handles.x,'string'));
b1= str2double(get(handles.y,'string'));
r1= str2double(get(handles.r,'string'));
h1= str2double(get(handles.h,'string'));
theta= str2double(get(handles.theta,'string'));
z1= str2double(get(handles.z,'string'));
incy (a1,b1,r1,h1,theta,z1);
theta1=theta*pi/180; % radian

elseif (get(handles.radiobutton2, 'value') == 1)
det(count) =2;
   tt= det(count);
   disp (tt);
    
    
a2= str2double(get(handles.x,'string'));
b2= str2double(get(handles.y,'string'));
r2= str2double(get(handles.r,'string'));
h2= str2double(get(handles.h,'string'));
z2= str2double(get(handles.z,'string'));


cylinder(a2,b2,r2,h2,z2)
elseif get(handles.radiobutton3, 'value') == 1
    det(count) =3;
    tt= det(count);
    disp (tt);
    
a3= str2double(get(handles.x,'string'));
b3= str2double(get(handles.y,'string'));
r3= str2double(get(handles.r,'string'));
z3= str2double(get(handles.z,'string'));
 sphere(a3,b3,r3,z3);
 
 plot(a1,b1-z1-r1,'g*');
 plot(a3,b3-z3-r3,'r*');
      
elseif  (get(handles.radiobutton6, 'value') == 1)  %cone
a5= str2double(get(handles.x,'string'));
b5= str2double(get(handles.y,'string'));
r5= str2double(get(handles.r,'string'));
h5= str2double(get(handles.h,'string'));
z5= str2double(get(handles.z,'string'));
cone(a5,b5,r5,h5,z5);
slope = h5/r5;

else 
    switch get(handles.popupmenu1,'Value')
        case 1 
            msgbox('welcome')
        case 2 
            a3= str2double(get(handles.x,'string'));
            b3= str2double(get(handles.y,'string'));
            r3= str2double(get(handles.r,'string'));
            z3= str2double(get(handles.z,'string'));
            sphere(a3,b3,r3,z3);
 
            plot(a1,b1-z1-r1,'g*');
            plot(a3,b3-z3-r3,'r*');
        case 3
            a4= str2double(get(handles.x,'string'));
            b4= str2double(get(handles.y,'string'));
            r4= str2double(get(handles.r,'string'));
            z4= str2double(get(handles.z,'string'));
            sphere(a4,b4,r4,z4);
 
            plot(a1,b1-z1-r1,'g*');
            plot(a4,b1-z4-r4,'r*');

    end
    
end

%plot(xc1,yc1,'g*');
%disp (xc1);
%disp (yc1);



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global   a1 b1 r1  h1  z1  b a2 b2 r2 m yc1 yc2 xc1 xc2 ys h2 z2 theta1  ;                                               
b = b2+r2; 
m= tan(theta1);
%y=y1-z1-r1;
%plot(5,yc1,'*');
ys= b1-z1-r1;       % y start ==> y-center of rotated  cylinder down
ye1= ys+r1;
ye2= ys-r1;

xs= a1+h1*cos(theta1) +2*r1;

xc1= a1-r1*sin(theta1);
xc2= a1+h1*cos(theta1) -r1*sin(theta1);
yc1 = b1+ r1*cos(theta1);
yc2= b1 + h1*sin(theta1) + r1*cos(theta1);
%plot(xs,ys+r1,'r*');
%plot(xs,ys-r1,'r*');
%plot(xc1,yc1,'g*');

xR3= xc1+r1*sin(theta1);
yR3= yc1 - r1*cos(theta1);
d2_up = -xR3*tan(theta1) + yR3;
x2 =a1+h1*cos(theta1);
%[x_center,y_center]=lineCircL(m,a1,x2,ys,d2_up,a2,b2+r2,r2);

for i=ys:0.01:ye1
 [R,~,~]= lineCircD(0,i,xs,ys,r1); % intersect with side view
         if (isnan(R))
            disp (' fi 7aga ghl6 .. asdy Nan bas');
            break;

        end
 
 yR1=yc1 + R*cos(theta1);
yR2 = yc2 + R*cos(theta1);
xR1= xc1 - R*sin(theta1); %left
xR2= xc2 - R*sin(theta1);

xR3= xc1+R*sin(theta1);
xR4= xc2+R*sin(theta1);

yR3= yc1 - R*cos(theta1);
%yR4= yc2 -R*cos(theta1);

d1_up= -xR1*tan(theta1) + yR1;  
d2_up = -xR3*tan(theta1) + yR3;
 %plot([xR1, xR2], [yR1,yR2],'k-'); %  b-yrsm gen_1 fo2 di         7elwa awi ll shadow
 %plot(xR1,yR1,'*');
 %plot([xR3,xR4],[yR3,yR4],'r-');
 
lineCircL(m,xR1,xR2,i,d1_up,a2,b2+r2,r2); %% d 34an generatrix l fo2
lineCircL(m,xR3,xR4,i,d2_up,a2,b2+r2,r2);   %% d 34an generatrix l fo2
 
end

for i=ys:-0.01:ye2
    disp('enter loop2');
    plot(5,ye2,'rp');
 [R,~,~]= lineCircD(0,i,xs,ys,r1); % intersect with side view
         if (isnan(R))
            disp (' fi 7aga ghl6 .. asdy Nan bas');
            break;

        end
 
 yR1=yc1 + R*cos(theta1);
%yR2 = yc2 + R*cos(theta1);
xR1= xc1 - R*sin(theta1); %left
xR2= xc2 - R*sin(theta1);

xR3= xc1+R*sin(theta1);
xR4= xc2+R*sin(theta1);

yR3= yc1 - R*cos(theta1);
%yR4= yc2 -R*cos(theta1);

d1_up= -xR1*tan(theta1) + yR1; 
d2_up = -xR3*tan(theta1) + yR3;

 %plot([xR1, xR2], [yR1,yR2],'k-'); %  b-yrsm gen_1 fo2di         7elwa awi ll shadow
 %plot(xR1,yR1,'*');
 %plot([xR3,xR4],[yR3,yR4],'r-');
 
 lineCircL(m,xR1,xR2,i,d1_up,a2,b2+r2,r2); %% d 34an generatrix l fo2
lineCircL(m,xR3,xR4,i,d2_up,a2,b2+r2,r2); %% d 34an generatrix l fo2

end
plot(xs,ys-r1,'m*');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;


function cylinder(a2,b2,r2,h2,z2)
x1=a2-r2;
x2= a2+r2;

y1=b2-z2;
y3= y1-h2;
%% plan %%
plot([x1,x2],[y1,y1],'r',[x2,x2],[y1,y3],'g',[x2,x1],[y3,y3],'m',[x1,x1],[y3,y1]);
plot([a2,a2],[y1,y3],'r-.');

hold on
axis('equal')

%% elevation %%
circle (a2,b2+r2,r2);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s1= get(handles.pushbutton4,'string');
s2= 'Grid ON';
tf = strcmp(s1,s2);

if (tf==1)
    set(handles.pushbutton4,'string','Grid OFF');
    grid on;
    hold on;
else
    set(handles.pushbutton4,'string','Grid ON');
    grid off;
end








% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e1= str2double(get(handles.edit8,'string'));
e2= str2double(get(handles.edit9,'string'));
%symp= get(handles.edit10,'string');

plot(e1,e2,'*');



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double



function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as a double



function z_Callback(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z as text
%        str2double(get(hObject,'String')) returns contents of z as a double



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes on button press in .
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global tt  ff
if (tt==1)
    msgbox('CYlinder','sdcard:)');
elseif (tt==2)
    msgbox('Frontal cylinder','sdcard:)');
elseif (tt==3)
    msgbox('Sphere','sdcard:)');
end




% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1 b1 r1 h1 theta z1 a2 b2 r2 h2 z2 ui
ui=figure;
incy (a1,b1,r1,h1,theta,z1);
 cylinder(a2,b2,r2,h2,z2);
 hold on;


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global count
count = 1;




% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1 b1 r1 z1 a3 b3 r3 z3
R=r3;

for i=b3+r3 :0.01: b3+2*r3
[R,~,~]= lineCircD(0,i,a3,b3+r3,r3); % intersection plane with sphere

if (isnan(R))
    break; end
 myCircCirc(a1,b1-z1-r1,r1,a3,b3-z3-r3,R,i);

%plot(a1,b1-z1-r1,'g*');
 %plot(a3,b3-z3-r3,'r*');
end
 %myCircCirc(a1,b1-z1-r1,r1,a3,b3-z3-r3,1);
for i=b3+r3 :-0.01: b3
[R,~,~]= lineCircD(0,i,a3,b3+r3,r3); % intersection plane with sphere

if (isnan(R))
    break; end
 myCircCirc(a1,b1-z1-r1,r1,a3,b3-z3-r3,R,i);

%plot(a1,b1-z1-r1,'g*');
 %plot(a3,b3-z3-r3,'r*');
end

 
 % --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a3 b3 r3 z3 a4 b4 r4 z4
for i=b3:0.01:b3+2*r3
[R1,~,~]=lineCircD(0,i,a3,b3+r3,r3);
[R2,~,~]= lineCircD(0,i,a4,b4+r4,r4);
myCircCirc(a3,b3-z3-r3,R1,a4,b4-z4-r4,R2,i);
end
% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton5,'value',1);
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a3 b3 r3 z3 a5 b5 r5 z5 h5 slope
% cone no 5 ---- sphere no 3 

%intersection bet plane and left  side of cone 
dc= -(a5-r5)*slope+b5;
for i=b5: 0.001: b5+h5
[x,~]=lineLineX(0,i,slope,dc,a5-r5,a5);
R_co = abs(x-a5);
        if (R_co ==0)
            R_co = 0.000001;
        end
[R_sph,~,~]=lineCircD(0,i,a3,b3+r3,r3);
    if(isnan(R_sph))
        break;
    end
    
    % kda we get radii for cone and sphere ... let's draw circles down and
    % get intersection
    
    myCircCirc(a5,b5-z5-r5,R_co,a3,b3-z3-r3,R_sph,i);
end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global   a1 b1 r1  h1 theta1 z1  b  m yc1 yc2 xc1 xc2 ys  a3 b3 r3 z3 xs  ; 

b = b3+r3; 
m= tan(theta1);

ys= b1-z1-r1; % y start ==> y-center of rotated  cylinder down
ye1= ys+r1;
ye2= ys-r1;
xs= a1+h1*cos(theta1) +2*r1; % x-center of rot cylinder down

xc1= a1-r1*sin(theta1);
xc2= a1+h1*cos(theta1) -r1*sin(theta1);
yc1 = b1+ r1*cos(theta1);
yc2= b1 + h1*sin(theta1) + r1*cos(theta1);

xR3= xc1+r1*sin(theta1);
yR3= yc1 - r1*cos(theta1);
d2_up = -xR3*tan(theta1) + yR3;
x2 =a1+h1*cos(theta1);

%[x_center,y_center]=lineCircL(m,a1,x2,ys,d2_up,a2,b2+r2,r2);

disp('end of disp');

for i=ys:0.01:(ye1) % up intersection
 [R,~,~]= lineCircD(0,i,xs,ys,r1); % intersect with side view to get radius of generatrix
         if (isnan(R))
            disp (' fi 7aga ghl6 .. asdy Nan bas');
            break;   
         end
     
[R_sph,~,~] = lineCircD(0,i,a3,b3-z3-r3,r3) ;
        if (isnan(R_sph))
           disp ('asdy Nan bas sphere');
            break;   
         end
 yR1=yc1 + R*cos(theta1);
yR2 = yc2 + R*cos(theta1);
xR1= xc1 - R*sin(theta1); %left
xR2= xc2 - R*sin(theta1);

xR3= xc1+R*sin(theta1);
xR4= xc2+R*sin(theta1);

yR3= yc1 - R*cos(theta1);

yR4= yc2 -R*cos(theta1);

d1_up= -xR1*tan(theta1) + yR1;  
 d2_up = -xR3*tan(theta1) + yR3;
 
plot([xR1, xR2], [yR1,yR2],'k-'); %  b-yrsm gen_1 fo2 di         7elwa awi ll shadow
% plot(xR1,yR1,'*');
 plot([xR3,xR4],[yR3,yR4],'r-');
 
[x,~]=lineCircL(m,xR1,xR2,i,d1_up,a3,b3+R_sph,R_sph); %% d 34an generatrix l fo2
lineCircL(m,xR3,xR4,i,d2_up,a3,b3+R_sph,R_sph);   %% d 34an generatrix l t7t

end
for i=ys:-0.01:ye2 % intesection down
    disp('enter loop2');
    plot(5,ye2,'rp');
 [R,~,~]= lineCircD(0,i,xs,ys,r1); % intersect with side view
         if (isnan(R))
            disp (' fi 7aga ghl6 .. asdy Nan bas');
            break;

        end
end      
%plot(x_center,ys,'color',rand(1,3));


% --- Executes on button press in pushbutton12.

% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1 b1 r1 h1 theta z1 slope a5 b5 r5 h5  z5 theta1

if (theta == 90) % theta for deg and theta1 for radian
    dc= -(a5-r5)*slope+b5;
    for i=b5:0.01: b5+h5
      [x,~]=  lineLineX(0,i,slope,dc,a5-r5,a5) % intersection to get radius
        R_co = abs(x-a5);
        if (R_co ==0)
            R_co = 0.000001;
        end
        MyCircCirc(a5,b5-r5-z5,R_co,a1,b1-z1-r1,r1,i);
    end
end


% --------------------------------------------------------------------
function uipanel1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
