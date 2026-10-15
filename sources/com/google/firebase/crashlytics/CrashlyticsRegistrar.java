package com.google.firebase.crashlytics;

import b5.g;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.c;
import k5.e;
import k5.h;
import k5.r;
import y6.b;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    static {
        y6.a.f36997a.a(b.a.CRASHLYTICS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a b(e eVar) {
        return a.b((g) eVar.a(g.class), (l6.e) eVar.a(l6.e.class), eVar.i(n5.a.class), eVar.i(e5.a.class), eVar.i(v6.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.c(a.class).h("fire-cls").b(r.j(g.class)).b(r.j(l6.e.class)).b(r.a(n5.a.class)).b(r.a(e5.a.class)).b(r.a(v6.a.class)).f(new h() { // from class: m5.f
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return this.f32179a.b(eVar);
            }
        }).e().d(), t6.h.b("fire-cls", "18.6.0"));
    }
}
