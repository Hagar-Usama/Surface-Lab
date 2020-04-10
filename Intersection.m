function varargout = Intersection(varargin)
% INTERSECTION MATLAB code for Intersection.fig
%      INTERSECTION, by itself, creates a new INTERSECTION or raises the existing
%      singleton*.
%
%      H = INTERSECTION returns the handle to a new INTERSECTION or the handle to
%      the existing singleton*.
%
%      INTERSECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERSECTION.M with the given input arguments.
%
%      INTERSECTION('Property','Value',...) creates a new INTERSECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Intersection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Intersection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Intersection

% Last Modified by GUIDE v2.5 30-Jun-2017 05:23:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Intersection_OpeningFcn, ...
                   'gui_OutputFcn',  @Intersection_OutputFcn, ...
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


% --- Executes just before Intersection is made visible.
function Intersection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Intersection (see VARARGIN)

% Choose default command line output for Intersection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Intersection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Intersection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


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


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

plot([-15,15],[0,0],'k', ...
     'LineWidth',2 );
hold on;

global a1 b1 r1 h1 theta  theta1  z1 a2 b2 r2 h2 tt z2  a3 b3 r3 z3 xc1 yc1 a4 b4 r4 z4 a5 b5 r5 h5 z5 slope count ind array sph
%count = count +1;
disp(array);

if (get(handles.cylinder, 'value') == 1)
     
    a1= str2double(get(handles.x,'string'));
    b1= str2double(get(handles.y,'string'));
    r1= str2double(get(handles.r,'string'));
    h1= str2double(get(handles.h,'string'));
    theta= str2double(get(handles.theta,'string'));
    z1= str2double(get(handles.z,'string'));
    
    if (theta == 90)
        ind=1;
    else
        ind=2;
    end
    incy (a1,b1,r1,h1,theta,z1);
    theta1=theta*pi/180; % radian

    elseif (get(handles.fcylinder, 'value') == 1)
      
        a2= str2double(get(handles.x,'string'));
        b2= str2double(get(handles.y,'string'));
        r2= str2double(get(handles.r,'string'));
        h2= str2double(get(handles.h,'string'));
        z2= str2double(get(handles.z,'string'));
        
        fcylinder(a2,b2,r2,h2,z2)        
      
        elseif  (get(handles.cone, 'value') == 1)  %cone
             a5= str2double(get(handles.x,'string'));
             b5= str2double(get(handles.y,'string'));
             r5= str2double(get(handles.r,'string'));
             h5= str2double(get(handles.h,'string'));
              z5= str2double(get(handles.z,'string'));
             cone(a5,b5,r5,h5,z5);
              slope = h5/r5;
              ind = 5;
    elseif (get(handles.sphere, 'value') == 1)
              a3= str2double(get(handles.x,'string'));
              b3= str2double(get(handles.y,'string'));
              r3= str2double(get(handles.r,'string'));
              z3= str2double(get(handles.z,'string'));
              sphere(a3,b3,r3,z3);
            if (sph(1) ==0)
                sph(1) = 1;
                a41 = a3;          b41 = b3;        r41= r3;            z41 =z3;
                ind = 3;
                
            elseif (sph(2) ==0)
                    sph(2) =1;
                    a42 = a3;          b42 = b3;        r42= r3;            z42 =z3;
                    ind = 4;
            end
            
              plot(a3,b3-z3-r3,'r*');
                ind = 3;
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

if (array(1) ==0)
    array(1) = ind;
else if (array(2)==0)
        array(2) = ind;
    end
end
disp('array');
disp (array);
% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global array sph
array =[0,0];
disp(array);
sph = [0,0];

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global array sph
cla reset;
count=1;
array= [0,0];
sph = [0,0];


% --- Executes on button press in grid.
function grid_Callback(hObject, eventdata, handles)
% hObject    handle to grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s1= get(handles.grid,'string');
s2= 'Grid ON';
tf = strcmp(s1,s2);

if (tf==1)
    set(handles.grid,'string','Grid OFF');
    grid on;
    hold on;
else
    set(handles.grid,'string','Grid ON');
    grid off;
end

% --- Executes on button press in intersect.
function intersect_Callback(hObject, eventdata, handles)
% hObject    handle to intersect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a3 b3 r3 z3 a5 b5 r5 z5 h5 slope array

% cone no 5 ---- sphere no 3 
if (array == [3,5]  )

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
elseif (array==[3,4])
    global a3 b3 r3 z3 a4 b4 r4 z4
for i=b3:0.01:b3+2*r3
[R1,~,~]=lineCircD(0,i,a3,b3+r3,r3);
[R2,~,~]= lineCircD(0,i,a4,b4+r4,r4);
myCircCirc(a3,b3-z3-r3,R1,a4,b4-z4-r4,R2,i);
end

end


function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


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



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


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



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


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



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


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



function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as a double


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



function z_Callback(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z as text
%        str2double(get(hObject,'String')) returns contents of z as a double


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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
 %eventdata  reserved - to be defined in a future version of MATLAB
%handles    structure with handles and user data (see GUIDATA)
count =1; 
disp('count')
disp(count);


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
