/* See LICENSE file for copyright and license details. */

/* Fonts configuration.
   See http://freedesktop.org/software/fontconfig/fontconfig-user.html
*/
static char *font = "UbuntuMono Nerd Font:pixelsize=16:antialias=true:autohint=true";
static char *font2[] = {
	"UbuntuMono Nerd Font:pixelsize=16:antialias=true:autohint=true",
	"Noto Color Emoji:pixelsize=11:antialias=true:autohint=true",
};

/* Border width */
static int borderpx = 2;

/* What program is executed by st depends of these precedence rules:
   1: Program passed with -e
   2: Scroll and/or utmp
   3: SHELL environment variable
   4: Value of shell in /etc/passwd
   5: Value of shell in config.h
*/
static char *shell = "/bin/sh";

char *utmp = NULL;

/* Sroll program: to enable use a string like "scroll". */
char *scroll = NULL;

char *stty_args = "stty raw pass8 nl -echo -iexten -cstopb 38400";

/* Identification sequence returned in DA and DECID */
char *vtiden = "\033[?6c";

/* Kerning / character bounding-box multipliers. */
static float cwscale = 1.0;
static float chscale = 1.0;

/* Word delimiter string.
   More advanced example: L" `'\"()[]{}"
*/
wchar_t *worddelimiters = L" ";

/* Selection timeouts (in milliseconds). */
static unsigned int doubleclicktimeout = 300;
static unsigned int tripleclicktimeout = 600;

/* Alt screens */
int allowaltscreen = 1;

/* Allow certain non-interactive (insecure) window operations, such as setting the clipboard text. */
int allowwindowops = 0;

/* Draw latency range in ms - from new content/keypress/etc until drawing.
   Within this range, st draws when content stops arriving (idle).
   Mostly, it's near minlatency, but it waits longer for slow updates to avoid partial draw.
   Low minlatency will tear/flicker more, as it can "detect" idle too early.
*/
static double minlatency = 2;
static double maxlatency = 33;

/* Synchronized-Update timeout in ms.
   See https://gitlab.com/gnachman/iterm2/-/wikis/synchronized-updates-spec
*/
static uint su_timeout = 200;

/* Blinking timeout (set to 0 to disable blinking) for the terminal blinking attribute. */
static unsigned int blinktimeout = 800;

/* Thickness of underline and bar cursors */
static unsigned int cursorthickness = 2;

/* 1: Render most of the lines/blocks characters withotu using the font for perfect alignement between cells
      (U2500 - U259F except dashes/diagonals).
      Bold affects lines thickness if boxdraw_bold is not 0. Italic is ignored.
   0: Disable (render all U25XX glyphs normally from the font).
*/
const int boxdraw = 1;
const int boxdraw_bold = 0;

/* Braille (U28XX):
   1: Render as adjacent "pixels"
   0: Use font
*/
const int boxdraw_braille = 0;

/* Bell volume. It must be a value between -100 and 100. Use 0 for disabling it. */
static int bellvolume = 0;

/* Default TERM value */
char *termname = "st-256color";

/* Spaces per tab
   When you are changing this value, don't forget to adapt the »it« value in the st.info file and appropriately
   install the st.info file in the environment where you use this st version.

     it#$tabspaces,

   Secondly, make sure your kernel is not expanding tabs.
   When running `stty -a`, »tab0« should appear.
   You can tell the terminal to not expand tabs by running the `stty tabs` command.
*/
unsigned int tabspaces = 8;

/* Default background opacity */
float alpha = 0.8;

/* Terminal colors (16 first used in escape sequence). */
static const char *colorname[] = {
	/* 8 normal colors */
	"#141414", /* Black */
	"#ff0000", /* Red */
	"#00ff00", /* Green */
	"#ffc000", /* Yellow */
	"#0080ff", /* Blue */
	"#ff0080", /* Magenta */
	"#00ffff", /* Cyan */
	"#e6e6e6", /* White */

	/* 8 bright colors */
	"#333333", /* Black */
	"#ff6666", /* Red */
	"#66ff66", /* Green */
	"#ffd966", /* Yellow */
	"#66b3ff", /* Blue */
	"#ff66b3", /* Magenta */
	"#66ffff", /* Cyan */
	"#ffffff", /* White */

	[255] = 0,

	/* More colors can be added after 255 to use with DefaultXX */
	"#add8e6", /* 256 -> cursor */
	"#555555", /* 257 -> rev cursor*/
	"#000000", /* 258 -> bg */
	"#eeeeee", /* 259 -> fg */
};

/* Default colors (colorname index). */
unsigned int defaultbg = 258; /* Foreground */
unsigned int defaultfg = 259; /* Background */
unsigned int defaultcs = 256; /* Cursor */
unsigned int defaultrcs = 257; /* Reverse cursor*/

