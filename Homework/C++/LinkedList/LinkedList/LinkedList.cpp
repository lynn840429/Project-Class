#include <iostream>
#include <list>

using namespace std;

int num=0;//
void menu(list<int> &l)
{
    cout << "1.Insert " << "2.Remove " << "3.Exit\n";
	  cout << "-> ";
	  int sel;
	  cin >> sel;

	  if (1==sel)
	  {
		    cout << "key in value: ";
		    int v;
		    cin >> v;
		    l.push_back(v);
        //l.push_front(v);
        cout << "Add: " << v << " " << "Remove: X " << "Display: ";
        num=num+1;
        cout << "num=" << num << endl;
	  }
	  else if (2==sel)
	  {
        if (num==0)
        {
            cout << "The list is empty." << endl;
        }
        else
        {
		        cout << "select remove value: ";
		        int v;
		        cin >> v;
		        l.remove(v);
            cout << "Add: X " << "Remove: " << v << " Display: ";
            num=num-1;
            cout << "num=" << num << endl;
        }
	  }
	  else if (3==sel)
		    return;
	  for (auto it=l.begin(); it!=l.end(); it++)
		    cout << *it << " ";
    cout << "\n" << endl;
	  menu(l);
}
int main()
{
	  list<int> l;
	  menu(l);
	  return 0;
}