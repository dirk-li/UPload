   M S B A M L   `   `   `  ���� L  HMotor_torque_test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Motor_torque_testMotor_torque_test  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf "    Motor_torque_test.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:Motor_torque_test     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf       � Title$  
MainWindow��$��554.925��$��834.366��.��� -    �Name$ 	main_Grid��.+��� ���� *ActualWidth+ �� ElementName$ window�� �� Mode$ OneWay=����� *ActualHeight+$ window��$ OneWay=�c� -    c�Name$ toolbar��$
��Left=�$��66��$	��Top=�$	��436�����	#FFE8DEEB.@��� -    ��Name$ open_com_port_btn��$��打开串口��$��61��$	��Top=�$	��110�����	#FFA8DCF7$��24(�$
��Bold"��� -    ��Name$ com_port_label��$��	串口号��$��Center=�$	��Top=� J� RenderTransformOrigin$ -0.157,-0.488&�$��61��$	��114��$��24(�$
��Bold"����	#FFF1F1BE$��
0,0,0,-5.2q�$��Center=�$��Center=�� -    �Name$ test_processbar��$��61��$	��Top=�$	��185��$��
0,0,0,-0.2q����	#FFBAF9F8� -   $ PanchartGrid��$��10,66,316.8,214.6q�.+�#  LiveCharts.Wpf.CartesianChart  -   $��PanChart��$��0,10,-78.8,10.4q�&   LiveCharts.Wpf.Charts.Base.Chart	   LegendLocation$		 Top=�
   AxisY
   LiveCharts.Wpf.Axis     MinValue$	 300Q�   MaxValue$
 2040Q�   	Separator   LiveCharts.Wpf.Separator  $y�Visible=�{�.    Step$	 100Q�   StrokeThickness$	 0.2Q�   StrokeDashArray$	 0.1R�   Stroke �#404F56   AxisX   $ 0Q�$	 200Q�   {�.  $ 10Q�� -   $ TiltchartGrid��$��10,255,316.8,-41.4q�.+�  -	   $��	Tiltchart��$��0,44,-74.8,50.4q�$		 Top=�
   $	 300Q�$
 2040Q�   $y�Visible=�{�. $	 100Q�$	 0.2Q�$	 0.1R� �#404F56   $ 0Q�$	 200Q�   {�.  $ 10Q�&   System.Windows.Controls.DataGrid  -
     Name$ Torque_DataGrid��$
��Left=�$	��196��$��
583,86,0,0q�$	��Top=�$	��245��   AutoGenerateColumns .  ����    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Iterm��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding �� *Iterm+  $	 Pan��$ 50  �� *Pan+  $
 Tilt��$ 50  �� *Tilt+�� -   $ 	Resut_lab��$��Result��$��Center=�$��613,343,30,0q�$	��Top=�$	��122��$	��175�����	#FF37B346��. $
��Bold"�$��48(�&
   System.Windows.Media.TextOptions 
  TextHintingMode$ Fixed=�$��ExtraCondensed&�$��Center=�$��Center=��� $��597,10,63,440q�.+��� -   $ 
CoolButton��$��开始测试��$��43��$��24(�$
��Bold"����	#FF08C6F0$��
0,0,-0.2,0q��� -    ��Name$ 	MyListBox��� -   $ InputBox��$y�	Collapsed=�.+��� ���� *ActualWidth+$ window��$ OneWay=����� *ActualHeight+$ window��$ OneWay=�� 
���   � J� Opacity$	 0.5Q��� $	��200��
��� ���
���   �$��1q� �� CornerRadius$ 	0,15,0,15��$��Center=�$��Center=�._��� .+��� $��5q�$��
Input Box:��$
��Bold"�$��Cambria)��� -    ��Name$ InputTextBox��$	��150��$��Center=�$��Center=���  �� Orientation$ 
Horizontal=�$��Center=�.+��� -   $ 	YesButton��$��5q�$	��Yes����Z� 