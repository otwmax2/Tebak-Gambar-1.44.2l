package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcez implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzcfb f12052a;

    zzcez(zzcfb zzcfbVar) {
        this.f12052a = zzcfbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        if (map != null) {
            String str = (String) map.get(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i10 = Integer.parseInt(str);
                synchronized (this.f12052a) {
                    zzcfb zzcfbVar = this.f12052a;
                    if (zzcfbVar.T != i10) {
                        zzcfbVar.T = i10;
                        this.f12052a.requestLayout();
                    }
                }
            } catch (Exception e10) {
                zzbza.h("Exception occurred while getting webview content height", e10);
            }
        }
    }
}
