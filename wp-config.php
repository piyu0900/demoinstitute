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
define( 'DB_NAME', 'propower' );

/** MySQL database username */
define( 'DB_USER', 'propower' );

/** MySQL database password */
define('DB_PASSWORD', '}XxoUq^!WX!9');

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
define( 'AUTH_KEY',         'Iw3~SxmDGl=ia(O+}f<;~2A._<lfNu)-l#f2.MfylpyJ?$eP4~M%FnyNr!`m=3r[' );
define( 'SECURE_AUTH_KEY',  '{[d.._;e-g82O@Bw;PJ[q/`D755n;aI0-!BMM[H9qV!+M<%, 6RahbOVv_O~@GRx' );
define( 'LOGGED_IN_KEY',    '`-YpH5,$J(j0WTRm2:r}>>Cbv9W,u]meCZ%Aa1MHR$03,1sDkVdbhBF(_y!3|oRS' );
define( 'NONCE_KEY',        'mrEAuWq47;hLfR&&Qy(48]I.73T:MkfrZ3e~lQl>>JYpNy#N>Q>Ou#p>Cme/RVFd' );
define( 'AUTH_SALT',        '1{O~3N*COC+n Q eO >JpK]Ym%*+6msb,clCuH~=[$K{Y]^f|b:j2D#v^L09a%``' );
define( 'SECURE_AUTH_SALT', 'w[c^*!TIXjP@7_DG[^n;cjGP.X$zt!>3fCxVk:[A;_O/L|}Xg_T8tM 8l}O F^9x' );
define( 'LOGGED_IN_SALT',   'B3nQsTi6J5f];q]}wOvkxWue)POfR8#o)$S3P$^:n3YsrGm)BmOv@j(?L. Z2Iyl' );
define( 'NONCE_SALT',       '^=4IV:F(>nBQC=SY1>PA.`M9W`w^0$p.ZqY>pwlvFm+VL!Xvm`-8L>r4dvb-N)nb' );

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
