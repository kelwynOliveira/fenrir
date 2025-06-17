<? --[[
*  Fenrir: A black hole for Internet advertisements
*  (c) 2017 Fenrir, LLC (https://pi-hole.net)
*  Network-wide ad blocking via your own hardware.
*
*  This file is copyright under the latest version of the EUPL.
*  Please see LICENSE file for your rights under this license.
--]]

mg.include('scripts/lua/header.lp','r')
?>
<body class="hold-transition page-<?=pihole.format_path(mg.request_info.request_uri)?>" data-apiurl="<?=pihole.api_url()?>" data-webhome="<?=webhome?>">

<div class="container"
  <div class="box login-box" id="login-box">

    <!-- Background decorative elements -->
    <div class="background-decorations">
        <div class="decoration-circle decoration-circle-1"></div>
        <div class="decoration-circle decoration-circle-2"></div>
        <div class="decoration-circle decoration-circle-3"></div>
        <div class="decoration-icon decoration-snowflake">❄</div>
        <div class="decoration-icon decoration-moon">🌙</div>
    </div>

    <section class="card">
      <div class="card-header">
          <div class="logo-section">
              <!-- Logo/Icon -->
              <div class="logo-container">
                  <div class="logo-circle">
                      <img class="logo-img shield-icon" src="<?=webhome?>img/logo.svg" alt="Fenrir logo" width="60" height="87">
                      <!--
                      <div class="eye-badge">👁️</div>
                      -->
                  </div>
                  <div class="logo-ping"></div>
              </div>
              
              <div class="title-section">
                  <h1 class="main-title">FENRIR</h1>
                  <p class="subtitle">DNS Shield Guardian</p>
                  <p class="description">Protecting your digital realm</p>
              </div>
          </div>
      </div>
      <!-- /.login-logo -->

      <div class="card-content">
        <div id="cookieInfo" class="panel-title text-center text-red" style="font-size: 150%" hidden>Verify that cookies are allowed</div>
        <div class="text-center form-group has-error" id="dns-failure-label" style="display: none;">
            <label>DNS Server failure detected, log in to see Fenrir diagnosis messages</label>
        </div>
        <div class="form-group has-error login-box-msg" id="error-label" style="display: none;">
            <label class="control-label"><i class="fa fa-times-circle"></i> <span id="error-message"></span><br><span id="error-hint" style="display: none;"></span></label>
        </div>

        <form class="login-form" id="loginform">
          <div class="has-feedback" id="pw-field">
            <div class="form-group">
              <label class="form-label">
                <span class="label-icon">👤</span>
                Username
              </label>
              <input 
                type="text" 
                id="username" 
                value="Fenrir" 
                autocomplete="username" 
                class="form-input"
                readonly>
            </div>

            <div class="form-group">
              <!-- hidden username input field to help password managers to autofill the password -->
              <label class="form-label">
                <span class="label-icon">🔒</span>
                Password
              </label>
              <div class="input-group pwd-field">
                <input 
                  type="password" 
                  class="form-input form-input-password"
                  placeholder="Enter your password"
                  value="" 
                  spellcheck="false" 
                  autocomplete="current-password" 
                  id="current-password" 
                  autofocus 
                  required
                />
                  <span class="input-group-btn" style="height=100">
                    <button class="btn btn-default eye-btn" id="toggle-password" type="button" title="Show password as plain text. Warning: this will display your password on the screen.">
                      <span class="fa fa-fw fa-eye field-icon"></span>
                    </button>
                  </span>
                </div>
              </div>

              <button type="submit" class="login-button">
                <i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;&nbsp;Log in (uses cookie)
              </button>
            </div>

            <div class="row">
              <div class="col-xs-12">
                <div class="box box-danger hidden" id="invalid2fa-box">
                  <div class="box-header with-border pointer no-user-select" data-widget="collapse">
                    <h3 class="box-title">Wrong 2FA token</h3>
                    <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool">
                        <i class="fa fa-minus"></i>
                      </button>
                    </div>
                  </div>
                  <div class="box-body">
                    <p>
                      Your Fenrir has two-factor authentication enabled. You have to enter a valid <a href="https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm" rel="noopener noreferrer" target="_blank">TOTP</a> token in addition to your password. You see this message because your token was incorrect or has already expired.
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-12">
                <div class="box collapsed-box box-forgot-password" id="forgot-pw-box">
                  <div class="forgot-link box-header with-border pointer no-user-select w-100" data-widget="collapse">
                    <h3 class="box-title">Forgot password?</h3>
                    <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool">
                        <i class="fa fa-plus" id="forgot-pw-toggle-icon"></i>
                      </button>
                    </div>
                  </div>
                  <div class="box-body" style="display: none;">
                    <p>After installing Fenrir for the first time, a password is generated and displayed to the user. The password cannot be retrieved later on, but it is possible to set a new password (or explicitly disable the password by setting an empty password) using the command
                    </p>
                    <pre>pihole setpassword</pre>
                  </div>
                </div>
              </div>
            </div>

            <div class="form-group has-feedback hidden" id="totp_input">
              <input type="text" id="totp" size="6" maxlen="6" class="form-control totp_token" placeholder="123456" value="" spellcheck="false" autofocus autocomplete="off">
              <span class="fa fa-clock-rotate-left pwd-field form-control-feedback"></span>
            </div>
          </div>
        </form>
        <!-- /.login-card-body -->
      </div>
    </section>

    <!-- Status indicator -->
    <div class="status-indicator">
        <div class="status-dot"></div>
        <span class="status-text">DNS Protection Active</span>
    </div>
  </div>
</div>


<script src="<?=pihole.fileversion('scripts/js/footer.js')?>"></script>
<script src="<?=pihole.fileversion('scripts/js/login.js')?>"></script>
</body>
</html>


