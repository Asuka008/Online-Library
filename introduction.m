function varargout = introduction(varargin)
% INTRODUCTION MATLAB code for introduction.fig
%      INTRODUCTION, by itself, creates a new INTRODUCTION or raises the existing
%      singleton*.
%
%      H = INTRODUCTION returns the handle to a new INTRODUCTION or the handle to
%      the existing singleton*.
%
%      INTRODUCTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTRODUCTION.M with the given input arguments.
%
%      INTRODUCTION('Property','Value',...) creates a new INTRODUCTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before introduction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to introduction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help introduction

% Last Modified by GUIDE v2.5 09-Aug-2023 13:44:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @introduction_OpeningFcn, ...
                   'gui_OutputFcn',  @introduction_OutputFcn, ...
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


% --- Executes just before introduction is made visible.
function introduction_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.figure1, 'Name', '产品介绍')
picture = imread('/Users/liaozichen/Documents/background.jpg');
image(picture);
set(handles.axes1, 'Visible', 'off',  'colorOrder', [0,0,1], 'units', 'normalized', 'position', [0 0 1 1]);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to introduction (see VARARGIN)

% Choose default command line output for introduction
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes introduction wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = introduction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
var = get(handles.popupmenu1,'String');
if (var=="兴趣检测")
    b="这款基于大数据神经网络的工具可以通过用户对不同图书及电影的偏好为用户给出不同的图书及电影推荐，经过我们的努力现在用户的满意度已经接近90%。快来试试吧！";
elseif (var=="图书检索")
    b="这款基于大数据神经网络的检索工具可对用户输入的图书名称进行智能检索并提供最后的网盘链接等。";
else
    b="在这个信息爆炸的时代，我们面临无尽的书籍和电影选择。但是，如何找到真正符合你口味的读书和电影呢？别担心！现在有一款强大的工具可以帮助你解决这个问题——基于大数据和神经网络技术的智能推荐工具。我们的智能推荐工具是基于大数据和神经网络的先进算法开发而成的。它通过分析海量的用户行为数据和内容信息，能够准确地洞察每个用户的个人偏好和口味。无论是读书还是电影，我们的工具都能为你提供个性化的推荐，让你轻松发现符合自己口味的作品。这个工具的优势在于它的智能性和精准性。通过大数据分析和神经网络模型的训练，它能够深入了解用户的兴趣和偏好，并根据个人的历史记录和特征，推荐最适合的读书和电影。无论你是喜欢科幻、悬疑、历史，还是爱情、动作、喜剧，我们的工具都能满足你的需求。另外，我们的工具还具有实时性和多样性。它会持续跟踪并分析最新的热门书籍和电影，及时推送给你最新的推荐内容。同时，我们不仅仅关注主流作品，也会推荐一些潜力新星和小众的作品，让你的阅读和观影经验更加多元化和丰富。最重要的是，我们尊重用户的隐私和个人权益。我们的工具只会使用匿名化的用户数据进行分析和推荐，保证你的个人信息安全和隐私保护。使用这个基于大数据和神经网络技术的智能推荐工具，你将能够轻松发现符合你口味的读书和电影。不再为选择困难而烦恼，不再浪费时间在不喜欢的作品上。快来尝试我们的智能推荐工具，让阅读和观影的体验更加个性化、精准和乐趣！";
end
set(handles.text3,'String',b);

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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(introduction)
menu


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
copyTrans

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(introduction)
interest

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(introduction)
Movie_search_engine_software

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(introduction)
 Book_search_engine_software

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
compassClock


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
