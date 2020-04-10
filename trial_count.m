function varargout = trial_count(varargin)
% TRIAL_COUNT MATLAB code for trial_count.fig
%      TRIAL_COUNT, by itself, creates a new TRIAL_COUNT or raises the existing
%      singleton*.
%
%      H = TRIAL_COUNT returns the handle to a new TRIAL_COUNT or the handle to
%      the existing singleton*.
%
%      TRIAL_COUNT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRIAL_COUNT.M with the given input arguments.
%
%      TRIAL_COUNT('Property','Value',...) creates a new TRIAL_COUNT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trial_count_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trial_count_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trial_count

% Last Modified by GUIDE v2.5 28-Jun-2017 20:38:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trial_count_OpeningFcn, ...
                   'gui_OutputFcn',  @trial_count_OutputFcn, ...
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


% --- Executes just before trial_count is made visible.
function trial_count_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trial_count (see VARARGIN)

% Choose default command line output for trial_count
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trial_count wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trial_count_OutputFcn(hObject, eventdata, handles) 
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
global count array
count = count +1;

if(get (handles.r1,'value') ==1)
    flag = 1; 
elseif (get (handles.r2,'value') ==1)
    
    flag=2;
else 
    flag =3;
end
array(count)=flag;
   
disp('count')
   disp(array(count));
   disp('count-1')
   disp(array(count-1));
   
   

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global count array
count=1;
array(1)=1;
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
