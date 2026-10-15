package m8;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tebakgambar.TGApplication;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: GameTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static FirebaseAnalytics a() {
        return FirebaseAnalytics.getInstance(TGApplication.d());
    }

    public static void b(String str, String str2, String str3) {
        c(str, str2, str3, BuildConfig.FLAVOR);
    }

    public static void c(String str, String str2, String str3, String str4) {
        FirebaseAnalytics firebaseAnalyticsA = a();
        Bundle bundle = new Bundle();
        bundle.putString("eventCategory", str2);
        bundle.putString("eventAction", str3);
        bundle.putString("eventLabel", str4);
        firebaseAnalyticsA.a(str, bundle);
    }
}
