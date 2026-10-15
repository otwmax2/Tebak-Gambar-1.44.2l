package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k5.c;
import k5.e;
import k5.h;
import k5.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.a(Context.class), eVar.c(e5.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.c(a.class).b(r.j(Context.class)).b(r.i(e5.a.class)).f(new h() { // from class: d5.a
            @Override // k5.h
            public final Object a(e eVar) {
                return AbtRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), t6.h.b("fire-abt", "21.0.0"));
    }
}
