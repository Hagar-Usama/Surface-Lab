function varargout = IntersectionBetweenSurfaces(varargin)
% INTERSECTIONBETWEENSURFACES MATLAB code for IntersectionBetweenSurfaces.fig
%      INTERSECTIONBETWEENSURFACES, by itself, creates a new INTERSECTIONBETWEENSURFACES or raises the existing
%      singleton*.
%
%      H = INTERSECTIONBETWEENSURFACES returns the handle to a new INTERSECTIONBETWEENSURFACES or the handle to
%      the existing singleton*.
%
%      INTERSECTIONBETWEENSURFACES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERSECTIONBETWEENSURFACES.M with the given input arguments.
%
%      INTERSECTIONBETWEENSURFACES('Property','Value',...) creates a new INTERSECTIONBETWEENSURFACES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IntersectionBetweenSurfaces_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IntersectionBetweenSurfaces_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IntersectionBetweenSurfaces

% Last Modified by GUIDE v2.5 30-Jun-2017 18:05:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IntersectionBetweenSurfaces_OpeningFcn, ...
                   'gui_OutputFcn',  @IntersectionBetweenSurfaces_OutputFcn, ...
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


% --- Executes just before IntersectionBetweenSurfaces is made visible.
function IntersectionBetweenSurfaces_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IntersectionBetweenSurfaces (see VARARGIN)

% Choose default command line output for IntersectionBetweenSurfaces
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IntersectionBetweenSurfaces wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IntersectionBetweenSurfaces_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global array sph co
array = [0,0];
sph = [0,0];
co = [0,0];

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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1 b1 r1 h1 theta  theta1  z1 a2 b2 r2 h2 tt z2  a3 b3 r3 z3 xc1 yc1 a4 b4 r4 z4 a5 b5 r5 h5 z5 slope
global array ind a31 b31 r31 z31 a32 b32 r32 z32 sph co
%step= str2double(get(handles.step,'string'));
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

ind =4;
fcylinder(a2,b2,r2,h2,z2)
elseif (get(handles.sphere, 'value') == 1)
    
a3= str2double(get(handles.x,'string'));
b3= str2double(get(handles.y,'string'));
r3= str2double(get(handles.r,'string'));
z3= str2double(get(handles.z,'string'));
 

sphere(a3,b3,r3,z3);

            if (sph(1) ==0)
                sph(1) = 1;
                a31 = a3;          b31 = b3;        r31= r3;            z31 =z3;
                ind = 3;
                
            elseif (sph(2) ==0)
                    sph(2) =1;
                    a32 = a3;          b32 = b3;        r32= r3;            z32 =z3;
                    ind = 4;
            end
            

 plot(a3,b3-z3-r3,'r*'); % center down
      
elseif  (get(handles.cone, 'value') == 1)  %cone
        a5= str2double(get(handles.x,'string'));
        b5= str2double(get(handles.y,'string'));
        r5= str2double(get(handles.r,'string'));
        h5= str2double(get(handles.h,'string'));
        z5= str2double(get(handles.z,'string'));
        cone(a5,b5,r5,h5,z5);
        slope = h5/r5;
        ind = 5;
        
         if (co(1) ==0)
                co(1) = 1;
                a51 = a5;          b51 = b5;        r51= r5;            z51 =z5;
                
         elseif (co(2) ==0)
                   co(2) =1;
                    a52 = a5;          b52 = b5;        r52= r5;            z52 =z5;
                   
         end
else 
    
end

if (array(1) ==0)
    array(1) = ind;
else if (array(2)==0)
        array(2) = ind;
    end
end
disp('array');
disp (array);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global array sph co
cla reset;
array=[0,0];
sph=[0,0];
co = [0,0]
