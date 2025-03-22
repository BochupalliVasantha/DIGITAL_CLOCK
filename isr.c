#include <xc.h>
#include "isr.h"
#include "timer0.h"

unsigned int count = 0;
int cnt = 0;

void __interrupt() isr(void)
{
    // Check for timer flag is set or not
    if (TMR0IF)
    {
        // Update timer register
        TMR0 = TMR0 + 8;

        if (++cnt == 20000) // Increment counter
        {
            count++; // Update the display cycle counter
            if (count > 7) // Reset the cycle after 7 counts
            {
                count = 0;
            }
            cnt = 0; // Reset the internal counter
        }

        // Clear timer flag
        TMR0IF = 0;
    }
}
