#include <iostream>
#include <stack>

using namespace std;

void menu(stack<int> &l)
{
    

	  cout << "1.push " << "2.pop " << "3.exit\n";
	  cout << "-> ";

	  int sel;
	  cin >> sel;
	  if (1==sel)
	  {
		    cout << "key in value: ";
		    int v;
		    cin>>v;
		    l.push(v);
        cout << "Add: " << v << " " << "Remove: X " << "Display: ";
	  }
	  else if (2==sel)
	  {
		    l.pop();
        cout << "Add: X " << " Display: ";
	  }
	  else if (3==sel)
		    return;
	  for (auto it=l._Get_container().begin(); it!=l._Get_container().end(); it++)
		    cout << *it << " ";
    cout << "\n" << endl;
	  menu(l);
}

int main()
{
	  stack<int> l;
	  menu(l);
	  return 0;
}