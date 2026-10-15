package com.google.firebase.auth;

import androidx.annotation.Keep;
import b5.g;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.r;
import t6.h;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@Keep
@KeepForSdk
public class FirebaseAuthRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.d(FirebaseAuth.class, j5.b.class).b(r.j(g.class)).f(d.f26272a).e().d(), h.b("fire-auth", "19.3.1"));
    }
}
