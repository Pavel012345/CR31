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

namespace CR31.View.ScreenPage
{
    /// <summary>
    /// Логика взаимодействия для MainScreenPage.xaml
    /// </summary>
    public partial class MainScreenPage : Page
    {
        public MainScreenPage()
        {
            InitializeComponent();
        }

        private void BtnReg_Click_1(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainWindowRegistrationPage());
        }

        private void BtnAuth_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainWindowLoginPage());
        }
    }
}
