#include <iostream>
#include <mysqlx/xdevapi.h>
#include <fstream>
#include <string>
#include <sstream>
#include <unistd.h>

using namespace mysqlx;
using namespace std;

#define ADC_PATH "/sys/bus/iio/devices/iio:device0/in_voltage"

std::string castdouble2string(double d);
int readAnalog(int number);
float calcTemp(int analogValue);
void delay(float tempo);


int main(){
	cout << "Iniciando software de aquisição de dados" << endl;

	//Variáveis
	int value;
	float temp;

	//Conectar ao MySQL
	Session mySession("169.254.61.229", 33060, "device1", "12345678");
	cout << "Conectado ao MySQL" << endl;

	//Acessar a database
 	mySession.sql("USE devices").execute();


 	while (1){
 		value = readAnalog(0);
 		temp = calcTemp(value);
 		std::string s = castdouble2string(temp);
 		mySession.sql(
 			"INSERT INTO sensores(id, temperatura, DataHora)"
 			" VALUES (1, " + s + ", NOW())").execute();
 		delay(0.5);
 	}

 	return 0;
}

std::string castdouble2string(double d){
	std::string s;
	ostringstream stemp;

   	stemp << d;
   	s = stemp.str();

   	return s;
}

int readAnalog(int number){
   stringstream ss;
   ss << ADC_PATH << number << "_raw";
   fstream fs;
   fs.open(ss.str().c_str(), fstream::in);
   fs >> number;
   fs.close();
   return number;
}

float calcTemp(int analogValue){
	float temp;
	temp = (analogValue*1.8)/4096;
	temp = temp/0.01;
	return temp;
}

void delay(float tempo){
	usleep(tempo * 1000000);
}