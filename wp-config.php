<?php
define('ALLOW_UNFILTERED_UPLOADS', true);

define('WP_HOME','http://roswellit.com');
define('WP_SITEURL','http://roswellit.com');
define( 'CUSTOM_TAGS', true );

/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'cl49-new-site');

/** MySQL database username */
define('DB_USER', 'cl49-new-site');

/** MySQL database password */
define('DB_PASSWORD', 's34?/65ax');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '2WJbhhuhE4Iq!Pc-8/mJdqY#_D3U!uZJky0OY48KT-6#QaUV1_ssHAddfkI-/O/d');
define('SECURE_AUTH_KEY',  '3npDmg+Rtbt0P)z3kqn(5BpkxDQy!JR#s^Eb44q1ek7ecv4sWF7k^8S_x8f29ipp');
define('LOGGED_IN_KEY',    'O5_NaYS4f+i8EIQXr)dkA6dhDehGs(_8(pn4Tnv9u7Xutk3ZViyqqanjM99oEbm#');
define('NONCE_KEY',        'EyMH-vP/D_Z4UnJFftQ+ute45M4kAcT#mWpBIJxh4rX88wIycWwy6Y39phr4cE^W');
define('AUTH_SALT',        '#B01-y07M7Fs4KWgOk+Fw^hd-UUSKA8A(^PwROBQTDlwSxW(1b!no/LP5G(dPAUi');
define('SECURE_AUTH_SALT', 'hA)!5g72GG9HabA^xyjV6(f2EHL2En2h58ELgLz^f8SZUByX5T)AphMnIE0FTSso');
define('LOGGED_IN_SALT',   'Q5(+ANp+kVHSLMKBR#ueC1LlSsOflOF_NIDi06odHFaerDGU1_dYqF-JJt^B^!Lo');
define('NONCE_SALT',       '-^(DnXTJjwSIwoc)HN=17ntSJPi-/Z9(FqFzrLM!F5FezE5gIpAZVesiPrwL8u+3');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de.mo to wp-content/languages and set WPLANG to 'de' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', 0);

/**
 *  Change this to true to run multiple blogs on this installation.
 *  Then login as admin and go to Tools -> Network
 */
define('WP_ALLOW_MULTISITE', false);
define('DISABLE_WP_CRON', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');



/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

/* Destination directory for file streaming */
define('WP_TEMP_DIR', ABSPATH . 'wp-content/');

ini_set('log_errors',TRUE);
ini_set('error_reporting', E_ALL);
ini_set('error_log', dirname(__FILE__) . '/error_log.txt');
