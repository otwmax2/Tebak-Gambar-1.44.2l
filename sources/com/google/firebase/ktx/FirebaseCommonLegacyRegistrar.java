package com.google.firebase.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import i9.k;
import java.util.List;
import k5.c;
import t6.h;

/* JADX INFO: compiled from: Logging.kt */
/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class FirebaseCommonLegacyRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return k.b(h.b("fire-core-ktx", "20.4.2"));
    }
}
