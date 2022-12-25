using CR31.View.EmployeePage;
using System;
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

namespace CR31.View.ContractPage
{
    /// <summary>
    /// Логика взаимодействия для CompletedContractPage.xaml
    /// </summary>
    public partial class CompletedContractPage : Page
    {
        public CompletedContractPage()
        {
            InitializeComponent();
            DataOrderInfo.ItemsSource = FrameNavigate.Db.Contract.OrderBy(f => f.ContractID).ToList();
        }

        private void BtnOkk_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnBack7_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainExployeePage());
        }
    }
}
