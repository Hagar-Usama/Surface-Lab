function varargout = part2(varargin)
% PART2 MATLAB code for part2.fig
%      PART2, by itself, creates a new PART2 or raises the existing
%      singleton*.
%
%      H = PART2 returns the handle to a new PART2 or the handle to
%      the existing singleton*.
%
%      PART2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PART2.M with the given input arguments.
%
%      PART2('Property','Value',...) creates a new PART2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before part2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to part2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help part2

% Last Modified by GUIDE v2.5 28-May-2017 12:35:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @part2_OpeningFcn, ...
                   'gui_OutputFcn',  @part2_OutputFcn, ...
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


% --- Executes just before part2 is made visible.
function part2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to part2 (see VARARGIN)

% Choose default command line output for part2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes part2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = part2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a2 b2 r2 st2 a1 b1 r1 h1 st1

if (get(handles.semi_sphere,'value')==1)
    a2=str2double(get(handles.x,'string'))
    b2=str2double(get(handles.y,'string'))
    r2=str2double(get(handles.r,'string'))
    st2=str2double(get(handles.st,'string'))

    angle=linspace(0,pi,360);
x=r2*cos(angle)+a2;
y=r2*sin(angle)+b2;
plot(x,y,'g');
hold on
plot([-r2,r2]+a2,[b2,b2],'g');
x2=r2*cos(2.*angle)+a2;
y2=r2*sin(2.*angle)-st2;
plot(x2,y2,'g');
axis('equal')
else 
    a1=str2double(get(handles.x,'string'));
b1=str2double(get(handles.y,'string'));
r1=str2double(get(handles.r,'string'));
h1=str2double(get(handles.h,'string'));
st1=str2double(get(handles.st,'string'));

%cylinder(a1,b1,r1,h1);

plot([-r1,r1]+a1,[0,0]+b1,'b')
hold on
plot([r1,r1]+a1,[0,h1]+b1,'b')
plot([-r1,r1]+a1,[h1,h1]+b1,'b')
plot([-r1,-r1]+a1,[0,h1]+b1,'b')

axis('equal')
angle=linspace(0,2*pi,360);
x2=r1*cos(angle)+a1;
y2=r1*sin(angle)+b1-st1;     %-5 tempo
plot(x2,y2,'b');

end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%[xout,yout] = linecirc(slope,intercpt,centerx,centery,radius)
%mind a2 here for semi sphere and @testuni for cone =.> change it
global a2 b2 r2 st2 a1 b1 r1 st1 h1
if (b2>b1)
    maxb=b2;
else
    maxb=b1;
end

if (h1+b1 <r2+b2 )
    maxh= b1+h1; % kant a2
else
    maxh= b2+r2;% kant a2
end
%638 091 991  282pjh
c1=[a1,b1-st1]; % [a,b] cylinder => fi mo4kela law b1 != b2 => in7alt kant fi functions %-5 should return
c2=[a2,b2-st2]; % cone
r_sc=abs(r2); % law mn l ard
for i=0:0.1:b2+r2
[xout,yout] = linecirc(0,i,a2,b2,r_sc);
r_sc=double(abs(xout(1)-xout(2))/2);

%plot(xout,yout,'*');
%plot([xout(1),xout(2)],[yout(1),yout(2)],'*')
if (r_sc<=0)
    
    r_sc= r_sc+.01
    %break
end


 [x_down,y_down] = circcirc(a2,b2-st2,r_sc,a1,b1-st1,r1) ;
 if isnan(x_down) % mo4kla r must be +ve => it7lt b isnan
    break; 
 end

    plot(x_down,y_down,'*')
 plot(x_down,i,'o') 



plot (xout,yout,'*')
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



function st_Callback(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of st as text
%        str2double(get(hObject,'String')) returns contents of st as a double


% --- Executes during object creation, after setting all properties.
function st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
