#include "Files.h"
#include "Ciffer.h"

#include <vector>

using std::vector;

int main()
{
	vector<unsigned char> ciff = readFromFile("c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\3_2.ciff");

	vector<unsigned char> bmp = ciffToBmp(ciff);

	writeToFile(bmp, "c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\3_2.bmp");
}
