using System;
using CR31.Model;
using CR31.View.EmployeePage;
using CR31.View.LoginPage;
using CR31.View.UserPage;
using CR31.View.CarPage;
using CR31.View.ContractPage;
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

namespace CR31.View.EmployeePage
{
    /// <summary>
    /// Логика взаимодействия для MainExployeePage.xaml
    /// </summary>
    public partial class MainExployeePage : Page
    {
        public MainExployeePage()
        {
            InitializeComponent();
        }

        private void BtnBaza_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new CompletedContractPage());  
        }

        private void BtnContract_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainContractPage());
        }

        private void BtnCar_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainCarPage());
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainWindowLoginPage());
        }

        private void BtnZakaz_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new OrderEmployeePage());
        }
    }
}
