[[!+error.message:eq=``:then=`
<form id="checkinForm" class="user-modal__form" action="[[~[[*id]]]]" method="post">
  <input type="hidden" name="nospam:blank" value="" />

  <label class="field-text">
    <span class="field-text__name">[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]</span>
    <span class="field-text__input-wrap">
        <input class="field-text__input" type="text" name="username" id="username" value="[[!+reg.username]]" required>
        <span class="field-text__help-text  error error_username">[[!+reg.error.username]]</span>
      </span>
  </label>
  <label class="field-text">
    <span class="field-text__name">[[$langs? &uk=`ФИО` &ru=`ПІБ` &en=`Full name`]]</span>
    <span class="field-text__input-wrap">
      <input class="field-text__input" type="text" name="fullname" id="fullname" value="[[!+reg.fullname]]" required>
      <span class="field-text__help-text  error error_fullname">[[!+reg.error.fullname]]</span>
    </span>
  </label>
  <label class="field-text">
    <span class="field-text__name">Email</span>
    <span class="field-text__input-wrap">
      <input class="field-text__input" type="email" name="email" id="email" value="[[!+reg.email]]" required>
      <span class="field-text__help-text  error error_email">[[!+reg.error.email]]</span>
    </span>
  </label>
  <label class="field-text">
    <span class="field-text__name">[[$langs? &uk=`Пароль` &ru=`Пароль` &en=`Password`]]</span>
    <span class="field-text__input-wrap">
      <input class="field-text__input" type="password" name="password" id="password" value="[[!+reg.password]]" required>
      <a class="field-text__eye" title="[[$langs? &uk=`Перемикач видимості пароля` &ru=`Переключатель видимости пароля` &en=`Password Visibility Switch`]]"></a>
      <span class="field-text__help-text  error error_password">[[!+reg.error.password]]</span>
    </span>
  </label>
  <label class="field-text">
    <span class="field-text__name">[[$langs? &uk=`Повторіть пароль` &ru=`Повторите пароль` &en=`Repeat password`]]</span>
    <span class="field-text__input-wrap">
      <input class="field-text__input" type="password" name="password_confirm" id="password_confirm" value="[[!+reg.password_confirm]]" required>
      <a class="field-text__eye" title="[[$langs? &uk=`Перемикач видимості пароля` &ru=`Переключатель видимости пароля` &en=`Password Visibility Switch`]]"></a>
      <span class="field-text__help-text  error error_ppassword_confirm">[[!+reg.error.password_confirm]]</span>
    </span>
  </label>
  <div class="user-modal__agreement">
    <div class="field-checkbox">
      <label class="field-checkbox__name">
        <input class="field-checkbox__input" type="checkbox" name="agreement" checked>
        <span class="field-checkbox__name-text">
          [[$langs?
          &uk=`Реєструючись, ви погоджуєтеся з <a href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]">Угодою користувача</a>`
          &ru=`Регистрируясь, вы соглашаетесь с <a href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]">Пользовательским соглашением</a>`
          &en=`By registering, you agree to the <a href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]">User Agreement</a>`
          ]]
        </span>
      </label>
    </div>
    <input type="submit" name="login-register-btn" class="btn user-modal__submit" value="[[$langs? &uk=`Зареєструватися` &ru=`Зарегистрироваться` &en=`Register`]]">
  </div>
</form>
`:else=`[[!+error.message]]`]]

[[!Register?
&submitVar=`login-register-btn`
&activation=`1`
&activationEmailSubject=`[[$langs? &uk=`Підтвердження реєстрації` &ru=`Подтверждение регистрации` &en=`Confirmation of registration`]]`
&activationEmailTpl=`myActivationEmailTpl`
&activationResourceId=`[[BabelTranslation:default=`41`? &resourceId=`41` &contextKey=`[[*context_key]]`]]`
&successMsg=`
[[$langs?
&uk=`Дякуємо за реєстрацію. На вашу електронну пошту [[!+reg.email]] надіслано листа, що містить посилання, необхідне для активації облікового запису. Перейдіть за посиланням у листі, щоб завершити процедуру реєстрації`
&ru=`Спасибо за регистрацию. На вашу электронную почту [[!+reg.email]] отправлено письмо, содержащее ссылку, необходимую для активации аккаунта. Перейдите по ссылке в письме, чтобы завершить процедуру регистрации`
&en=`Thank you for registering. An email has been sent to your [[!+reg.email]] containing a link to activate your account. Follow the link in the email to complete the registration process`
]].
`
&usergroups=`Registered`
&usernameField=`email`
&passwordField=`password`
&validate=`nospam:blank,
password:required:minLength=^8^,
password_confirm:password_confirm=^password^,
username:required,
fullname:required,
email:required:email`
&placeholderPrefix=`reg.`
]]
