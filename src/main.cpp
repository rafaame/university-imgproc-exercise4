#include "common.h"
#include "Pixel.h"
#include "Image.h"
#include "Operation.h"

using namespace std;

int main(int argc, char *argv[])
{

	if(argc < 3)
	{

		cout << "Usage: main /path/to/pgm/image op <params>";

		return 0;

	}

	char *arg = argv[1];
	string filename = string(arg);

	char *opArg = argv[2];
	string opStr = string(opArg);

	Image *image = NULL;

	Operation *openImage = new Operation(OPERATION_NONE, filename);
	image = openImage->execute();

	//Transform
	Operation *transform = NULL;
	if(opStr == "RO")
	{
		
		transform = new Operation(OPERATION_ROTATE);
		
		char *paramsArg = argv[3];
		string paramsStr = string(paramsArg);
		
		string dir = paramsStr.substr(0, 1);
		string angleStr = paramsStr.substr(1);
		
		uint8_t *paramArr = new uint8_t[2];
		paramArr[0] = (angleStr == "+" ? 1 : 0);
		paramArr[1] = atoi(angleStr);
		
		image = transform->execute(image, static_cast<void *>(paramArr));
		
	}
	//

	image->writeToFile("output.pgm");

	return 0;

}