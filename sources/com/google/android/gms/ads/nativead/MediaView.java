package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbza;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class MediaView extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MediaContent f6321o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f6322p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ImageView.ScaleType f6323q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f6324r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzb f6325s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzc f6326t;

    public MediaView(Context context) {
        super(context);
    }

    protected final synchronized void a(zzb zzbVar) {
        this.f6325s = zzbVar;
        if (this.f6322p) {
            zzbVar.f6346a.c(this.f6321o);
        }
    }

    protected final synchronized void b(zzc zzcVar) {
        this.f6326t = zzcVar;
        if (this.f6324r) {
            zzcVar.f6347a.d(this.f6323q);
        }
    }

    public MediaContent getMediaContent() {
        return this.f6321o;
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f6324r = true;
        this.f6323q = scaleType;
        zzc zzcVar = this.f6326t;
        if (zzcVar != null) {
            zzcVar.f6347a.d(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.f6322p = true;
        this.f6321o = mediaContent;
        zzb zzbVar = this.f6325s;
        if (zzbVar != null) {
            zzbVar.f6346a.c(mediaContent);
        }
        if (mediaContent == null) {
            return;
        }
        try {
            zzber zzberVarZza = mediaContent.zza();
            if (zzberVarZza == null || zzberVarZza.c0(ObjectWrapper.Q4(this))) {
                return;
            }
            removeAllViews();
        } catch (RemoteException e10) {
            removeAllViews();
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }
}
