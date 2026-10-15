package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Keep
@KeepForSdk
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(k5.e eVar) {
        return new FirebaseMessaging((b5.g) eVar.a(b5.g.class), (j6.a) eVar.a(j6.a.class), eVar.c(t6.i.class), eVar.c(i6.j.class), (l6.e) eVar.a(l6.e.class), (j3.g) eVar.a(j3.g.class), (h6.d) eVar.a(h6.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.c(FirebaseMessaging.class).b(k5.r.j(b5.g.class)).b(k5.r.h(j6.a.class)).b(k5.r.i(t6.i.class)).b(k5.r.i(i6.j.class)).b(k5.r.h(j3.g.class)).b(k5.r.j(l6.e.class)).b(k5.r.j(h6.d.class)).f(x.f26564a).c().d(), t6.h.b("fire-fcm", "22.0.0"));
    }
}
