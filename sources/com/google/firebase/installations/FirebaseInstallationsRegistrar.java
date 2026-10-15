package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import k5.f0;
import k5.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l6.e lambda$getComponents$0(k5.e eVar) {
        return new c((b5.g) eVar.a(b5.g.class), eVar.c(i6.i.class), (ExecutorService) eVar.e(f0.a(f5.a.class, ExecutorService.class)), l5.i.a((Executor) eVar.e(f0.a(f5.b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.c(l6.e.class).h(LIBRARY_NAME).b(r.j(b5.g.class)).b(r.i(i6.i.class)).b(r.k(f0.a(f5.a.class, ExecutorService.class))).b(r.k(f0.a(f5.b.class, Executor.class))).f(new k5.h() { // from class: l6.f
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), i6.h.a(), t6.h.b(LIBRARY_NAME, "17.2.0"));
    }
}
