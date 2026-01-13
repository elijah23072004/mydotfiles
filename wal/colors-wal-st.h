const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#111012", /* black   */
  [1] = "#80647F", /* red     */
  [2] = "#925390", /* green   */
  [3] = "#A95BA8", /* yellow  */
  [4] = "#AD67AC", /* blue    */
  [5] = "#C171BF", /* magenta */
  [6] = "#C372C1", /* cyan    */
  [7] = "#cbc2cb", /* white   */

  /* 8 bright colors */
  [8]  = "#8e878e",  /* black   */
  [9]  = "#80647F",  /* red     */
  [10] = "#925390", /* green   */
  [11] = "#A95BA8", /* yellow  */
  [12] = "#AD67AC", /* blue    */
  [13] = "#C171BF", /* magenta */
  [14] = "#C372C1", /* cyan    */
  [15] = "#cbc2cb", /* white   */

  /* special colors */
  [256] = "#111012", /* background */
  [257] = "#cbc2cb", /* foreground */
  [258] = "#cbc2cb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
