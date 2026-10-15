package o5;

import android.os.Bundle;
import n5.g;

/* JADX INFO: compiled from: UnavailableAnalyticsEventLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements a {
    @Override // o5.a
    public void a(String str, Bundle bundle) {
        g.f().b("Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
    }
}
