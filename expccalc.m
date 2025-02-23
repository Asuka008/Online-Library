function varargout = expccalc(varargin)
% EXPCCALC M-file for expccalc.fig
%      EXPCCALC, by itself, creates a new EXPCCALC or raises the existing
%      singleton*.
%
%      H = EXPCCALC returns the handle to a new EXPCCALC or the handle to
%      the existing singleton*.
%
%      EXPCCALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXPCCALC.M with the given input arguments.
%
%      EXPCCALC('Property','Value',...) creates a new EXPCCALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before expccalc_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to expccalc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help expccalc

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @expccalc_OpeningFcn, ...
                   'gui_OutputFcn',  @expccalc_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before expccalc is made visible.
function expccalc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to expccalc (see VARARGIN)

% Choose default command line output for expccalc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes expccalc wait for user response (see UIRESUME)
% uiwait(handles.figure1);
    dacplot(handles, 2.5);              % to initialise DAC window
    

% --- Outputs from this function are returned to the command line.
function varargout = expccalc_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doPlusMinus(handles, 1);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doPlusMinus(handles, 0);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
domultiply(handles, 0);

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dodivide(handles, 0, 0);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doblogic(handles, 0);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doblogic(handles, 1);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 1);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 2);

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 3);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 0);

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doblogic(handles, 2);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit5, 'string', getoutput(handles));

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit6, 'string', getoutput(handles));


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
domultiply(handles, 1);

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doprint (handles, 0);

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doprint (handles, 1);

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 4);

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dodivide(handles, 1, 0);

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dodivide(handles, 0, 1);

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 5);

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dounary(handles, 6);

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dofplusminus(handles, 1);

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dofplusminus(handles, 0);

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doftimesdivide(handles, 1);

% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doftimesdivide(handles, 0);

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dodac (handles);

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dorampadc(handles);

% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doSAadc(handles);

% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp = get(handles.edit5, 'string');
set(handles.edit5, 'string', get(handles.edit6, 'string'));
set(handles.edit6, 'string', temp);

% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doprint (handles, 2);

% ************** Routines for Integer Arithmetic / Logic / Shifts

function [a,b] = getinputs (handles);
set(handles.edit9, 'string', '');
a = check(handles, get(handles.edit5, 'string'), 'Value A');
if nargout > 1, b = check(handles, get(handles.edit6, 'string'), 'Value B'); end

function val = check(handles, val, wstr);
estr = '';
if length(val) == 8
elseif length(val) == 16 & isequal (wstr, 'Output')
else estr = ['Error: ', wstr, ' should have 8 bits'];
end
for ct = 1:length(val)
    if (val(ct) == '0' || val(ct) == '1'), 
    else 
        estr = ['Error: ', wstr, ' should have 0s and 1s'];
    end
end
if length(estr) > 0
    val = '00000000';
    set(handles.edit9, 'string', estr);
end

function setoutputs(handles, res, flags);
if isempty(get(handles.edit9, 'string'))
    if sum(res)-length(res)*48 == 0, z = '1'; else z = '0'; end
    fstr = ['C = ', flags(1), '; V = ', flags(2), '; Z = ', z, '; N = ', res(1)];
else
    res = '';
    fstr = '';
end
set(handles.edit7, 'string', res);
set(handles.edit8, 'string', fstr);

function [res, c, v] = PlusMinus (a, b, isplus);
res = repmat('0', 1, length(a));
c = [res, '0'];    
for ct = length(res):-1:1
    if isplus
        val = a(ct) + b(ct) + c(ct+1) - 48*3;
        if val >= 2, c(ct) = '1'; end
        if (val == 1) || (val == 3), res(ct) = '1'; end;
    else
        val = a(ct) - b(ct) - c(ct+1) + 48;
        if val < 0 c(ct) = '1'; end
        if abs(val) == 1, res(ct) = '1'; end   
    end
end
if c(1) == c(2), v = '0'; else v = '1'; end

function doPlusMinus (handles, isplus);
[a,b] = getinputs(handles);
[res, c, v] = PlusMinus(a,b,isplus);
setoutputs(handles, res, [c(1), v]);

function [a, b, ansneg] = getinformultdiv(handles, signed)
[a,b] = getinputs(handles);
if signed
    ansneg = a(1)~=b(1);
    if a(1)=='1', a = PlusMinus('00000000', a, 0); end
    if b(1)=='1', b = PlusMinus('00000000', b, 0); end
else
    ansneg = 0;
end

