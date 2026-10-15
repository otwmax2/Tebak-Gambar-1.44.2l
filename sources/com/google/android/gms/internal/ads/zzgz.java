package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AudioManager f19743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgx f19744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzgy f19745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f19747e = 1.0f;

    public zzgz(Context context, Handler handler, zzgy zzgyVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(audioManager);
        this.f19743a = audioManager;
        this.f19745c = zzgyVar;
        this.f19744b = new zzgx(this, handler);
        this.f19746d = 0;
    }

    static /* bridge */ /* synthetic */ void c(zzgz zzgzVar, int i10) {
        if (i10 == -3 || i10 == -2) {
            if (i10 != -2) {
                zzgzVar.g(3);
                return;
            } else {
                zzgzVar.f(0);
                zzgzVar.g(2);
                return;
            }
        }
        if (i10 == -1) {
            zzgzVar.f(-1);
            zzgzVar.e();
        } else if (i10 == 1) {
            zzgzVar.g(1);
            zzgzVar.f(1);
        } else {
            zzee.e("AudioFocusManager", "Unknown focus change type: " + i10);
        }
    }

    private final void e() {
        if (this.f19746d == 0) {
            return;
        }
        if (zzew.f17494a < 26) {
            this.f19743a.abandonAudioFocus(this.f19744b);
        }
        g(0);
    }

    private final void f(int i10) {
        zzgy zzgyVar = this.f19745c;
        if (zzgyVar != null) {
            zziy zziyVar = (zziy) zzgyVar;
            boolean zE = zziyVar.f19872o.E();
            zziyVar.f19872o.s0(zE, i10, zzjc.f0(zE, i10));
        }
    }

    private final void g(int i10) {
        if (this.f19746d == i10) {
            return;
        }
        this.f19746d = i10;
        float f10 = i10 == 3 ? 0.2f : 1.0f;
        if (this.f19747e == f10) {
            return;
        }
        this.f19747e = f10;
        zzgy zzgyVar = this.f19745c;
        if (zzgyVar != null) {
            ((zziy) zzgyVar).f19872o.p0();
        }
    }

    public final float a() {
        return this.f19747e;
    }

    public final int b(boolean z10, int i10) {
        e();
        return z10 ? 1 : -1;
    }

    public final void d() {
        this.f19745c = null;
        e();
    }
}
