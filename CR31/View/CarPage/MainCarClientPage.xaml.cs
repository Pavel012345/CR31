using System;
using CR31.View.LoginPage;
using System.Collections.Generic;
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
using CR31.View.EmployeePage;
using CR31.View.UserPage;

namespace CR31.View.CarPage
{
    /// <summary>
    /// Логика взаимодействия для MainCarClientPage.xaml
    /// </summary>
    public partial class MainCarClientPage : Page
    {
        public MainCarClientPage()
        {
            InitializeComponent();
            DataOrderInfo.ItemsSource = FrameNavigate.Db.Car.OrderBy(f => f.BrandCar).ToList();
        }

        private void BtnBack8_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainUserPage());
        }

        private void BtnOk8_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