function res = unsignedmultiply(a,b);
a = [repmat('0', 1, length(a)), a];
res = repmat('0', 1, length(a));
for ct = length(b):-1:1
    if b(ct)=='1', res = PlusMinus(res, a, 1); end
    a = [a(2:length(a)), '0'];
end

function domultiply (handles, signed);
[a, b, ansneg] = getinformultdiv(handles, signed);
res = unsignedmultiply(a,b);
if signed && ansneg, res = PlusMinus('0000000000000000', res, 0); end
if signed
    if isequal(res(1:8), '00000000') || isequal (res(1:8), '11111111')
        flags = ['0', '0']; 
    else 
        flags = ['0', '1']; 
    end
else
    if res(1:8)=='00000000', flags = ['0', '0']; else flags = ['1', '0']; end
end
      % NB Carry if answer not fit in 8-bits; V = 0  (as per Z8000!)
setoutputs(handles, res, flags);

function [res, a] = unsigneddivide (a, b); 
% res = a/b  a = a % b
count = 0;
while b(1)~='1', 
    b = [b(2:length(b)), '0'];
    count = count + 1;
end
res = repmat('0', 1, length(b));
while (count >= 0)
    res = [res(2:length(b)), '0'];
    [temp, c] = PlusMinus(a, b, 0);
    if c(1) == '0'
        a = temp;
        res = PlusMinus(res, [repmat('0', 1, length(b)-1), '1'], 1);
    end                     % res = res + 1
    b = ['0', b(1:length(b)-1)];
    count = count - 1;
end

function dodivide (handles, signed, ismod);
[a, b, ansneg] = getinformultdiv(handles, signed);
if isequal (b, repmat('0', 1, length(b)))
    set(handles.edit9, 'string', 'Error: cant divide by 0');
else
    [res, a] = unsigneddivide(a, b);
    if ismod, res = a; end
    if signed && ansneg, res = PlusMinus('00000000', res, 0); end
    setoutputs(handles, res, ['0', '0']);
end

function doblogic(handles, opn);
[a,b] = getinputs(handles);
res='00000000';
for ct = 8:-1:1
    if opn == 0
        x = (a(ct) == '1') && (b(ct) == '1');
    elseif opn == 1
        x = (a(ct) == '1') || (b(ct) == '1');
    else        
        x = (a(ct) == '1') ~= (b(ct) == '1');
    end
    if x, res(ct) = '1'; end
end
setoutputs(handles, res, ['0' '0']);

function dounary(handles, opn);
a = getinputs(handles);
c = '0'; v = '0';
if opn == 0
    res = '00000000';
    for ct=1:8, if a(ct) == '0', res(ct) = '1'; end; end
elseif opn == 1
    c = a(1);
    if a(1) ~= a(2), v = '1'; end
    res = [a(2:8), '0'];
elseif opn == 4
    [res, c] = PlusMinus('00000000', a, 0);
elseif opn == 5
    c = a(1);
    res = [a(2:8), a(1)];
elseif opn == 6
    c = a(8);
    res = [a(8), a(1:7)];
else
    c = a(8);
    res = ['0', a(1:7)];
    if opn == 3, res(1) = a(1); end
end
setoutputs(handles, res, [c, v]);

function ans = getoutput(handles);
s = get(handles.edit7, 'string');
if isempty(s)
    ans = '00000000';
elseif (length(s) == 8)
    ans = s;
else 
    ans = s([9:16]);
end

function doprint (handles, issigned)
[a,b] = getinputs(handles);
str = ['A is ', BinToIntStr(a, issigned), ...
        ' B is ', BinToIntStr(b, issigned)];

if ~isempty(get(handles.edit7, 'string'))
    str = [str, ' Ans is ', ...
            BinToIntStr(check(handles, get(handles.edit7, 'string'), 'Output'), issigned) ];
end
if isempty (get (handles.edit9, 'string'))
    set (handles.edit9, 'string', str);
end
    
function mstr = BinToIntStr (val, issigned)
[ans, asign] = BinToInt(val, issigned);
if asign == -1, mstr = '-'; else mstr = ''; end
mstr = [mstr, int2str(ans)];
if issigned == 2, 
    if length(val) == 8,  den = '128'; else den = '16384'; end
    mstr = [mstr, '/', den]; 
end

function [ans, asign] = BinToInt (val, issigned)
if (issigned == 1) && (val(1)=='1') 
%    val = PlusMinus ('00000000', val, 0);
    val = PlusMinus (repmat('0', 1, length(val)), val, 0);
    asign = -1;
else
    asign = 1;
