package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdis {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbo f14845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Clock f14846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f14847c;

    public zzdis(com.google.android.gms.ads.internal.util.zzbo zzboVar, Clock clock, Executor executor) {
        this.f14845a = zzboVar;
        this.f14846b = clock;
        this.f14847c = executor;
    }

    private final Bitmap c(byte[] bArr, BitmapFactory.Options options) {
        long jB = this.f14846b.b();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long jB2 = this.f14846b.b();
        if (bitmapDecodeByteArray != null) {
            long j10 = jB2 - jB;
            com.google.android.gms.ads.internal.util.zze.k("Decoded image w: " + bitmapDecodeByteArray.getWidth() + " h:" + bitmapDecodeByteArray.getHeight() + " bytes: " + bitmapDecodeByteArray.getAllocationByteCount() + " time: " + j10 + " on ui thread: " + (Looper.getMainLooper().getThread() == Thread.currentThread()));
        }
        return bitmapDecodeByteArray;
    }

    final /* synthetic */ Bitmap a(double d10, boolean z10, zzakk zzakkVar) {
        byte[] bArr = zzakkVar.f9430b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d10 * 160.0d);
        if (!z10) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I5)).booleanValue()) {
            options.inJustDecodeBounds = true;
            c(bArr, options);
            options.inJustDecodeBounds = false;
            int i10 = options.outWidth * options.outHeight;
            if (i10 > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i10 - 1) / ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.J5)).intValue())) / 2);
            }
        }
        return c(bArr, options);
    }

    public final zzfut b(String str, final double d10, final boolean z10) {
        return zzfuj.l(this.f14845a.a(str), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdir
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f14842a.a(d10, z10, (zzakk) obj);
            }
        }, this.f14847c);
    }
}
