   M S B A M L   `   `   `  ����J  FGoogleMapWpfApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:GoogleMapWpfAppGoogleMapWpfApp  5   	        GoogleMapWpfApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:GoogleMapWpfApp     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      � $��20(�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5       � ColumnDefinitions 5   
   �� 5      $
��326* �6   �� 5      $
��191* �6   .+�5   
   )   #GoogleMapWpfApp.PlaceAutoCompleteUC  -   5          Name$ sourcePlaceAutoCompleteUC��5   $   $��0��6G     5   
   -   5        $ destPlaceAutoCompleteUC��5   %   $��1��6F   �� 5   
   -   5         ��Name$ TravelModeComboBox��5       $��2��6    �� SelectedIndex$ 0��6<   �� 5   
   -   5        $��חשב מרחק וזמן��5      $��4��6)   $��2��66   $��10q�6J   6V   �� 5   
   -   5         ��Name$ distanceResult��5      $��5��6)   �� 5   
   -   5        $ durationResult��5      $��6��6(   �� 5   
   $��כתובת המוצא��6   $��1��6&   �� 5   
   $��כתובת היעד��6   $��1��6%   $��1��65   �� 5    
   $��אמצעי תחבורה��6   $��1��6'   $��2��67   5"      5#      