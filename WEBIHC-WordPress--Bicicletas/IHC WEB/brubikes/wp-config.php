<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'brubikes');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'sZMbV-qeLDd|!7=)rJ{[6Np2kJY|:T %gufq<(5L~?FwbS!.VUD^`bk+C~}u?`p3');
define('SECURE_AUTH_KEY',  '/6YsC&I#ks<R-DC5A]}i cgWW/P[$gu>So+z])h|e0XGVInPkTMpGeFKxRTtS0yi');
define('LOGGED_IN_KEY',    '}A(uOnap:he-u EG){GS36pnk,1Kw0C{/HvG]l1oa.di-Avq6x#LI0[DXQp?!Flt');
define('NONCE_KEY',        '!F)F3G+xz(Y|n:keibIo$Lj~R.cOc[vC<tO<Jk06+grA+mjE5 F-tkcn1+=yDBsX');
define('AUTH_SALT',        '[Q5o<{R@0udrv4n}N~S@BpKxJa.!?m;9tl#^sHx++VS~2Az(H,NK$y#0%DKCf=%6');
define('SECURE_AUTH_SALT', 'G)xDc0m@R]dADy|=iwPE>n-!;}V_UOsWAjo?aAwP@=KJ#`$@XM[Q*B7txV4<v)}L');
define('LOGGED_IN_SALT',   ',voY!p,P[-p.v k t-t%4|5G`+(mTtJ1V<],c<(fDpS-1Q+9n9N6<OtG)yzf$c7F');
define('NONCE_SALT',       'gz%Y8JlG.GG9Rr1tloC{TZ$<mqdb?w%(~c0L)HnK]S0;0*?RKSsN;[ j7=;7Vtu!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
