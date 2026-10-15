package i5;

import android.content.Context;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Api.ClientKey<n0> f30446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<n0, v0> f30447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Api<v0> f30448c;

    static {
        Api.ClientKey<n0> clientKey = new Api.ClientKey<>();
        f30446a = clientKey;
        w0 w0Var = new w0();
        f30447b = w0Var;
        f30448c = new Api<>("InternalFirebaseAuth.FIREBASE_AUTH_API", w0Var, clientKey);
    }

    public static i a(Context context, v0 v0Var) {
        return new i(context, v0Var);
    }
}
