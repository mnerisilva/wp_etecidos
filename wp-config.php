<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'erika_tecidos' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '1=xh_ERkO9 f^:SmJr?`ui<GJs231IJ$K&in;B=Dl#Z$h}G^/CSb^+HeaR|YF+Rb' );
define( 'SECURE_AUTH_KEY',  '^4+YY%;)zJD$SfG/wS:<f%VU(&f_82F|9Ia/4ZJO$RHe:&1JAQNfBVw&$8bFzN2m' );
define( 'LOGGED_IN_KEY',    '!Nv N:YZ`Zl~6F[tGsC-C; Nr&CoS>w^)C?~r^j.VqJV`Y3n3k?TQiFbcghoXzg*' );
define( 'NONCE_KEY',        'X`*7!Cs3/1:i_{!gbd~w6{C$z`x{h(tbxNf|Ke3&&`:^^<!SfWNo^qi>jsQoL=>G' );
define( 'AUTH_SALT',        'U|@N,>yOpA$mZ,Z_YP&w&5qS.}Oz=tcVJu8$lJ&iTVIgp7ZVr]h|+qi#E)+-$RuV' );
define( 'SECURE_AUTH_SALT', 'y`p[VsEd[;3Q7m$AZ!3be2-UL/L$v]#E4=jtMn_+6z}e882+NZN:(h_m^z*{%&Z2' );
define( 'LOGGED_IN_SALT',   'X+0TnL.@wW|!)nn/RkLpBmVbcpUHD7HmqDjqFk&m3:2,_xw8Fb>0r4L^cs~Qo }V' );
define( 'NONCE_SALT',       'c~IT2hyi[ZKF?~,quiI9l`/m3;E?u^Lt7&=M||1+xi:xxC<_SqA`PC(a+( ]=8/k' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
