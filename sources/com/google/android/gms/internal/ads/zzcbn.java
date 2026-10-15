package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbn implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AudioManager f11760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcbm f11761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f11764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f11765f = 1.0f;

    public zzcbn(Context context, zzcbm zzcbmVar) {
        this.f11760a = (AudioManager) context.getSystemService("audio");
        this.f11761b = zzcbmVar;
    }

    private final void f() {
        if (!this.f11763d || this.f11764e || this.f11765f <= 0.0f) {
            if (this.f11762c) {
                AudioManager audioManager = this.f11760a;
                if (audioManager != null) {
                    this.f11762c = audioManager.abandonAudioFocus(this) == 0;
                }
                this.f11761b.k();
                return;
            }
            return;
        }
        if (this.f11762c) {
            return;
        }
        AudioManager audioManager2 = this.f11760a;
        if (audioManager2 != null) {
            this.f11762c = audioManager2.requestAudioFocus(this, 3, 2) == 1;
        }
        this.f11761b.k();
    }

    public final float a() {
        float f10 = this.f11764e ? 0.0f : this.f11765f;
        if (this.f11762c) {
            return f10;
        }
        return 0.0f;
    }

    public final void b() {
        this.f11763d = true;
        f();
    }

    public final void c() {
        this.f11763d = false;
        f();
    }

    public final void d(boolean z10) {
        this.f11764e = z10;
        f();
    }

    public final void e(float f10) {
        this.f11765f = f10;
        f();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i10) {
        this.f11762c = i10 > 0;
        this.f11761b.k();
    }
}
