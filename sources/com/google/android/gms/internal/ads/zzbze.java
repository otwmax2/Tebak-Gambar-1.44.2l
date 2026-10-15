package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbze {
    public static Context a(Context context) throws zzbzd {
        return c(context).b();
    }

    public static Object b(Context context, String str, zzbzc zzbzcVar) throws zzbzd {
        try {
            return zzbzcVar.a(c(context).d(str));
        } catch (Exception e10) {
            throw new zzbzd(e10);
        }
    }

    private static DynamiteModule c(Context context) throws zzbzd {
        try {
            return DynamiteModule.e(context, DynamiteModule.f7911b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e10) {
            throw new zzbzd(e10);
        }
    }
}
