function compassClock
CCList='零一二三四五六七八九十';
WDList='一二三四五六日';
TBList='子丑寅卯辰巳午未申酉戌亥';

timeNow=datetime('now');
dayNumber=weekday(timeNow);
dayNumber=mod(dayNumber-2,7)+1;
timeMat=[timeNow.Year,timeNow.Month,timeNow.Day,dayNumber,...
    ceil((mod(timeNow.Hour+1,24)+1)/2),timeNow.Hour,timeNow.Minute,round(timeNow.Second)];
timeMat(6:8)=timeMat(6:8)+1;
lastTimeMat=timeMat;

% 计算获取年月日char矩阵
yearList=[CCList(str2num(num2str(timeMat(1))')'+1),'年'];
numList=char(32.*ones(60,3));
for i=0:60
    tNum=CCList(str2num(num2str(i)')'+1);
    if length(tNum)>1,tNum=[tNum(1),'十',tNum(2)];end
    if length(tNum)>1&&abs(tNum(end))==38646,tNum(end)=[];end
    if length(tNum)>1&&abs(tNum(1))==19968,tNum(1)=[];end
    numList(i+1,end-length(tNum)+1:end)=tNum;
end
monthList=[numList(2:13,:),char(ones(12,1).*26376)];
dayList=[numList(2:32,:),char(ones(31,1).*26085)];
weekList=[char(ones(7,1).*26143),char(ones(7,1).*26399),WDList'];
tbList=[TBList',char(ones(12,1).*26102)];
hourList=[numList(1:24,:),char(ones(24,1).*26102)];
minuteList=[numList(1:60,:),char(ones(60,1).*20998)];
secondList=[numList(1:60,:),char(ones(60,1).*31186)];

% 创建figure窗口及axes坐标区域
fig=figure('Name',"在线时钟",'Units','normalized','Position',[.2,.05,.55,.82],'Color',[2,34,57]./255);
ax=axes('Parent',fig);hold on;
set(ax,'Position',[0,0,1,1],'PlotBoxAspectRatio',[1,1,1],'XLim',[-1,1].*1.17,'YLim',[-1,1].*1.17,...
    'XColor','none','YColor','none','Color',[2,34,57]./255);

% 绘制钟表handle
listCell={yearList,monthList,dayList,weekList,tbList,hourList,minuteList,secondList};
numCell={1,12,31,7,12,24,60,60};
RCell={0,.22,.39,.53,.64,.78,.96,1.15};
for k=1:8
    tList=listCell{k};
    for i=1:numCell{k}
        tTheta=2*pi/numCell{k}*(i-1);tNum=mod(i-1+timeMat(k)-1,numCell{k})+1;
        hdlSet{k,i}=text(ax,cos(tTheta).*RCell{k},sin(tTheta).*RCell{k},tList(tNum,:),'FontName','黑体',...
            'Color',[1,1,1],'FontSize',10,'HorizontalAlignment','right','Rotation',tTheta/pi*180);
    end
end
set(hdlSet{1,1},'HorizontalAlignment','center')
fill(ax,[-.1,1.17,1.17,-.1],[-1,-1,1,1].*.025,[0,0,0],'FaceAlpha',0,'EdgeColor',[1,1,1],'LineWidth',1.2)

% 循环绘图
while true
    timeNow=datetime('now');
    dayNumber=weekday(timeNow);
    dayNumber=mod(dayNumber-2,7)+1;
    timeMat=[timeNow.Year,timeNow.Month,timeNow.Day,dayNumber,...
        ceil((mod(timeNow.Hour+1,24)+1)/2),timeNow.Hour,timeNow.Minute,round(timeNow.Second)];
    timeMat(6:8)=timeMat(6:8)+1;
    K=find(lastTimeMat~=timeMat);
    if ~isempty(K)
        for k=K
            tList=listCell{k};
            for i=1:numCell{k}
                tNum=mod(i-1+timeMat(k)-1,numCell{k})+1;
                set(hdlSet{k,i},'String',tList(tNum,:))
            end
        end
    end
    lastTimeMat=timeMat;
    drawnow;
end
end
