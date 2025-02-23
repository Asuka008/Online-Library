classdef radarChartApp < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure     matlab.ui.Figure
        ButtonGroup  matlab.ui.container.ButtonGroup
        Button_3     matlab.ui.control.RadioButton
        Button_2     matlab.ui.control.RadioButton
        Button       matlab.ui.control.Button
        UIAxes       matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        Data=randi([2,8],[4,7])+rand([4,7]); % Description
        RC
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.RC=radarChart(app.UIAxes,app.Data);
            app.RC.RLim=[1,10];
            app.RC.RTick=[1,2,8:1:10];
            app.RC=app.RC.draw();
            app.RC=app.RC.legend();
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
            app.Data=randi([2,8],[4,7])+rand([4,7]);
            app.RC.setData(app.Data);
        end

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
            selectedButton = app.ButtonGroup.SelectedObject;
            switch selectedButton.Text
                case '填充',app.RC.setType('Patch')
                case '线条',app.RC.setType('Line')
            end
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = '兴趣雷达图';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [1 21 446 441];

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.BackgroundColor = [0 0.4471 0.7412];
            app.Button.FontName = '宋体';
            app.Button.FontSize = 24;
            app.Button.FontWeight = 'bold';
            app.Button.FontColor = [1 1 1];
            app.Button.Position = [488 380 113 71];
            app.Button.Text = {'生成兴趣'; '雷达图'};

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.UIFigure);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ButtonGroup.Title = '雷达图类型';
            app.ButtonGroup.FontName = '宋体';
            app.ButtonGroup.FontSize = 18;
            app.ButtonGroup.Position = [488 235 123 120];

            % Create Button_2
            app.Button_2 = uiradiobutton(app.ButtonGroup);
            app.Button_2.Text = '线条';
            app.Button_2.FontName = '宋体';
            app.Button_2.FontSize = 14;
            app.Button_2.Position = [11 49 58 22];
            app.Button_2.Value = true;

            % Create Button_3
            app.Button_3 = uiradiobutton(app.ButtonGroup);
            app.Button_3.Text = '填充';
            app.Button_3.FontName = '宋体';
            app.Button_3.FontSize = 14;
            app.Button_3.Position = [11 21 65 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = radarChartApp

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
