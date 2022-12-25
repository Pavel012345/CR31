using System;
using CR31.Model;
using CR31.View.EmployeePage;
using CR31.View.LoginPage;
using CR31.View.UserPage;
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

namespace CR31.View.LoginPage
{
    /// <summary>
    /// Логика взаимодействия для MainWindowRegistrationPage.xaml
    /// </summary>
    public partial class MainWindowRegistrationPage : Page
    {
        public MainWindowRegistrationPage()
        {
            InitializeComponent();
            FrameNavigate.CoreFrame.Navigate(new MainWindowLoginPage());
            FrameNavigate.Db = new CR3Entities5();
        }


        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainScreenPage());
        }

        private async void BtnRegistr_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(Tb_Login.Text) ||
                string.IsNullOrEmpty(Tb_Pass.Text))
            {
                MessageBox.Show("Логин и пароль должны быть заполнены!",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }


            else
            {
                FrameNavigate.Db.User.Add(new User
                {
                    Login = Tb_Login.Text,
                    Password = Tb_Pass.Text,
                    TelephoneNumber = Tb_Phone.Text,
                });
                await FrameNavigate.Db.SaveChangesAsync();
                MessageBox.Show("Пользователь зарегистрирован",
                "Системное сообщение",
                MessageBoxButton.OK,
                MessageBoxImage.Information);

                FrameNavigate.CoreFrame.Navigate(new MainWindowLoginPage());
            }
        }
    }
}
