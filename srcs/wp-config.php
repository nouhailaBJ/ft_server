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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'nouhaila' );

/** MySQL database password */
define( 'DB_PASSWORD', 'nouhaila' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'qOqc+!a#T8=U2d!I/@S3XzQ7!#l-#OD~(Q|v`J{zaZVMTYA+.8$l[-|g-O,[*AvL');
define('SECURE_AUTH_KEY',  'BW%xjPpUFF~ELuj_)U6|- ,*{6C1&J/UZfq4+:B+:(`FTw>9a%*(+]Gme!k+]%MM');
define('LOGGED_IN_KEY',    'j8[3S7S>N.Sj)M*5X|L@hddr+k>Vk)s@,,3V8@bStYq).<>DF$43?C<Rlr{2Prmr');
define('NONCE_KEY',        '$%90HoS*#v81.FO&wP0z-)y>vb~M2@[Cqi<4R*4Q+P!1P=0EP!pRyMTuk%a: @ZA');
define('AUTH_SALT',        '&/IM,N0R6J<qX3|c,p;)#7x4G NP6p8Y}0j0in6$c |VZir|iuXmVlsp7w4$ap;z');
define('SECURE_AUTH_SALT', 'CDf$V|+8R!b2u4Irv*C1Ldwgo;A{9O~;M|3NPB3;)#>@U7mP4CD.=pkbiYyb0XJD');
define('LOGGED_IN_SALT',   'hIva+s/,9sy}hhbZBz}~O;y6/9{sw4qaghQs$pfIjoK(;<wSjk9OKK)I{u`R~7AX');
define('NONCE_SALT',       '0Y&*i*M:f]GCeo@KL_eMJ-@S]x5y~j[g}cl97S) +L>S#rgdK$O[A4<ZL!i?hX)S');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );