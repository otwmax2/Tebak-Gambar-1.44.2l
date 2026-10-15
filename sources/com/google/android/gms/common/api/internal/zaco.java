package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaco {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f7247a = com.google.android.gms.internal.base.zap.a().b(new NumberedThreadFactory("GAC_Transform"), 1);

    public static ExecutorService a() {
        return f7247a;
    }
}
