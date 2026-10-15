package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.UidVerifier;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbt extends zbo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f6793o;

    public zbt(Context context) {
        this.f6793o = context;
    }

    private final void X0() {
        if (UidVerifier.a(this.f6793o, Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException("Calling UID " + Binder.getCallingUid() + " is not Google Play services.");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zbp
    public final void j2() {
        X0();
        zbn.c(this.f6793o).d();
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zbp
    public final void u3() {
        X0();
        Storage storageB = Storage.b(this.f6793o);
        GoogleSignInAccount googleSignInAccountC = storageB.c();
        GoogleSignInOptions googleSignInOptionsD = GoogleSignInOptions.f6734z;
        if (googleSignInAccountC != null) {
            googleSignInOptionsD = storageB.d();
        }
        GoogleSignInClient googleSignInClientA = GoogleSignIn.a(this.f6793o, googleSignInOptionsD);
        if (googleSignInAccountC != null) {
            googleSignInClientA.A();
        } else {
            googleSignInClientA.B();
        }
    }
}
