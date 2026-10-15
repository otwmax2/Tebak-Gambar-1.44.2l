package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzky {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f20095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f20096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzku f20097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AudioManager f20098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzkx f20099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f20100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f20101g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f20102h;

    public zzky(Context context, Handler handler, zzku zzkuVar) {
        Context applicationContext = context.getApplicationContext();
        this.f20095a = applicationContext;
        this.f20096b = handler;
        this.f20097c = zzkuVar;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        zzdl.b(audioManager);
        this.f20098d = audioManager;
        this.f20100f = 3;
        this.f20101g = g(audioManager, 3);
        this.f20102h = i(audioManager, this.f20100f);
        zzkx zzkxVar = new zzkx(this, null);
        try {
            zzew.a(applicationContext, zzkxVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f20099e = zzkxVar;
        } catch (RuntimeException e10) {
            zzee.f("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    private static int g(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            zzee.f("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        final int iG = g(this.f20098d, this.f20100f);
        final boolean zI = i(this.f20098d, this.f20100f);
        if (this.f20101g == iG && this.f20102h == zI) {
            return;
        }
        this.f20101g = iG;
        this.f20102h = zI;
        zzeb zzebVar = ((zziy) this.f20097c).f19872o.f19893k;
        zzebVar.d(30, new zzdy() { // from class: com.google.android.gms.internal.ads.zzit
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzcd) obj).V0(iG, zI);
            }
        });
        zzebVar.c();
    }

    private static boolean i(AudioManager audioManager, int i10) {
        return zzew.f17494a >= 23 ? audioManager.isStreamMute(i10) : g(audioManager, i10) == 0;
    }

    public final int a() {
        return this.f20098d.getStreamMaxVolume(this.f20100f);
    }

    public final int b() {
        if (zzew.f17494a >= 28) {
            return this.f20098d.getStreamMinVolume(this.f20100f);
        }
        return 0;
    }

    public final void e() {
        zzkx zzkxVar = this.f20099e;
        if (zzkxVar != null) {
            try {
                this.f20095a.unregisterReceiver(zzkxVar);
            } catch (RuntimeException e10) {
                zzee.f("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f20099e = null;
        }
    }

    public final void f(int i10) {
        if (this.f20100f == 3) {
            return;
        }
        this.f20100f = 3;
        h();
        zziy zziyVar = (zziy) this.f20097c;
        final zzt zztVarK0 = zzjc.k0(zziyVar.f19872o.f19907y);
        if (zztVarK0.equals(zziyVar.f19872o.f19876a0)) {
            return;
        }
        zziyVar.f19872o.f19876a0 = zztVarK0;
        zzeb zzebVar = zziyVar.f19872o.f19893k;
        zzebVar.d(29, new zzdy() { // from class: com.google.android.gms.internal.ads.zziu
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzcd) obj).N0(zztVarK0);
            }
        });
        zzebVar.c();
    }
}
