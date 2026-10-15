package com.tebakgambar.home;

import android.os.Parcelable;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.request.TGRemoteMessage;
import ua.f;
import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class HomeActivity$$ExtraInjector {
    public static void inject(a.b bVar, HomeActivity homeActivity, Object obj) {
        Object objC = bVar.c(obj, "customBanner");
        if (objC != null) {
            homeActivity.customBanner = (CustomBanner) f.a((Parcelable) objC);
        }
        Object objC2 = bVar.c(obj, "remoteMessage");
        if (objC2 != null) {
            homeActivity.remoteMessage = (TGRemoteMessage) f.a((Parcelable) objC2);
        }
        Object objC3 = bVar.c(obj, "showLoginImmediately");
        if (objC3 != null) {
            homeActivity.showLoginImmediately = ((Boolean) objC3).booleanValue();
        }
    }
}
