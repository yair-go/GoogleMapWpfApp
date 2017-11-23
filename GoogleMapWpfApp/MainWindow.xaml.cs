using GoogleMapsApi;
using GoogleMapsApi.Entities.Directions.Request;
using GoogleMapsApi.Entities.Directions.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GoogleMapWpfApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string source;
        string dest;
        TravelMode travelMode;
        Leg leg;

        public MainWindow()
        {
            InitializeComponent();
            TravelModeComboBox.ItemsSource = Enum.GetValues(typeof(TravelMode));
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            source = sourcePlaceAutoCompleteUC.Text;
            dest = destPlaceAutoCompleteUC.Text;
            travelMode = (TravelMode)TravelModeComboBox.SelectedItem;

            System.ComponentModel.BackgroundWorker work = new System.ComponentModel.BackgroundWorker();
            work.DoWork += W_DoWork;
            work.RunWorkerCompleted += W_RunWorkerCompleted;
            work.RunWorkerAsync();

        }

        private void W_DoWork(object sender, System.ComponentModel.DoWorkEventArgs e)
        {
            leg = null;
            try
            {
                var drivingDirectionRequest = new DirectionsRequest
                {
                    TravelMode = travelMode,
                    Origin = source,
                    Destination = dest,
                };

                DirectionsResponse drivingDirections = GoogleMaps.Directions.Query(drivingDirectionRequest);
                Route route = drivingDirections.Routes.First();
                leg = route.Legs.First();
            }
            catch (Exception)
            {
               leg = null;
            }
        }
        private void W_RunWorkerCompleted(object sender, System.ComponentModel.RunWorkerCompletedEventArgs e)
        {
           if(leg != null)
            {
                distanceResult.Content = leg.Distance.Text;
                durationResult.Content = leg.Duration.Text;
            }
           else
            {
                distanceResult.Content = "no result";
                durationResult.Content = "no result";
            }
        }


    }
}
