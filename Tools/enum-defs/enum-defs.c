#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned int u32;

void removeSpaces(char* src)
{
	char* dst = src;
	do
	{
		while (*dst == ' ') { dst++; }
	} 
	while (*src++ = *dst++);
}

int main(int argc, char** argv)
{
	if (argc < 3)
	{
		fprintf(stderr, "Not enough files specified!\nUsage:\nenum-defs input output\n");
		return 1;
	}

	FILE* input = fopen(argv[1], "r");
	if (!input)
	{
		fprintf(stderr, "Error opening input file.");
		return 1;
	}

	FILE* output = fopen(argv[2], "w");
	if (!output)
	{
		fprintf(stderr, "Error opening output file.");
		return 1;
	}

	char buf[64];
	u32 counter = 0;
	u32 maxCounterVal = 0xFF;
	u32 lineCount = 0;

	while (fgets(buf, sizeof(buf), input))
	{
		lineCount++;

		if (buf[0] == '\n') continue;

		removeSpaces(buf);
		buf[strcspn(buf, "\n")] = '\0';

		if (buf[0] == '$' && buf[1] == '$')
		{
			maxCounterVal = (u32)strtol(&buf[2], NULL, 16);
			if (maxCounterVal > 0xFFFFFFFF) maxCounterVal = 0xFFFFFFFF;

			continue;
		}

		if (buf[0] == '$')
		{
			
			int val = (u32)strtol(&buf[1], NULL, 16);
			if (val > maxCounterVal)
			{
				fprintf(stderr, "Error on line %d: Setting cursor past the maximum set value!\n", lineCount);
				fclose(input);
				fclose(output);
				return 1;
			}
			
			counter = val;

			continue;
		}

		fprintf(output, "#define %s $%x\n", buf, counter);

		counter++;

		if (counter > maxCounterVal) break;
	}

	fclose(input);
	fclose(output);

	return 0;
}
