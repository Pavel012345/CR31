using System;
using System.Collections.Generic;
using CR31.View.EmployeePage;
using CR31.View.UserPage;
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
using CR31.View.CarPage;

namespace CR31.View.ContractPage
{
    /// <summary>
    /// Логика взаимодействия для MainContractPage.xaml
    /// </summary>
    public partial class MainContractPage : Page
    {
        public MainContractPage()
        {
            InitializeComponent();
        }

        private void BtnOkey_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnBack5_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainExployeePage());
        }


        private async void BtnCreate10_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TbAmount.Text) ||
                string.IsNullOrEmpty(TbClient.Text) ||
                string.IsNullOrEmpty(TbDoc.Text) ||
                string.IsNullOrEmpty(TbEmpl.Text) ||
                string.IsNullOrEmpty(TbNumCar.Text) ||
                string.IsNullOrEmpty(TbStart.Text) ||
                string.IsNullOrEmpty(TbStop.Text))
            {
                MessageBox.Show("Все поля должны быть заполнены!",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }

            else
            {
                FrameNavigate.Db.Contract.Add(new Model.Contract
                {
                    ContractID = Convert.ToInt32(TbDoc.Text),
                    ExployeeID = Convert.ToInt32(TbEmpl.Text),
                    ClientID = Convert.ToInt32(TbClient.Text),
                    CarID = Convert.ToInt32(TbNumCar.Text),
                    Amount = Convert.ToInt32(TbAmount.Text),
                    Start_rent = Convert.ToDateTime (TbStart.Text),
                    Stop_rent = Convert.ToDateTime (TbStop.Text),
                }) ;
                await FrameNavigate.Db.SaveChangesAsync();
                MessageBox.Show("Договор создан",
                    "Системное сообщение",
                    MessageBoxButton.OK,
                    MessageBoxImage.Information);
            }
        }

        private void BtnBack12_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainExployeePage());
        }
    }
}
