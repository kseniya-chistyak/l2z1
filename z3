Создайте класс House со свойствами: levels (int, количество этажей)
и flats_at_level (число квартир на этаже); 
и методом where(N) - он сообщает на каком этаже находится квартира с номером N.

#include <iostream>
using namespace std;
class House{
	public:
		int levels;
		int flats_at_level;
		House(int lev, int flat){
			levels = lev;
			flats_at_level = flat;
		}
		int where(int N){
			int a = N / flats_at_level;
			if(N % flats_at_level) a++;
			return a;
		}
};
int main(){
	House H(5, 3);
	cout<<H.where(10)<<endl;
	
	return 0;
}
