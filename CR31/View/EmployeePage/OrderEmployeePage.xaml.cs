using System;
using CR31.Model;
using CR31.View.EmployeePage;
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
    /// Логика взаимодействия для OrderEmployeePage.xaml
    /// </summary>
    public partial class OrderEmployeePage : Page
    {
        public OrderEmployeePage()
        {
            InitializeComponent();
            DataOrderInfo.ItemsSource = FrameNavigate.Db.Order.OrderBy(f => f.FIO).ToList();
        }

        private void BtnBack11_Click(object sender, RoutedEventArgs e)
        {
            FrameNavigate.CoreFrame.Navigate(new MainExployeePage());
        }

        private void BtnOk11_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
