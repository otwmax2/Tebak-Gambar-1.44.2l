package o5;

import android.os.Bundle;

/* JADX INFO: compiled from: CrashlyticsOriginAnalyticsEventLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e5.a f33089a;

    public e(e5.a aVar) {
        this.f33089a = aVar;
    }

    @Override // o5.a
    public void a(String str, Bundle bundle) {
        this.f33089a.c("clx", str, bundle);
    }
}
