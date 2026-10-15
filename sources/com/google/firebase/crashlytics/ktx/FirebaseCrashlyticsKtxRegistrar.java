package com.google.firebase.crashlytics.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import i9.l;
import java.util.List;
import k5.c;
import t9.g;

/* JADX INFO: compiled from: FirebaseCrashlytics.kt */
/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {
    public static final a Companion = new a(null);

    /* JADX INFO: compiled from: FirebaseCrashlytics.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return l.e();
    }
}
