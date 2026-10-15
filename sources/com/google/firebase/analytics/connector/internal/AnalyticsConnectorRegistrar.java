package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import b5.g;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.h;
import k5.r;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@Keep
@KeepForSdk
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @KeepForSdk
    @SuppressLint({"MissingPermission"})
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.c(e5.a.class).b(r.j(g.class)).b(r.j(Context.class)).b(r.j(h6.d.class)).f(new h() { // from class: com.google.firebase.analytics.connector.internal.a
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return e5.b.h((g) eVar.a(g.class), (Context) eVar.a(Context.class), (h6.d) eVar.a(h6.d.class));
            }
        }).e().d(), t6.h.b("fire-analytics", "20.1.2"));
    }
}
