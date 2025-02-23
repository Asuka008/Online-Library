function copyTrans
import java.awt.Toolkit
import java.awt.datatransfer.DataFlavor
import java.awt.datatransfer.StringSelection
import java.awt.MouseInfo;

% 获取剪切板文本
% clip=Toolkit.getDefaultToolkit().getSystemClipboard();
% clipTf=clip.getContents([]);
% clipContent=clipTf.getTransferData(DataFlavor.stringFlavor)
clip=Toolkit.getDefaultToolkit().getSystemClipboard();

% 获取鼠标位置
% ---------------------------------------------------
% 方法一：
% import java.awt.MouseInfo;
% mousepoint=MouseInfo.getPointerInfo().getLocation();
% ---------------------------------------------------
% 方法二
% root=get(0);
% mousepoint=root.PointerLocation;

% 旧的剪切板内容：若是剪切板内容与之前不同则进行翻译过程
lastContent='translation tool';
tText=StringSelection(lastContent);
clip.setContents(tText,[])

warning off

% figure窗口构建
transFig=uifigure('units','pixels');
transFig.Position=[10,65,300,200];
transFig.NumberTitle='off';
transFig.MenuBar='none';
transFig.Name='translation tool';
transFig.Color=[1,1,1];
transFig.Resize='off';
transFig.Visible='on';

runflag=true;
% 通过设置回调函数，让点击右上角关闭时窗口隐藏而不是被删除
set(transFig,'CloseRequestFcn',@closeFig)
function closeFig(~,~)
    transFig.Visible='off';
end

% 文本标签创建
oriTextAreaLabel=uilabel(transFig);
oriTextAreaLabel.FontSize=16;
oriTextAreaLabel.FontColor=[0.35,0.39,0.19];
oriTextAreaLabel.Position=[10 175 150 20];
oriTextAreaLabel.FontWeight='bold';
oriTextAreaLabel.Text=' 原文(Original text)';

transTextAreaLabel=uilabel(transFig);
transTextAreaLabel.FontSize=16;
transTextAreaLabel.FontColor=[0.35,0.39,0.19];
transTextAreaLabel.Position=[10 80 150 20];
transTextAreaLabel.FontWeight='bold';
transTextAreaLabel.Text=' 翻译(Translation)';
% 文本框创建
oriTextArea=uitextarea(transFig);
oriTextArea.FontSize=15;
oriTextArea.FontColor=[0.4 0.4 0.4];
oriTextArea.Position=[10 105 280 60];
oriTextArea.Value='translation tool';

transTextArea=uitextarea(transFig);
transTextArea.FontSize=15;
transTextArea.FontColor=[0.4 0.4 0.4];
transTextArea.Position=[10 10 280 60];
transTextArea.Value='翻译工具';

% 上下文菜单
ContextMenu=uicontextmenu(transFig);
Menu=uimenu(ContextMenu);
Menu.Text='关闭划词翻译工具';
set(Menu,'MenuSelectedFcn',@closeFig2)
function closeFig2(~,~)
    runflag=false;
    delete(transFig)
    clc;
end
transFig.ContextMenu=ContextMenu;

while runflag
    pause(0.5)
    clipTf=clip.getContents([]);
    clipContent=clipTf.getTransferData(DataFlavor.stringFlavor);
    if ~strcmp(lastContent,clipContent)
        % 通过接口获取翻译
        website=['http://fanyi.youdao.com/openapi.do?keyfrom=cxvsdffd33&key=1310976914&type=data&doctype=xml&version=1.1&q=',...
            clipContent,'&only=translate"'];
        webContent=webread(website);
        trans_begin=regexpi(webContent,'<paragraph><![CDATA[');
        trans_end=regexpi(webContent,']></paragraph>');
        transContent=webContent(trans_begin+20:trans_end-2);
        
        % 命令行展示
        disp(' ')
        disp('翻译：')
        disp(transContent)
        
        % 更改工具窗口的文本
        oriTextArea.Value=clipContent;
        transTextArea.Value=transContent; 
        
        % 将窗口显示在其他窗口上面
        transFig.Visible='off';
        transFig.Visible='on';
        %transFig.WindowState='fullscreen';
        %transFig.WindowState='normal';
        
        % 根据鼠标位置更改窗口位置
        
        root=get(0);
        mousepoint=root.PointerLocation;
        mousepoint=mousepoint./root.ScreenSize(3:4);
        mousepoint=mousepoint.*[1280,720];
        % root=get(0);
        % mousepoint=root.PointerLocation
        transFig.Position=[mousepoint(1),mousepoint(2)-200,300,200];
        
        lastContent=clipContent;
    end
end
end
