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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'apita-da' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'tl$I8+*d>8|Avux7nzvpm.H^]s1<`8<8ejF#^.*>j+0u>xd8s_{!:30F?qKw3!L#' );
define( 'SECURE_AUTH_KEY',  '?0n5/St-EhuIhy%&tT=x@=2*|zyFyts6G [4lk<#dj<h`%m_VU>Y7*1NNESQ(A|j' );
define( 'LOGGED_IN_KEY',    'h`mV#!$G 5*gn|:+0z#_{zd`8BJPCIh%H!5~%9@m<Dw0#!=|T DC>He*FlT#P z3' );
define( 'NONCE_KEY',        'OyMCNi:NdJ&u=p?L,nyY,[CPRTLlUWP;;X}iozpwcfq+3Q5W_{91m^`oTpSeYWxS' );
define( 'AUTH_SALT',        'qx%B3Fi nTft;q>ND;u{8q1x.`7TnVO@*LLCmNW!Gp=C<BnJL>@L7c-d.vD!h!}L' );
define( 'SECURE_AUTH_SALT', '/.b1[(tvA;qG1YO7(Yrp|Te7z@c?$Z,Z9TS4m2uixtOa!yMXVr<dYRPvW+<Zf_qh' );
define( 'LOGGED_IN_SALT',   ';gZ}N(y{!R3nLiSD .avv]vK|r|`DfBHWaXEpM09Y..wK.qDE`GS4v`PZo &#K;z' );
define( 'NONCE_SALT',       'H}YW}@?+(:?P?E#gN_]-`0!+:nLVspfx9_DDoC,66h``7kQb:(xRG)Jb3z=x{WgJ' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
define('FS_METHOD', 'direct');
