gufunction varargout = Project(varargin)
% PROJECT MATLAB code for Project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project

% Last Modified by GUIDE v2.5 19-Apr-2018 21:20:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project_OpeningFcn, ...
                   'gui_OutputFcn',  @Project_OutputFcn, ...
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


% --- Executes just before Project is made visible.
function Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project (see VARARGIN)

% Choose default command line output for Project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function KVal_Callback(hObject, eventdata, handles)
% hObject    handle to KVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function KVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in videoChoice.
function videoChoice_Callback(hObject, eventdata, handles)
% hObject    handle to videoChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns videoChoice contents as cell array
%        contents{get(hObject,'Value')} returns selected item from videoChoice

videoChoice=get(handles.videoChoice, 'Value');
switch videoChoice
   % Load all shit
videoChoice=get(handles.videoChoice, 'Value');
% Load pictures
raptorScrew = imread('Raptor_Screwdriver.JPG');
teraScrew = imread('Tera_Screwdriver.JPG');
humanScrew = imread('Human_Screwdriver.JPG');
raptorPhone = imread('Raptor_Phone.JPG');
teraPhone = imread('Tera_Phone.JPG');
humanPhone = imread('Human_Phone.JPG');
raptorBall = imread(' ');
teraBall = imread(' ');
humanBall = imread(' ');
raptorSide = imread( ' ');
teraSide = imread(' ');
humanSide = imread(' ');
raptorFront = imread(' ');
teraFront = imread(' ');
humanFront = imread(' ');

switch videoChoice
    case 1 %screw
        axes(handles.raptor);
        imrotate(raptorScrew, 90);
        imshow(raptorScrew);
        
        axes(handles.Tera);
        imrotate(teraScrew, 90);
        imshow(teraScrew');
        
        axes(handles.Human);
        imrotate(humanScrew,90);
        imshow(humanScrew);
    case 2 %phone choice
        axes(handles.raptor);
        imrotate(raptorPhone,90);
        imshow(raptorPhone);
        
        axes(handles.Tera);
        imrotate(teraPhone,90);
        imshow(teraPhone);
        
        axes(handles.Human);
        imrotate(humanPhone, 90);
        imshow(humanPhone);
    case 3 % Ball
        axes(handles.raptor);
        imrotate(raptorBall,90);
        imshow(raptorBall);
        
        axes(handles.Tera);
        imrotate(teraBall, 90);
        imshow(teraBall);
        
        axes(handles.Human);
        imrotate(humanBall, 90);
        imshow(humanBall);
    case 4 % front view
        axes(handles.raptor);
        imrotate(raptorFront, 90);
        imshow(raptorFront);
        
        axes(handles.Tera);
        imrotate(teraFront, 90);
        imshow(teraFront);
        
        axes(handles.Human);
        imrotate(humanFront, 90);
        imshow(humanFront);
    case 5 %side view
        axes(handles.raptor);
        imrotate(raptorSide, 90);
        imshow(raptorSide);
        
        axes(handles.Tera);
        imrotate(teraSide, 90);
        imshow(teraSide);
        
        axes(handles.Human);
        imrotate(humanSide, 90);
        imshow(humanSide);
end

% elseif videoChoice = 'Side View Grasp'
%     axes(handles.raptorImg);
%     imshow('raptorPhone.JPG');
% elseif videoChoice= 
end



% --- Executes during object creation, after setting all properties.
function videoChoice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to videoChoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
