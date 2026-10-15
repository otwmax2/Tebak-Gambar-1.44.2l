package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class c extends com.google.android.gms.ads.internal.util.zzb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzl f5983c;

    /* synthetic */ c(zzl zzlVar, zzj zzjVar) {
        this.f5983c = zzlVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void a() {
        final BitmapDrawable bitmapDrawable;
        Bitmap bitmapA = com.google.android.gms.ads.internal.zzt.w().a(Integer.valueOf(this.f5983c.f6005p.C.f6230t));
        if (bitmapA != null) {
            com.google.android.gms.ads.internal.zzt.r();
            zzl zzlVar = this.f5983c;
            Activity activity = zzlVar.f6004o;
            com.google.android.gms.ads.internal.zzj zzjVar = zzlVar.f6005p.C;
            boolean z10 = zzjVar.f6228r;
            float f10 = zzjVar.f6229s;
            if (!z10 || f10 <= 0.0f || f10 > 25.0f) {
                bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmapA);
            } else {
                try {
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA, bitmapA.getWidth(), bitmapA.getHeight(), false);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
                    RenderScript renderScriptCreate = RenderScript.create(activity);
                    ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                    Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
                    Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                    scriptIntrinsicBlurCreate.setRadius(f10);
                    scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                    scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
                    allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
                    bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmapCreateBitmap);
                } catch (RuntimeException unused) {
                    bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmapA);
                }
            }
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi
                @Override // java.lang.Runnable
                public final void run() {
                    c cVar = this.f6002o;
                    cVar.f5983c.f6004o.getWindow().setBackgroundDrawable(bitmapDrawable);
                }
            });
        }
    }
}
