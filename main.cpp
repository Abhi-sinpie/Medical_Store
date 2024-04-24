#include <iostream>
#include<ScreenPosition.h>
#include<login.h>
#include<Category.h>
#include<Category.h>
#include<Company.h>
#include<Validation.h>
#include<MoleCule.h>
#include<TextColor.h>
#include<Medicine.h>
#include<Validation.h>
#include<Medicine.h>
#include<typeinfo>
#include<iomanip>
#include<Sells.h>
#include<Products.h>
using namespace std;

int main()
{
    login v;
    v.validate();

    Category d;
    Company c;
    MoleCule m;
    Medicine n;
    Utility u;
    Sells S;
    Products p;

    v.screenheader();
    string choice;

    int choo;


    do
    {
        //ScreenPosition::SetBackgroundColor(15);
        TextColor::SetColor(15);
        ScreenPosition::GotoXY(20,9);
        cout<<"---------------------------";
        ScreenPosition::GotoXY(20,10);
        cout<<"|"<<setw(15);
        TextColor::SetColor(10);
        cout<<"CATEGORY";
         TextColor::SetColor(15);
        cout<<setw(11)<<"|";
        ScreenPosition::GotoXY(20,11);
        cout<<"|-------------------------|";
        ScreenPosition::GotoXY(20,12);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"1.Show Category Details";
         TextColor::SetColor(15);
        cout<<setw(3)<<"|";
        ScreenPosition::GotoXY(20,13);
        cout<<"|"<<setw(26)<<"|";
        ScreenPosition::GotoXY(20,14);
        cout<<"|-------------------------|";
        ScreenPosition::GotoXY(20,15);
        cout<<"|"<<setw(15);
         TextColor::SetColor(10);
        cout<<"COMPANY";
         TextColor::SetColor(15);
        cout<<setw(11)<<"|";
        ScreenPosition::GotoXY(20,16);
        cout<<"|-------------------------|";
        ScreenPosition::GotoXY(20,17);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"2.ADD Company Details    ";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(20,18);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"3.Show Company Details   ";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(20,19);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"4.Update Company Details ";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(20,20);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"5.Delete Company Details";
         TextColor::SetColor(15);
        cout<<" |";
        ScreenPosition::GotoXY(20,21);
        cout<<"|"<<setw(26)<<"|";
        ScreenPosition::GotoXY(20,22);
        cout<<"|-------------------------|";
        ScreenPosition::GotoXY(20,23);
        cout<<"|"<<setw(15);
         TextColor::SetColor(10);
        cout<<"MOLECULE";
         TextColor::SetColor(15);
        cout<<setw(11)<<"|";
        ScreenPosition::GotoXY(20,24);
        cout<<"|-------------------------|";
        ScreenPosition::GotoXY(20,25);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"6.ADD MoleCule Details";
         TextColor::SetColor(15);
        cout<<"   |";
        ScreenPosition::GotoXY(20,26);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"7.Show MoleCule Details";
         TextColor::SetColor(15);
        cout<<"  |";
        ScreenPosition::GotoXY(20,27);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"8.Update MoleCule Details";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(20,28);
        cout<<"|"<<setw(26)<<"|";
        ScreenPosition::GotoXY(20,29);
        cout<<"---------------------------";
        ScreenPosition::GotoXY(70,9);
        cout<<"----------------------------";
        ScreenPosition::GotoXY(70,10);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<setw(16)<<"PRODUCT"<<setw(11);
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(70,11);
        cout<<"|--------------------------|";
        ScreenPosition::GotoXY(70,12);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"9.ADD Medicine Details";
         TextColor::SetColor(15);
        cout<<"    |";
        ScreenPosition::GotoXY(70,13);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"10.Update Medicine Details";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(70,14);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"11.Show Medicine Details";
         TextColor::SetColor(15);
        cout<<"  |";
        ScreenPosition::GotoXY(70,15);
        cout<<"|"<<setw(27)<<"|";
         ScreenPosition::GotoXY(70,16);
        cout<<"|--------------------------|";
        ScreenPosition::GotoXY(70,17);
        cout<<"|"<<setw(16);
         TextColor::SetColor(10);
        cout<<"SELL";
         TextColor::SetColor(15);
        cout<<setw(11)<<"|";
        ScreenPosition::GotoXY(70,18);
        cout<<"|--------------------------|";
        ScreenPosition::GotoXY(70,19);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"12.Sell";
         TextColor::SetColor(15);
        cout<<"                   |";
        ScreenPosition::GotoXY(70,20);
        cout<<"|--------------------------|";

        ScreenPosition::GotoXY(70,21);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"13.Report                 ";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(70,22);
        cout<<"|--------------------------|";

        ScreenPosition::GotoXY(70,23);
        cout<<"|";
         TextColor::SetColor(10);
        cout<<"14.Exit                   ";
         TextColor::SetColor(15);
        cout<<"|";
        ScreenPosition::GotoXY(70,24);
        cout<<"----------------------------";



        TextColor::SetColor(15);
        ScreenPosition::GotoXY(50,22);
        cout<<"Enter Choice:";

        cin>>choice;
        if(u.ValidateNumbers(choice))
        {
            choo=stoi(choice);
            cout<<"\n\n";

            switch(choo)
            {
            case 1:
                d.Add_Categroy();
                break;
            case 2:
                c.AddCompany();
                break;
            case 3:
                c.ShowCompany();
                break;
            case 4:
                c.UpdateCompany();
                break;
            case 5:
                c.DeleteCompany();
                break;
            case 6:
                m.MoleInsert();
                break;
            case 7:
                m.ShowMole();
                break;
            case 8:
                m.UpdateMole();
                break;
            case 9:
                n.Addmedicine();
                break;
            case 10:
                n.UpdateMedicine();
                break;
            case 11:
                n.ShowMedicine();
                break;
            case 12:
               S.AddSell();
              //  S.Show(68);
           //    S.RemoveSell();
           //    S.SaveBillParent();
             //  S.SaveSell();
                break;
                case 13:
                p.report();
                break;
            case 14:
                system("cls");
                cout<<"Program End\n";
                break;
            default:
                cout<<"Invalid choice,try again";
            }
        }
        else
        {
            system("CLS");
            login l;
            l.screenheader();
            ScreenPosition::GotoXY(45,13);
            TextColor::SetColor(4);
            cout<<"ENTER AN INT NUMBER";
            TextColor::SetColor(15);
            ScreenPosition::GotoXY(40,16);
            system("pause");
            system("cls");

            l.screenheader();
        }
    }
    while(choo!=14);

    return 0;
}


