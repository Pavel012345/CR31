using System;
using System.Collections.Generic;
using CR31.Model;
using CR31.View.EmployeePage;
using System.Linq;
using System.Text;
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

namespace CR31.View.CarPage
{
    /// <summary>
    /// Логика взаимодействия для MainCarPage.xaml
    /// </summary>
    public partial class MainCarPage : Page
    {
        public MainCarPage()
        {
            InitializeComponent();
            DataOrderInfo.ItemsSource = FrameNavigate.Db.Car.OrderBy(f => f.BrandCar).ToList();
        }

        private void BtnOk_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnBack6_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainExployeePage());   
        }
    }
}
