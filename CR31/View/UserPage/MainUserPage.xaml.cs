using System;
using CR31.Model;
using CR31;
using CR31.View.LoginPage;
using CR31.View.CarPage;
using CR31.View.ContractPage;
using CR31.View.ScreenPage;
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

namespace CR31.View.UserPage
{
    /// <summary>
    /// Логика взаимодействия для MainUserPage.xaml
    /// </summary>
    public partial class MainUserPage : Page
    {
        public MainUserPage()
        {
            InitializeComponent();
        }

        private void BtnCar_Click_1(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainCarClientPage());  
        }

        private void BtnZakaz_Click_1(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new OrderClientPage());
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainScreenPage());
        }

        private void BtnOK_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
