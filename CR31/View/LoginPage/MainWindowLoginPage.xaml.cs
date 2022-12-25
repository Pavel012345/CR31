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


namespace CR31.View.LoginPage
{
    /// <summary>
    /// Логика взаимодействия для MainWindowLoginPage.xaml
    /// </summary>
    public partial class MainWindowLoginPage : Page
    {
        public MainWindowLoginPage()
        {
            InitializeComponent();
        }

        private async void BtnInput_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                User usermodel = FrameNavigate.Db.User.FirstOrDefault(u => u.Login == TbLogin.Text && u.Password == Password_Txb.Password);
                if (usermodel == null)
                {
                    MessageBox.Show("Ошибка данных",
                        "Системное сообщение",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }

                else
                {
                    FrameNavigate.CoreFrame.Navigate(new MainExployeePage());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(),
                    "Cистемная ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
               
            }
        }

        private void BtnGuest_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainUserPage());
        }


        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainScreenPage());
        }
    }
}
