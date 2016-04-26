<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'phpshop');#wordpress_demo');#');#wordpress_demo');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('WP_SITEURL','http://shop.local/');
define('WP_HOME','http://shop.local/');
define('RELOCATE',true);
define('WP_SITEURL','http://shop.local/');
define('WP_HOME','http://shop.local/');
define('RELOCATE',true);
define('WP_SITEURL','http://shop.local/');
define('WP_HOME','http://shop.local/');
define('RELOCATE',true);
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
define('AUTH_KEY',         ']o&nTvh@z#0FVb ,.R8DYV47Wb[?1|*AaC?o?l|Xk2o|8E}2-H/-bsK#r7p)h|}h');
define('SECURE_AUTH_KEY',  'Dtf@h-8dGZ|f?jR/!Gog]@qB7Y4D%5UR7d5(}1_wX>xX6WQ8C3i>x ;OC5,L%^ua');
define('LOGGED_IN_KEY',    'S&*ka}b(Lpx7f$z2V-02_(C=+oPPP(<l^@-r(l+(}EBZ1|Nm>7OT>O+ytQM&^`G]');
define('NONCE_KEY',        '<O2frqYM/AA^V4GW0!FZdCpHit8L|S-Cbey w,r1|u?[+&xj-~IzpJ*_xcvg+wHa');
define('AUTH_SALT',        '1~4i9J!&KG]Q#4gez?y|#XsR-({!6/Bru3*+iQq(op%c9KQ#)We<E9q.y8*M-2%@');
define('SECURE_AUTH_SALT', '+z-.HYEOYvAo+Q]Of[-yrW~$VGy> @_WCwdj$6> e!InqOn&;?v@dQU+a Z)N MN');
define('LOGGED_IN_SALT',   '30(;#K|st~c?:cnA55LKC7af)ex6:K*aHjCSDqHnNjVO-W6_&]nB$.v+sxxTe&< ');
define('NONCE_SALT',       '#~ A5Y+K=4?wF|s:B#(#HZ]7FLK^@>4s6}Iy+u=mc7E!>u>#kNFFg/~T]t=fI1j$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);
define('WP_ALLOW_REPAIR', true);
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