/* Default cursor shape
   2: Block ("█")
   4: Underline ("_")
   6: Bar ("|")
   7: Fox ("🦊")   ((I like foxes :3))
*/
static unsigned int cursorshape = 2;

/* Default columns and row numbers. */
static unsigned int cols = 120;
static unsigned int rows = 32;

/* Default color and shape of the mouse cursor. */
static unsigned int mouseshape = XC_xterm;
static unsigned int mousefg = 8;
static unsigned int mousebg = 0;

/* Color used to display font attributes when fontconfig selected a font which doesn't match the ones requested. */
static unsigned int defaultattr = 11;

/* Force mouse select/shortcuts while mask is active (when MODE_MOUSE is set).
   Note that if you want to use ShiftMask with selmasks, set this to an other modifier, set to 0 to not use it.
*/
static uint forcemousemod = ShiftMask;

/* Internal mouse shortcuts.
   Beware that overloading Button1 will disable the selection.
*/
static MouseShortcut mshortcuts[] = {
	/* Mask       Button   Function     Argument       Release Screen */
	{ XK_ANY_MOD, Button2, clippaste,   {.i = 0},      1 },
	{ ShiftMask,  Button4, kscrollup,   {.i = 1},      0, S_PRI},
	{ ShiftMask,  Button5, kscrolldown, {.i = 1},      0, S_PRI},
	{ XK_NO_MOD,  Button4, kscrollup,   {.i = 1},      0, S_PRI },
	{ XK_NO_MOD,  Button5, kscrolldown, {.i = 1},      0, S_PRI },
	{ XK_ANY_MOD, Button4, ttysend,     {.s = "\031"}, 0, S_ALT },
	{ XK_ANY_MOD, Button5, ttysend,     {.s = "\005"}, 0, S_ALT },
};

/* Internal keyboard shortcuts. */
#define MODKEY Mod1Mask
#define TERMMOD (ControlMask|ShiftMask)

static char *openurlcmd[] = { "/bin/sh", "-c",
	"xurls | dmenu -l 10 -w $WINDOWID | xargs -r open",
	"externalpipe", NULL };

static char *setbgcolorcmd[] = { "/bin/sh", "-c",
	"printf '\033]11;#008000\007'",
	"externalpipein", NULL };

/* Internal keyboard shortcuts. */
static Shortcut shortcuts[] = {
	/* Mask                 Keysym           Function       Argument   Screen */
	{ XK_ANY_MOD,            XK_Break,       sendbreak,     {.i =  0} },
	{ ControlMask,           XK_Print,       toggleprinter, {.i =  0} },
	{ ShiftMask,             XK_Print,       printscreen,   {.i =  0} },
	{ XK_ANY_MOD,            XK_Print,       printsel,      {.i =  0} },
	{ ControlMask,           XK_KP_Add,      zoom,          {.f = +1} },
	{ ControlMask,           XK_plus,        zoom,          {.f = +1} },
	{ ControlMask,           XK_KP_Subtract, zoom,          {.f = -1} },
	{ ControlMask,           XK_minus,       zoom,          {.f = -1} },
	{ ControlMask|ShiftMask, XK_R,           zoomreset,     {.f =  0} },
	{ TERMMOD,               XK_C,           clipcopy,      {.i =  0} },
	{ TERMMOD,               XK_V,           clippaste,     {.i =  0} },
	{ TERMMOD,               XK_O,           changealpha,   {.f = +0.05} },
	{ TERMMOD,               XK_P,           changealpha,   {.f = -0.05} },
	{ ShiftMask,             XK_Page_Up,     kscrollup,     {.i = -1}, S_PRI },
	{ ShiftMask,             XK_Page_Down,   kscrolldown,   {.i = -1}, S_PRI },
	{ TERMMOD,               XK_Y,           clippaste,     {.i =  0} },
	{ ShiftMask,             XK_Insert,      clippaste,     {.i =  0} },
	{ TERMMOD,               XK_Num_Lock,    numlock,       {.i =  0} },
};

/* State bits to ignore when matching key or button events.
   By default, numlock (Mod2Mask) and keyboard layout (XK_SWITCH_MOD) are ignored.
*/
static uint ignoremod = Mod2Mask|XK_SWITCH_MOD;

/* Selection types' masks.
   Use the same masks as usual.
   Button1Mask is always unset, to make masks match between ButtonPress.
   ButtonRelease and MotionNotify.
   If no match is found, regular selection is used.
*/
static uint selmasks[] = {
	[SEL_RECTANGULAR] = Mod1Mask,
};

/* Printable characters in ASCII, used to estimate the advance width of single wide characters. */
static char ascii_printable[] =
	" !\"#$%&'()*+,-./0123456789:;<=>?"
	"@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_"
	"`abcdefghijklmnopqrstuvwxyz{|}~";
