function varargout = Book_search_engine_software(varargin)
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

% Last Modified by GUIDE v2.5 09-Aug-2023 14:04:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Book_search_engine_software_OpeningFcn, ...
                   'gui_OutputFcn',  @Book_search_engine_software_OutputFcn, ...
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
function Book_search_engine_software_OpeningFcn(hObject, eventdata, handles, varargin)

set(handles.figure1, 'Name', '基于大数据神经网络的图书查询')
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
function varargout = Book_search_engine_software_OutputFcn(hObject, eventdata, handles) 
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
 
set(handles.text1,'String',"小说类，历史类，科幻类，传记类，成长类，犯罪/悬疑类，心理学类，文学评论类，经济管理类，艺术类");


 



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

if (a=="小说类")
    
    b="《1984》（乔治·奥威尔）、《百年孤独》（加西亚·马尔克斯）、《傲慢与偏见》（简·奥斯汀）";
    
elseif (a=="历史类")
    
    b="《人类简史》（尤瓦尔·赫拉利）、《中国历代政治得失》（钱穆）、《三国演义》（罗贯中）";
  
elseif (a=="科幻类")
    
    b="《银河系漫游指南》（道格拉斯·亚当斯）、《基地》（艾萨克·阿西莫夫）、《黑暗森林》（刘慈欣）";   
    
 elseif (a=="传记类")
    
 b="《奇特的一生》（玛丽·波波沃）、《史蒂夫·乔布斯传》（沃尔特·艾萨克森）、《李嘉诚传》（傅国涌）";  
   
elseif (a=="成长类")
    
    b="《如何高效学习》（巴巴拉·奥克利）、《富爸爸穷爸爸》（罗伯特·清崎）、《原则》（雷·达里奥）";  
   
elseif (a=="犯罪/悬疑类")
    
    b="《福尔摩斯探案集》（阿瑟·柯南·道尔）、《嫌疑人X的献身》（东野圭吾）、《切尔诺贝利的神秘事件》（阿列克谢·舍林）";  
   
elseif (a=="心理学类")
    
    b="《人性的弱点》（戴尔·卡耐基）、《认知心理学》（丹尼尔·卡尼曼）、《影响力》（罗伯特·西奥迪尼）";  
   
elseif (a=="文学评论类")
    
    b="《白夜行解读》（张鸣）、《文艺复兴的文化》（雅克·蒂费尼）";  
   
elseif (a=="经济管理类")
    
    b="《经济学原理》（曼昆）、《创新者的窘境》（克莱顿·基斯特森）、《公司理财》（彼得·林奇）";  
  
elseif (a=="艺术类")
    
    b="名画欣赏》（郭家宽）、《音乐的秘密》（奥利弗·萨克斯）、《魔法般的色彩：绘画中的颜色和光影》（布莱恩·科尔斯顿）"; 

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

if (a=="百年孤独")
    
    b="[百年孤独][中文] 链接:https://pan.baidu.com/s/66TYJUjPy14daUkTH7K654t 提取码:7thg";
    
elseif (a=="寻梦环游记")
    
    b="​[寻梦环游记 Coco][2017][喜剧 / 动画][美国] 链接:https://pan.baidu.com/s/1faap3LDx8JDL7hoOQCV9eg 提取码:1r8d";

elseif (a=="你的名字。")
    
    b="​[你的名字][2016][动画][日本] 链接：https://pan.baidu.com/s/1BOIIpucXE_nWvtgEtUl6cQ 提取码：z72n";
    
elseif (a=="星际穿越")
    
    b="[星际穿越][2014][科幻 / 悬疑][美国 / 英国] 链接:https://pan.baidu.com/s/1Xr4I7xWp1bj_BL176-876w 提取码:n25z";
    
elseif (a=="​​流浪地球")
    
    b="​​流浪地球 [2019] 链接:https://pan.baidu.com/s/1gOQZZlCY1OIWUkC_NYnaWA 提取码:wa2r ";
else
    
    b="未找到该图书资源";
    
end

set(handles.text3,'String',b);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',"请输入你想要的图书类别");
set(handles.edit2,'String',"请输入图书名称");
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
close(Book_search_engine_software);
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


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
