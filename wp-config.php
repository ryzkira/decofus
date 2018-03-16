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
define('DB_NAME', 'dec2018_fix_url_2');

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
define('AUTH_KEY',         '4zevwdrqvp30i7viadj05xodrl9lww58op3d67kx9bayzxody94lx6mvckddwejq');
define('SECURE_AUTH_KEY',  '1fckfnthdkyj2orqzuyyufym5yyp2hnbalprhsi2ku7uqljdcqstzkilvvupsteo');
define('LOGGED_IN_KEY',    'gqxzdvvgulnwbvyzmpnhtblwq47zeurikv2zrxzmbpna6heqfwu1ryqk0juvy0eo');
define('NONCE_KEY',        'br80pikak5dr5xqnvprqg3m03frbo6yj8dq8dpyoxjmejfygjk2qfpusbzgbkib4');
define('AUTH_SALT',        '2appovtxvisqbof9bx3umfjdhpbo0xxiizdzir9eelmj8xtgq9lz54utkvk2haup');
define('SECURE_AUTH_SALT', 'ayf9wytu6qyd0lixizxy5f22zjqwdrzvvgva2dgcxeyqdppvq0yuf6vhodcllsza');
define('LOGGED_IN_SALT',   'w1qxhereftijrrknkz13miyqn14hrfc5vm1s0flcaona6ofdjzhyrlhi6vvoqx9o');
define('NONCE_SALT',       'p0xsn0jlmybjgtmyxy28xbx7npie4b3rpyf6j71ri9gvfalmzgmhlgnp8hf84ezf');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'dcrnew_';

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
define ('WPCF7_AUTOP', false );
define('WP_DEBUG', false);
define( 'WP_ALLOW_MULTISITE', true );
define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'http://localhost/decofus');
define('PATH_CURRENT_SITE', '/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);
define('WP_CACHE', true); // Added by WP Hummingbird
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
