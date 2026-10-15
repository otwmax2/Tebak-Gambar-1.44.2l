package com.google.android.play.core.assetpacks;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static s4.a f26060a;

    static synchronized s4.a a(Context context) {
        if (f26060a == null) {
            v0 v0Var = new v0(null);
            v0Var.b(new n3(v4.p.a(context)));
            f26060a = v0Var.a();
        }
        return f26060a;
    }
}
