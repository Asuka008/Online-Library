function varargout = home1(varargin)
% HOME1 MATLAB code for home1.fig
%      HOME1, by itself, creates a new HOME1 or raises the existing
%      singleton*.
%
%      H = HOME1 returns the handle to a new HOME1 or the handle to
%      the existing singleton*.
%
%      HOME1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOME1.M with the given input arguments.
%
%      HOME1('Property','Value',...) creates a new HOME1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before home1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to home1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help home1

% Last Modified by GUIDE v2.5 04-Aug-2023 10:45:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @home1_OpeningFcn, ...
                   'gui_OutputFcn',  @home1_OutputFcn, ...
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


% --- Executes just before home1 is made visible.
function home1_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.figure1, 'Name', '基于大数据神经网络的线上资源查询系统')
picture = imread('/Users/liaozichen/Documents/background.jpg');
image(picture);
set(handles.axes1, 'Visible', 'off',  'colorOrder', [0,0,1], 'units', 'normalized', 'position', [0 0 1 1]);
jPass = javax.swing.JPasswordField;                                 %% 创建一个密码框
hPass = javacomponent(jPass,[398,422,400, 27]);                  %% 设置密码框的位置
jPass.setHorizontalAlignment(javax.swing.JPasswordField.CENTER);    %% 设置密码框输入内容的水平对齐方式
jPass.setFocusable(1);      %% 设置焦点table切换次序
jPass.setEchoChar('*');     %% 设置JPasswordField的回显字符
handles.jPass = jPass;
handles.hPass = hPass;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to home1 (see VARARGIN)

% Choose default command line output for home1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes home1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = home1_OutputFcn(hObject, eventdata, handles) 
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
global a1;%全局变量
global a2;
 password = handles.hPass.Text;%获取密码框输入
a2=str2double(password);%字符转化为数
if (a1==202283710023)&&(a2==123)
    close(home1);%关闭登录页面
     menu;%打开功能页面
else 
      errordlg('账号或密码有误！', '错误');
        % % 清空用户名和密码
        set(handles.edit1, 'String', '');
        handles.hPass.Text = '';
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
global a1
a1=str2double(get(handles.edit1,'String'));

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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(home1)


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