end
ans = 0;
for ct = 1:length(val)
    ans = ans + ans + val(ct) - 48;
end

% ****************************** Floating Point Routimes

function dofplusminus(handles, isadd)
if isadd, s='+'; else s='-'; end
disp(['Doing Floating Point a ',s,' b'])
[a,b] = getfinputs(handles);
fdisp('a is represented by ', a)
fdisp('b is represented by ', b)
if ~isadd, b = invertsign(b); end    
[temp, c] = PlusMinus(a.expo, b.expo, 0);     % check exponents
if c(1)=='1'                           % if b exponent larger
    a = equalexponents(b, a);       % adjust a
    fdisp('So exponents same, a is now ', a)
elseif ~isequal(temp, '00000000')   % else if exponents not equal
    b = equalexponents(a, b);       % adjust b
    fdisp('So exponents same, b is now ', b)
end

res.sign = a.sign;
res.expo = a.expo;
[res.mant, c] = PlusMinus(a.mant, b.mant, a.sign == b.sign);
fdisp('Mantissae added, result is', res)
if c(1)=='1' 
    if (a.sign == b.sign)     % if carry and were adding
        res = shiftmant (res, '1', 1);     % shift carry in
        fdisp('Carry - shift it in, result now', res)
    else                        % bit if subtract    
        res = invertsign(res);      % invert answer sign and negate its mantissa
        res.mant = PlusMinus(repmat('0', 1, length(res.mant)), res.mant, 0);
        fdisp('Carry, so invert sign/mant, result', res)
    end
end
res = normalise(res);
fdisp('After normalisation, result is ', res)
setfoutput(handles, res);
printfresults(handles, 2-isadd);

function doftimesdivide(handles, ismult)
if ismult, s='*'; else s='/'; end
disp(['Doing Floating Point a ',s,' b'])
[a,b] = getfinputs(handles);
fdisp('a is represented by ', a)
fdisp('b is represented by ', b)

if a.sign == b.sign, res.sign = '0'; else res.sign = '1'; end
res.expo = PlusMinus(a.expo, b.expo, ismult);     % add/sub exponents
if ismult
    temp = unsignedmultiply(a.mant, b.mant);
    res.mant = temp(1:length(a.mant));
    res.expo = PlusMinus(res.expo, '00000001', 1);     
        % * 2, cos mant is val/2^15 * val/2^15 = val/2^30
elseif viszero(b.mant) && viszero(b.expo)
    res = fzero;
    set(handles.edit9, 'string', 'Error - cant divide by 0');
else
    len = length(a.mant);
    [temp1, temp2] = unsigneddivide(a.mant, b.mant);
        % temp1 = 0 or 1; temp2 = a.mant rem b.mant
    z = repmat('0', 1, len);     
    temp3 = unsigneddivide([temp2, z], [z, b.mant]);
         % now calc x = remainder * 2^n / b.mant
    res.mant = [temp1(len), temp3(len+1:2*len-1)];
        % answer is temp1 + x/2^n
end
fdisp('Results first set as', res);
res = normalise(res);
fdisp('After normalisation, result is', res);
setfoutput(handles, res);
printfresults(handles, 4-ismult);

function [a,b] = getfinputs(handles);
set(handles.edit9, 'string', '');
a = fcheck(handles, get(handles.edit10, 'string'), 'Float A');
b = fcheck(handles, get(handles.edit11, 'string'), 'Float B');
    
function oval = fcheck(handles, val, wstr);
estr = 'should have form S MMMMMMM EEEEEEEE';
if length(val) == 18 && (val(2) == ' ') && (val(10) == ' ')
  estr = '';  
  for ct = [1,3:9, 11:18]
    if (val(ct) == '0') || (val(ct) == '1') 
    else 
        estr = 'should have 0s and 1s (and 2 spaces) only';
    end
  end  
end
if length(estr) > 0
    val = '0 00000000 0000000';
    set(handles.edit9, 'string', ['Error: ', wstr, ' ', estr]);
end
if viszero(val(12:length(val))) && viszero(val(3:10))  % is mant and exp zero
    oval = fzero;
else
    oval.sign = val(1);
    oval.mant = ['1', val(3:9)];                      % add initial 1
    oval.expo = PlusMinus (val(11:18), '01111111', 0);    % subtract 127
end

function ans = viszero(val)
ans = isequal (val, repmat('0', 1, length(val)));

function oval = fzero;    
oval.sign = '0';
oval.expo = '00000000';
oval.mant = repmat('0', 1, 8);

function val = invertsign(val)
if val.sign == '0', val.sign = '1'; else val.sign = '0'; end

