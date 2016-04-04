#include "Operation.h"

#include "Pixel.h"
#include "Image.h"

using namespace std;

Image *Operation::execute(Image *leftOperand/* = NULL*/, void *rightOperand/* = NULL */)
{

	Image *image = NULL;
	Image *result = NULL;

    if(filename.length() > 0)
        image = Image::createFromFile(filename);

	switch(type)
	{

        case OPERATION_ROTATE:
        {

        	result = leftOperand;

        	uint8_t *params = static_cast<uint8_t *>(rightOperand);

     		cout << "params[0] = " << params[0] << endl;
     		cout << "params[1] = " << params[1] << endl;

        	break;

        }

		default:
		{

			result = image;

		}

	}

	return result;

}