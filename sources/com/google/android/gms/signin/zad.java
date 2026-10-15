package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.signin.internal.SignInClientImpl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Api.ClientKey<SignInClientImpl> f24917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ShowFirstParty
    public static final Api.ClientKey<SignInClientImpl> f24918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> f24919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Api.AbstractClientBuilder<SignInClientImpl, zac> f24920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f24921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Scope f24922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Api<SignInOptions> f24923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Api<zac> f24924h;

    static {
        Api.ClientKey<SignInClientImpl> clientKey = new Api.ClientKey<>();
        f24917a = clientKey;
        Api.ClientKey<SignInClientImpl> clientKey2 = new Api.ClientKey<>();
        f24918b = clientKey2;
        a aVar = new a();
        f24919c = aVar;
        b bVar = new b();
        f24920d = bVar;
        f24921e = new Scope("profile");
        f24922f = new Scope("email");
        f24923g = new Api<>("SignIn.API", aVar, clientKey);
        f24924h = new Api<>("SignIn.INTERNAL_API", bVar, clientKey2);
    }
}
