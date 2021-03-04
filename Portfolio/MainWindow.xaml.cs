using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Portfolio
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        //summary
        //Запуск опроса opc-server
        //
        private void startWorking()
        {
            throw new NotImplementedException();
        }

        private void openSettings()
        {
            SettingsWindow setWin = new SettingsWindow();
            setWin.Show();
        }

        private void agregation()
        {
            throw new NotImplementedException();
        }

        private void stopWorking()
        {
            throw new NotImplementedException();
        }

        private void otbrakovka()
        {
            throw new NotImplementedException();
        }

        private void openLogWindow()
        {
            throw new NotImplementedException();
        }

        private void closingProgram()
        {
            throw new NotImplementedException();
        }



        private void Bsettings_Click(object sender, RoutedEventArgs e)
        {
            openSettings();
        }

        private void Bagreg_Click(object sender, RoutedEventArgs e)
        {
            agregation();
        }

        private void Bstop_Click(object sender, RoutedEventArgs e)
        {
            stopWorking();
        }

        private void Bstart_Click(object sender, RoutedEventArgs e)
        {
            startWorking();
        }

        private void Bbrak_Click(object sender, RoutedEventArgs e)
        {
            otbrakovka();
        }

        private void Blogs_Click(object sender, RoutedEventArgs e)
        {
            openLogWindow();
        }

        private void Bclose_Click(object sender, RoutedEventArgs e)
        {
            closingProgram();
        }
    }
}
