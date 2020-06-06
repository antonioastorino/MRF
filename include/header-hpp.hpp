// include section...
// other stuff

/** 
 * @class TestClass
 * This is a test class for your own sake
 *
 * All is good. Let's try to print a code block
 * @pinout
 * In 0: hello input
 * @end_pinout
 * 
 * @diagram
 *|       |
 *| DATA: | X___XXXXXXXX
 *|       |  ^ start
 *|       |  __
 *| CLK:  | _  ________
 *|       |
 *|       |
 *| Q:    | XXXX________
 *|       |      _______
 *| !Q:   | XXXXX
 *|       |      ^ ready
 * @end_diagram
 * 
 * 
 * @table
 * | LD | CE | CLK | Function
 * |----|:-----|:----|:--------
 * |  0 |   0  | X   |  Pause
 * |  0 |   1  | _/  |  Count
 * |  1 |   X  | _/  |  Load
 * @end_table
 */

/**
 * Ignored extra comment because only one is allowed
 */

// Class prototype