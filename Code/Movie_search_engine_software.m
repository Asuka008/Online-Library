function varargout = Movie_search_engine_software(varargin)
% MOVIE_SEARCH_ENGINE_SOFTWARE MATLAB code for Movie_search_engine_software.fig
%      MOVIE_SEARCH_ENGINE_SOFTWARE, by itself, creates a new MOVIE_SEARCH_ENGINE_SOFTWARE or raises the existing
%      singleton*.
%
%      H = MOVIE_SEARCH_ENGINE_SOFTWARE returns the handle to a new MOVIE_SEARCH_ENGINE_SOFTWARE or the handle to
%      the existing singleton*.
%
%      MOVIE_SEARCH_ENGINE_SOFTWARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOVIE_SEARCH_ENGINE_SOFTWARE.M with the given input arguments.
%
%      MOVIE_SEARCH_ENGINE_SOFTWARE('Property','Value',...) creates a new MOVIE_SEARCH_ENGINE_SOFTWARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Movie_search_engine_software_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Movie_search_engine_software_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Movie_search_engine_software

% Last Modified by GUIDE v2.5 10-Aug-2023 15:54:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Movie_search_engine_software_OpeningFcn, ...
                   'gui_OutputFcn',  @Movie_search_engine_software_OutputFcn, ...
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

% --- Executes just before Movie_search_engine_software is made visible.
function Movie_search_engine_software_OpeningFcn(hObject, eventdata, handles, varargin)

set(handles.figure1, 'Name', '基于大数据神经网络的电影查询')
picture = imread('/Users/liaozichen/Documents/background.jpg');
image(picture);
set(handles.axes1, 'Visible', 'off',  'colorOrder', [0,0,1], 'units', 'normalized', 'position', [0 0 1 1]);% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Movie_search_engine_software (see VARARGIN)

% Choose default command line output for Movie_search_engine_software
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Movie_search_engine_software wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Movie_search_engine_software_OutputFcn(hObject, eventdata, handles) 
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
 
set(handles.text1,'String',"剧情 喜剧 动作 爱情 科幻 动画 悬疑 惊悚 恐怖 犯罪 同性 音乐 歌舞 传记 历史 战争 西部 奇幻 冒险 灾难 武侠 情色");


 



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit0_Callback(hObject, eventdata, handles)
% hObject    handle to edit0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit0 as text
%        str2double(get(hObject,'String')) returns contents of edit0 as a double


% --- Executes during object creation, after setting all properties.
function edit0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%剧情 喜剧 动作 爱情 科幻 动画 悬疑 惊悚 恐怖 犯罪 同性 音乐 歌舞 传记 历史 战争 西部 奇幻 冒险 灾难 武侠 情色
a=get(handles.edit1,'String');

if (a=="剧情")
    
    b="长津湖 兰心大剧院 我和我的父辈 摩加迪沙 沙丘";
    
elseif (a=="喜剧")
    
    b="失控玩家 俗女养成记2 我不是药神 疯狂动物城";
  
elseif (a=="动作")
    
    b="让子弹飞 功夫";   
    
 elseif (a=="爱情")
    
 b="海岸村恰恰恰 泰坦尼克号 我的巴比伦恋人";  
   
elseif (a=="科幻")
    
    b="楚门的世界 流浪地球 盗梦空间 星际穿越";  
   
elseif (a=="动画")
    
    b="千与千寻 寻梦环游记 你的名字。";  
   
elseif (a=="悬疑")
    
    b="盗梦空间 唐人街探案";  
   
elseif (a=="惊悚")
    
    b="釜山行 看不见的客人";  
   
elseif (a=="恐怖")
    
    b="闪灵 电锯惊魂";  
  
elseif (a=="犯罪")
    
    b="肖申克的救赎 这个杀手不太冷"; 
    
elseif (a=="同性")
    
    b="霸王别姬 请以你的名字呼唤我"; 
    
elseif (a=="音乐")
    
    b="海上钢琴师 放牛班的春天"; 
    
elseif (a=="歌舞")
    
    b="三傻大闹宝莱坞 爱乐之城"; 
   
elseif (a=="传记")
    
    b="摔跤吧！爸爸 绿皮书 当幸福来敲门"; 
    
elseif (a=="历史")
    
    b="辛德勒的名单 末代皇帝"; 
    
elseif (a=="战争")
    
    b="红海行动 战狼2 美丽人生"; 
    
elseif (a=="西部")
    
    b="被解救的姜戈 无人区"; 
    
elseif (a=="奇幻")
    
    b="哈利·波特与魔法石 大话西游之月光宝盒";  
    
elseif (a=="冒险")
    
    b="阿凡达 飞屋环游记 头号玩家"; 
    
elseif (a=="灾难")
    
    b="后天 2012 唐山大地震"; 
    
elseif (a=="武侠")
    
    b="武林外传 东邪西毒 武状元苏乞儿"; 
    
elseif (a=="情色")
    
    b="西西里的美丽传说 色戒 一树梨花压海棠"; 

else
    
    b="未找到该影视类别";
    
end

set(handles.text2,'String',b);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit2,'String');

if (a=="千与千寻")
    
    b="[千与千寻 千と千尋の神隠し][2001][日本][日语] 链接:https://pan.baidu.com/s/1l1JJNjPy14daUkWv9K163g 提取码:6tyj";
    
elseif (a=="寻梦环游记")
    
    b="​[寻梦环游记 Coco][2017][喜剧 / 动画][美国] 链接:https://pan.baidu.com/s/1faap3LDx8JDL7hoOQCV9eg 提取码:1r8d";

elseif (a=="你的名字。")
    
    b="​[你的名字][2016][动画][日本] 链接：https://pan.baidu.com/s/1BOIIpucXE_nWvtgEtUl6cQ 提取码：z72n";
    
elseif (a=="星际穿越")
    
    b="[星际穿越][2014][科幻 / 悬疑][美国 / 英国] 链接:https://pan.baidu.com/s/1Xr4I7xWp1bj_BL176-876w 提取码:n25z";
    
elseif (a=="​​流浪地球")
    
    b="​​流浪地球 [2019] 链接:https://pan.baidu.com/s/1gOQZZlCY1OIWUkC_NYnaWA 提取码:wa2r ";
else
    
    b="未找到该影视资源";
    
end

set(handles.text3,'String',b);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',"请输入你想要的电影类别");
set(handles.edit2,'String',"请输入电影名称");
set(handles.text2,'String',"");
set(handles.text3,'String',"");


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'visible','off');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close(Movie_search_engine_software)
 menu


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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


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
