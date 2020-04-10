function varargout = testuni2(varargin)

% TESTUNI M-file for testuni2.fig
%      TESTUNI, by itself, creates a new TESTUNI or raises the existing
%      singleton*.
%
%      STATICH = TESTUNI returns the handle to a new TESTUNI or the handle to
%      the existing singleton*.
%
%      TESTUNI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTUNI.M with the given input arguments.
%
%      TESTUNI('Property','Value',...) creates a new TESTUNI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testuni2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testuni2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testuni2

% Last Modified by GUIDE v2.5 28-May-2017 11:40:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testuni2_OpeningFcn, ...
                   'gui_OutputFcn',  @testuni2_OutputFcn, ...
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


% --- Executes just before testuni2 is made visible.
function testuni2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testuni2 (see VARARGIN)

% Choose default command line output for testuni2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testuni2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testuni2_OutputFcn(hObject, eventdata, handles) 
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


%illegal use of end
% check if 'nothing' is entered
global  a1 b1 r1 h1 a3 b3 r3 h3 slope st3 st1
%a=str3double(get(handles.x,'string'));
%b=str3double(get(handles.y,'string'));
%r=str3double(get(handles.r,'string'));
%h=str3double(get(handles.h,'string'));


if (get(handles.semi_sphere,'Value')==1)
a3=str2double(get(handles.x,'string'));
b3=str2double(get(handles.y,'string'));
r3=str2double(get(handles.r,'string'));
%h3=str3double(get(handles.h,'string'));
st3=str2double(get(handles.st,'string'));

angle=linspace(0,pi,360);
x=r*cos(angle)+a;
y=r*sin(angle)+b;
plot(x,y);
hold on
plot([-r,r]+a,[b,b]);
x2=r*cos(2.*angle)+a;
y2=r*sin(2.*angle)-st3;
plot(x2,y2);
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






% --- Executes on button press in semi_sphere.
function semi_sphere_Callback(hObject, eventdata, handles)
% hObject    handle to semi_sphere (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of semi_sphere



% --- Executes on button press in sphere.
function sphere_Callback(hObject, eventdata, handles)
% hObject    handle to sphere (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sphere


function x_Callback(hObject, eventdata, handles)
% hObject    handle to staticx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of staticx as text
%        str2double(get(hObject,'String')) returns contents of staticx as a double
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
function staticx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to staticx (see GCBO)
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
% hObject    handle to staticr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of staticr as text
%        str2double(get(hObject,'String')) returns contents of staticr as a double
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
function staticr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to staticr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function statich_CreateFcn(hObject, eventdata, handles)
% hObject    handle to statich (see GCBO)
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


function[]=cone(a2,b2,r2,h2)
 global  slope
 slope=h2/r2;
% syms x    not needed at all

%y= slope*(x-a)+b+h

%elevation
plot([-r2,r2]+a2,[0,0]+b2,'m');
hold on
plot([-r2,0]+a2,[0,h2]+b2,'m');
plot([r2,0]+a2,[0,h2]+b2,'m');
 
%limits at the end or in the plot
%xlim([-20,20]);
%ylim([-20,20]);

%plan
axis('equal')
angle=linspace(0,2*pi,360);
x2=r2*cos(angle)+a2;
y2=r2*sin(angle)+b2-5.1;
plot(x2,y2,'m');





function []=cylinder(a1,b1,r1,h1)
global st1 
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

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% intersection trial (sucess)
 global slope a1 b1 h1 r1 a2 b2 h2 r2 st1 st2
 %figure
 syms x1 x2 jj
if (h1<h2)
    min=h1;
else
    min=h2;
end
 switch get(handles.popupmenu1,'value')
     case 1
         inn=min;
     case 2
         inn=slope.*(a1-r1-a2)+h2+b2;
     case 3
         inn=-slope.*(a2-(a1+r1))+h2+b2;
     case 4
         inn=slope.*(a2-a1+r1)+h2+b2;
     case 5
         inn=slope.*(a2-a1-r1)+h2+b2;
          
 end
 
 if (b1>b2)
     maxb=b1;
 else
     maxb=b2;
 end
 
  if (a1+h1>a2+h2)
     maxh=a1+h1;
 else
     maxh=a2+h1;
 end
 
 %preallocating for speed :)
%s=zeros(0,5);
%j =solve(slope.*(x2-a2)+b2+h2-a1+r1, x2);
%j =solve(1/slope.*((x2-a2)-b2-h2)+a1-r1, x2);
% uu should be the y value of intersection between the left side of the
% semi_sphere & the left side of the cylinder
%uu=1/slope.*((x3-a2)-b2-h2)

% intersection bet semi_sphere side and cylinder y point
%inn=slope.*(a2-a1+r1)+h2+b2;


l=1; % for array x&y or s&n
 for i=maxb:0.2:maxh
     % solve semi_sphere side and center line to get radius  x co-ordinate
k =solve(slope.*(x1-a2)+b2+h2-i, x1);
% make it double often unnecessary 
s=double((a2-k));

% make it positive as it always
 r_co= abs(s);

 %plot(r_co,i,'*')
 
 %plot(s,i,'o')
 %hold on
 % Center of the circles
c1=[a1,b1-st1]; % [a,b] cylinder => fi mo4kela law b1 != b2 => in7alt kant fi functions %-5 should return
c2=[a2,b2-st2]; % [a-5,b] cone



%F=@(x) ([(x(1)-c1(1))^2+(x(2)-c1(2))^2-r1^2; ...
  %       (x(1)-c2(1))^2+(x(2)-c2(2))^2-r_co^2]);

%x=fsolve(F,[c1(1),c1(1)+r1]);
%plot(x(1),x(2),'*')
%plot(x(1),i,'*')
%x=fsolve(F,[c1(1),c1(1)-r1]);
%plot(x(1),x(2),'o')
%plot(x(1),i,'*')

%plot(a1-r1,b1-10,'o')

%%% intersection of 2 circles using circcirc %%%
 [xout,yout] = circcirc(c1(1),c1(2),r1,c2(1),c2(2),r_co) ;
plot(xout,yout,'*')
 plot(xout,i,'*') 
 x(l)=xout(1);
 y(l)=yout(1);
 l=l+2
if isnan(xout) % mo4kla r must be +ve => it7lt b isnan
   %plot(5,5,'*')
    break;
    
end


 
 %plot(x,y,'*')
 
 
 %disp(xout)
 %circle(a2,b2-10,r_co)
   %plot(xout,i,'o')
   %r2=r2- 0.1;
l=l+1;


 end % end for loop
 
 
% s=x
% n=y
%yi=maxb:0.1:maxh; % hya nafsha x bas b step -- matnsee4 n da 7aykoon l i beta3na (y) l2no sabt
%xi=interp1(s,n,yi,'spline');  % s=x intersection point , n=y intersection point
%plot(s,n,'o')



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


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;

    



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function text12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



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


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
