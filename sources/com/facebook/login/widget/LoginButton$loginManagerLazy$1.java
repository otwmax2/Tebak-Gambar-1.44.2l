package com.facebook.login.widget;

import com.facebook.login.LoginManager;
import t9.n;

/* JADX INFO: compiled from: LoginButton.kt */
/* JADX INFO: loaded from: classes.dex */
final class LoginButton$loginManagerLazy$1 extends n implements s9.a<LoginManager> {
    public static final LoginButton$loginManagerLazy$1 INSTANCE = new LoginButton$loginManagerLazy$1();

    LoginButton$loginManagerLazy$1() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // s9.a
    public final LoginManager invoke() {
        return LoginManager.Companion.getInstance();
    }
}
