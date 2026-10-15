package com.google.firebase.dynamiclinks.internal;

import androidx.annotation.Keep;
import b5.g;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.c;
import k5.r;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
@Keep
@KeepForSdk
public final class FirebaseDynamicLinkRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public final List<c<?>> getComponents() {
        return Arrays.asList(c.c(a6.a.class).b(r.j(g.class)).b(r.h(e5.a.class)).f(a.f26336a).d());
    }
}
