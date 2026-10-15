package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.vungle.warren.model.CookieDBAdapter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmi implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CookieManager f13485a;

    public zzcmi(Context context) {
        this.f13485a = com.google.android.gms.ads.internal.zzt.s().b(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        if (this.f13485a == null) {
            return;
        }
        if (((String) map.get("clear")) == null) {
            String str = (String) map.get(CookieDBAdapter.CookieColumns.TABLE_NAME);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f13485a.setCookie((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H0), str);
            return;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H0);
        String cookie = this.f13485a.getCookie(str2);
        if (cookie == null) {
            return;
        }
        List listF = zzfoh.c(zzfng.c(';')).f(cookie);
        for (int i10 = 0; i10 < listF.size(); i10++) {
            CookieManager cookieManager = this.f13485a;
            Iterator it = zzfoh.c(zzfng.c('=')).d((String) listF.get(i10)).iterator();
            Objects.requireNonNull(it);
            if (!it.hasNext()) {
                throw new IndexOutOfBoundsException("position (0) must be less than the number of elements that remained (0)");
            }
            cookieManager.setCookie(str2, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10379u0))));
        }
    }
}
