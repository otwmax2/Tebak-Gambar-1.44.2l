package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import b5.g;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.e;
import k5.h;
import k5.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class RemoteConfigRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$getComponents$0(e eVar) {
        return new c((Context) eVar.a(Context.class), (g) eVar.a(g.class), (l6.e) eVar.a(l6.e.class), ((com.google.firebase.abt.component.a) eVar.a(com.google.firebase.abt.component.a.class)).b("frc"), eVar.c(e5.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.c(c.class).b(r.j(Context.class)).b(r.j(g.class)).b(r.j(l6.e.class)).b(r.j(com.google.firebase.abt.component.a.class)).b(r.i(e5.a.class)).f(new h() { // from class: u6.l
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return RemoteConfigRegistrar.lambda$getComponents$0(eVar);
            }
        }).e().d(), t6.h.b("fire-rc", "21.0.0"));
    }
}
