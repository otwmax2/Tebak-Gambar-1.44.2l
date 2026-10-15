package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.cct.a;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import j3.g;
import java.util.Arrays;
import java.util.List;
import k5.c;
import k5.e;
import k5.h;
import k5.r;
import l3.u;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g lambda$getComponents$0(e eVar) {
        u.f((Context) eVar.a(Context.class));
        return u.c().g(a.f5540h);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.c(g.class).h(LIBRARY_NAME).b(r.j(Context.class)).f(new h() { // from class: z5.a
            @Override // k5.h
            public final Object a(e eVar) {
                return TransportRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), t6.h.b(LIBRARY_NAME, "18.1.8"));
    }
}