function val = shiftmant (val, obit, isright)
% Shift mantissa left/right  decr/invcr exponent
ntos = length(val.mant)-1;
if isright
    val.mant = [obit, val.mant(1:ntos)];  % shift mantissa left
else
    val.mant = [val.mant(2:ntos+1), obit]; % shift right
end
val.expo = PlusMinus(val.expo, '00000001', isright);      % incr / decr exponent

function val = equalexponents(oval, val)
while ~isequal(val.expo, oval.expo)
    val = shiftmant(val, '0', 1);
end

function res = normalise(res)
if viszero(res.mant)
    if viszero(res.expo), res = fzero; end
else
    while (res.mant(1)=='0')
        res = shiftmant(res, '0', 0);
    end
end

function setfoutput(handles, res);
if isempty(get(handles.edit9, 'string'))
    fstr = [res.sign, ' ', ...
            res.mant(2:length(res.mant)), ' ', ...
            PlusMinus(res.expo, '01111111', 1)];
else
    fstr = '';
end
set(handles.edit12, 'string', fstr);

function printfresults(handles, opn);
if isempty(get(handles.edit9, 'string'))
    a = fcheck(handles, get(handles.edit10, 'string'), 'Float A');
    b = fcheck(handles, get(handles.edit11, 'string'), 'Float B');
    r = fcheck(handles, get(handles.edit12, 'string'), 'Float Ans');
    ops = '+-*/';
    set(handles.edit9, 'string', ...
        [strtof(a), ' ', ops(opn), ' ', strtof(b), ' = ', strtof(r)]);
end

function str = strtof(val)
if isequal (val.mant, repmat('0', 1, length(val.mant)))
    fval = 0;
else
    if val.sign=='1', fval = -1; else fval = 1; end
    [exval, exsign] = BinToInt (val.expo, 1);
    fval = fval * 2^(exval*exsign) * BinToInt(val.mant, 0) / 2^(length(val.mant)-1);
end
str = sprintf('%10.5f',fval);

function fdisp(s, num)
disp ([s, repmat(' ', 1, 35-length(s)), ' sign: ', num.sign, '; mant: ', num.mant,  '; expo: ', num.expo,';'])

% ****************** ADC / DAC Routines

function dodac(handles);
[val, dacV] = getdacv(handles);
dacplot(handles, dacV);
if isempty(get(handles.edit9, 'string'))
    set(handles.edit9, 'string', sprintf('DAC Out = %6.3fV',dacV));
end

function dacplot(handles, dacV);
axes(handles.axes1);
xm = get(gca, 'xlim');
ym = get(gca, 'ylim');
plot([0 xm(2)], [dacV, dacV], [0 0], ym);
set(gca, 'xlim', xm, 'xtick', [xm/4, xm(2)/2 + xm/4, xm(2)], ...
         'ylim', ym, 'ytick', ym);

function dorampadc(handles);
[val, dacV] = getdacv(handles);
rout = '00000000';
avals = zeros(1,256)+dacV;
ct = 1;
while ~isequal(val, rout)
    avals(ct) = itoV(ct-1);
    ct = ct + 1;
    rout = PlusMinus(rout, '00000001', 1);
end
ADCout(handles, dacV, rout, [1:256], avals);

function ADCout(handles, dacV, rout, xvals, avals); 
set(handles.edit14, 'string', rout);
dacplot(handles, dacV);
hold on; plot(xvals, avals); hold off;
if isempty(get(handles.edit9, 'string'))
    set(handles.edit9, 'string', sprintf('DAC Out = %6.3fV',dacV));
end

function doSAadc(handles);
[val, dacV] = getdacv(handles);
rout = '00000000';
vadd = '10000000';
avals = zeros(1,17);
xvals = [1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 8]*8;
for ct = 1:8;
    routnew = PlusMinus(rout, vadd, 1);
    avals([0 1]+ct*2) = [0 0] + itoV(BinToInt(routnew, 0));
    [temp, c] = PlusMinus(routnew, val, 0);
    if (c(1)=='1') || viszero(temp), rout = routnew; end
    vadd = ['0', vadd(1:7)];
end
avals(17) = itoV(BinToInt(rout, 0));
ADCout(handles, dacV, rout, xvals, avals);

function [val, dacV] = getdacv(handles)
set(handles.edit9, 'string', '');
val = check(handles, get(handles.edit13, 'string'), 'DAC Values');
dacV = itoV(BinToInt(val, 0));

function V = itoV (ival);
V = ival * 5 / 256;



