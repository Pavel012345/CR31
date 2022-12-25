using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CR31.View.UserPage;
using CR31.View.ScreenPage;
using CR31.Model;
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

namespace CR31.View.ContractPage
{
    /// <summary>
    /// Логика взаимодействия для OrderClientPage.xaml
    /// </summary>
    public partial class OrderClientPage : Page
    {
        public OrderClientPage()
        {
            InitializeComponent();
            FrameNavigate.CoreFrame.Navigate(new MainScreenPage());
            FrameNavigate.Db = new CR3Entities5();
        }

        private async void BtnCreate11_Click(object sender, RoutedEventArgs e)
        {
            if  (string.IsNullOrEmpty(TbFIO.Text) ||
                string.IsNullOrEmpty(TbModelCar.Text) ||
                string.IsNullOrEmpty(TbMarka.Text)||
                string.IsNullOrEmpty(TbSrok.Text))
            {
                MessageBox.Show("Все поля должны быть заполнены!",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }

            else
            {
                FrameNavigate.Db.Order.Add(new Order
                {
                    FIO = TbFIO.Text,
                    BrandCar = TbMarka.Text,
                    Model = TbModelCar.Text,
                    LeaseTime = TbSrok.Text,
                });
                await FrameNavigate.Db.SaveChangesAsync();
                MessageBox.Show("Заказ создан",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Information);
            }
        }

        private void BtnBack11_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainUserPage());
        }
    }
}
