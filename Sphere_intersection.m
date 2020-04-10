function varargout = Sphere_intersection(varargin)
% SPHERE_INTERSECTION MATLAB code for Sphere_intersection.fig
%      SPHERE_INTERSECTION, by itself, creates a new SPHERE_INTERSECTION or raises the existing
%      singleton*.
%
%      H = SPHERE_INTERSECTION returns the handle to a new SPHERE_INTERSECTION or the handle to
%      the existing singleton*.
%
%      SPHERE_INTERSECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPHERE_INTERSECTION.M with the given input arguments.
%
%      SPHERE_INTERSECTION('Property','Value',...) creates a new SPHERE_INTERSECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sphere_intersection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sphere_intersection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sphere_intersection

% Last Modified by GUIDE v2.5 28-May-2017 16:33:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sphere_intersection_OpeningFcn, ...
                   'gui_OutputFcn',  @Sphere_intersection_OutputFcn, ...
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


% --- Executes just before Sphere_intersection is made visible.
function Sphere_intersection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sphere_intersection (see VARARGIN)

% Choose default command line output for Sphere_intersection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sphere_intersection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Sphere_intersection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global  a1 b1 r1 a2 b2 r2 z1 z2

if(get(handles.radiobutton1,'value')==1)
a1=str2double(get(handles.x,'string'));
b1=str2double(get(handles.y,'string'));
r1=str2double(get(handles.r,'string'));
z1=str2double(get(handles.z,'string'));
angle=linspace(0,2*pi,360);
x=r1*cos(angle)+a1;
y=r1*sin(angle)+b1;
plot(x,y);
hold on

x2=r1*cos(angle)+a1;
y2=r1*sin(angle)-z1;
plot(x2,y2);
axis('equal')
else
a2=str2double(get(handles.x,'string'));
b2=str2double(get(handles.y,'string'));
r2=str2double(get(handles.r,'string'));
z2=str2double(get(handles.z,'string'));

    angle=linspace(0,2*pi,360);
x=r2*cos(angle)+a2;
y=r2*sin(angle)+b2;
plot(x,y);
hold on

x2=r2*cos(angle)+a2;
y2=r2*sin(angle)-z2;
plot(x2,y2);
axis('equal')

end

    grid on 



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-------------------------------------------------------------
 global  a1 b1 r1 a2 b2 r2 z1 z2 r_s1 r_s2 
if (b1+r1>b2+r2)
    max_h=b1+r1;
else
    max_h=b2+r2;
end

[~,y_start]=circcirc(a1,b1,r1,a2,b2,r2) % l 3lama d a
if(y_start(1)<y_start(2))
   min_b=y_start(1)
   max_b=y_start(2)
else
     min_b=y_start(2)
      max_b=y_start(1)
end
% intersect l fo2 34an negeeb radius kol wa7ed
%plane & sphere 1
%5----->i
for i=min_b:max_b
[x_out1,~]=linecirc(0,i,a1,b1,r1)
r_s1=abs(x_out1(1)-x_out1(2))/2
%plane & sphere 2
[x_out2,~]=linecirc(0,i,a2,b2,r2)
r_s2=abs(x_out2(1)-x_out2(2))/2
%plot(x_out1,y_out1,'*')
%plot(x_out2,y_out2,'*')
[x_down,y_down]=circcirc(a1,b1-z1,r_s1,a2,b2-z2,r_s2) % da intersectio elly t7t
plot(x_down,y_down,'*')

if (isnan(x_down))
    break;
end
%C1=[a1,b1-z1-i];
%C2=[a2,b2-z2-i];


%plot(x_down,y_down,'*')
%plot (x_down,i,'*')%5=i
%F=@(point_down) ([(point_down(1)-C1(1))^2+(point_down(2)-C1(2))^2-r_s1^2; ...
  %       (point_down(1)-C2(1))^2+(point_down(2)-C2(2))^2-r_s2^2]);
%opt=optimoptions(@fsolve);
%opt.Algorithm='levenberg-marquardt';
%opt.Display='off';
%point_down=fsolve(F,[C1(1),C1(1)+r_s1],opt);
%plot(point_down(1),point_down(2),'*')
%point_down=fsolve(F,[C1(1),C1(1)-r_s1],opt);
%plot(point_down(1),point_down(2)-i,'*')
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
