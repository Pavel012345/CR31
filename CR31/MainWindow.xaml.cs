using System;
using CR31.Model;
using CR31.View.EmployeePage;
using CR31.View.LoginPage;
using CR31.View.UserPage;
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

namespace CR31
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FrameNavigate.CoreFrame = MainWindowFrame;
            FrameNavigate.Db = new CR3Entities5();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindowFrame.Navigate(new MainWindowLoginPage());    
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindowFrame.Navigate(new MainWindowRegistrationPage());
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
