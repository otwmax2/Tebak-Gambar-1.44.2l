package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zznk implements zzle, zznl {
    private zzbw B;
    private zznj C;
    private zznj D;
    private zznj E;
    private zzaf F;
    private zzaf G;
    private zzaf H;
    private boolean I;
    private boolean J;
    private int K;
    private int L;
    private int M;
    private boolean N;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f20253o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zznm f20254p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final PlaybackSession f20255q;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f20261w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private PlaybackMetrics.Builder f20262x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f20263y;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzcm f20257s = new zzcm();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzck f20258t = new zzck();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final HashMap f20260v = new HashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final HashMap f20259u = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f20256r = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f20264z = 0;
    private int A = 0;

    private zznk(Context context, PlaybackSession playbackSession) {
        this.f20253o = context.getApplicationContext();
        this.f20255q = playbackSession;
        zzni zzniVar = new zzni(zzni.f20241h);
        this.f20254p = zzniVar;
        zzniVar.b(this);
    }

    public static zznk q(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new zznk(context, mediaMetricsManager.createPlaybackSession());
    }

    @SuppressLint({"SwitchIntDef"})
    private static int r(int i10) {
        switch (zzew.W(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void s() {
        PlaybackMetrics.Builder builder = this.f20262x;
        if (builder != null && this.N) {
            builder.setAudioUnderrunCount(this.M);
            this.f20262x.setVideoFramesDropped(this.K);
            this.f20262x.setVideoFramesPlayed(this.L);
            Long l10 = (Long) this.f20259u.get(this.f20261w);
            this.f20262x.setNetworkTransferDurationMillis(l10 == null ? 0L : l10.longValue());
            Long l11 = (Long) this.f20260v.get(this.f20261w);
            this.f20262x.setNetworkBytesRead(l11 == null ? 0L : l11.longValue());
            this.f20262x.setStreamSource((l11 == null || l11.longValue() <= 0) ? 0 : 1);
            this.f20255q.reportPlaybackMetrics(this.f20262x.build());
        }
        this.f20262x = null;
        this.f20261w = null;
        this.M = 0;
        this.K = 0;
        this.L = 0;
        this.F = null;
        this.G = null;
        this.H = null;
        this.N = false;
    }

    private final void t(long j10, zzaf zzafVar, int i10) {
        if (zzew.u(this.G, zzafVar)) {
            return;
        }
        int i11 = this.G == null ? 1 : 0;
        this.G = zzafVar;
        x(0, j10, zzafVar, i11);
    }

    private final void u(long j10, zzaf zzafVar, int i10) {
        if (zzew.u(this.H, zzafVar)) {
            return;
        }
        int i11 = this.H == null ? 1 : 0;
        this.H = zzafVar;
        x(2, j10, zzafVar, i11);
    }

    @RequiresNonNull({"metricsBuilder"})
    private final void v(zzcn zzcnVar, zzss zzssVar) {
        int iA;
        PlaybackMetrics.Builder builder = this.f20262x;
        if (zzssVar == null || (iA = zzcnVar.a(zzssVar.f11010a)) == -1) {
            return;
        }
        int i10 = 0;
        zzcnVar.d(iA, this.f20258t, false);
        zzcnVar.e(this.f20258t.f13166c, this.f20257s, 0L);
        zzay zzayVar = this.f20257s.f13463b.f10682b;
        if (zzayVar != null) {
            int iA0 = zzew.a0(zzayVar.f10112a);
            i10 = iA0 != 0 ? iA0 != 1 ? iA0 != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i10);
        zzcm zzcmVar = this.f20257s;
        if (zzcmVar.f13473l != -9223372036854775807L && !zzcmVar.f13471j && !zzcmVar.f13468g && !zzcmVar.b()) {
            builder.setMediaDurationMillis(zzew.k0(this.f20257s.f13473l));
        }
        builder.setPlaybackType(true != this.f20257s.b() ? 1 : 2);
        this.N = true;
    }

    private final void w(long j10, zzaf zzafVar, int i10) {
        if (zzew.u(this.F, zzafVar)) {
            return;
        }
        int i11 = this.F == null ? 1 : 0;
        this.F = zzafVar;
        x(1, j10, zzafVar, i11);
    }

    private final void x(int i10, long j10, zzaf zzafVar, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i10).setTimeSinceCreatedMillis(j10 - this.f20256r);
        if (zzafVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i11 != 1 ? 1 : 2);
            String str = zzafVar.f8730k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = zzafVar.f8731l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = zzafVar.f8728i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = zzafVar.f8727h;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = zzafVar.f8736q;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = zzafVar.f8737r;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = zzafVar.f8744y;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = zzafVar.f8745z;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = zzafVar.f8722c;
            if (str4 != null) {
                String[] strArrI = zzew.I(str4, "-");
                Pair pairCreate = Pair.create(strArrI[0], strArrI.length >= 2 ? strArrI[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = zzafVar.f8738s;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.N = true;
        this.f20255q.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    private final boolean y(zznj zznjVar) {
        return zznjVar != null && zznjVar.f20252c.equals(this.f20254p.d());
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void a(zzlc zzlcVar, int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void b(zzlc zzlcVar, int i10, long j10) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void c(zzlc zzlcVar, zzcf zzcfVar, zzcf zzcfVar2, int i10) {
        if (i10 == 1) {
            this.I = true;
            i10 = 1;
        }
        this.f20263y = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void d(zzlc zzlcVar, zzsj zzsjVar, zzso zzsoVar, IOException iOException, boolean z10) {
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02e0  */
    @Override // com.google.android.gms.internal.ads.zzle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(com.google.android.gms.internal.ads.zzcg r21, com.google.android.gms.internal.ads.zzld r22) {
        /*
            Method dump skipped, instruction units count: 1034
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznk.e(com.google.android.gms.internal.ads.zzcg, com.google.android.gms.internal.ads.zzld):void");
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void f(zzlc zzlcVar, zzaf zzafVar, zzhc zzhcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void g(zzlc zzlcVar, zzhb zzhbVar) {
        this.K += zzhbVar.f19766g;
        this.L += zzhbVar.f19764e;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final void h(zzlc zzlcVar, String str) {
        zzss zzssVar = zzlcVar.f20110d;
        if (zzssVar == null || !zzssVar.b()) {
            s();
            this.f20261w = str;
            this.f20262x = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.0.0-beta03");
            v(zzlcVar.f20108b, zzlcVar.f20110d);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void i(zzlc zzlcVar, zzso zzsoVar) {
        zzss zzssVar = zzlcVar.f20110d;
        if (zzssVar == null) {
            return;
        }
        zzaf zzafVar = zzsoVar.f20638b;
        Objects.requireNonNull(zzafVar);
        zznj zznjVar = new zznj(zzafVar, 0, this.f20254p.g(zzlcVar.f20108b, zzssVar));
        int i10 = zzsoVar.f20637a;
        if (i10 != 0) {
            if (i10 == 1) {
                this.D = zznjVar;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.E = zznjVar;
                return;
            }
        }
        this.C = zznjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void j(zzlc zzlcVar, zzaf zzafVar, zzhc zzhcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final void k(zzlc zzlcVar, String str, boolean z10) {
        zzss zzssVar = zzlcVar.f20110d;
        if ((zzssVar == null || !zzssVar.b()) && str.equals(this.f20261w)) {
            s();
        }
        this.f20259u.remove(str);
        this.f20260v.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void l(zzlc zzlcVar, zzda zzdaVar) {
        zznj zznjVar = this.C;
        if (zznjVar != null) {
            zzaf zzafVar = zznjVar.f20250a;
            if (zzafVar.f8737r == -1) {
                zzad zzadVarB = zzafVar.b();
                zzadVarB.x(zzdaVar.f14263a);
                zzadVarB.f(zzdaVar.f14264b);
                this.C = new zznj(zzadVarB.y(), 0, zznjVar.f20252c);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void m(zzlc zzlcVar, int i10, long j10, long j11) {
        zzss zzssVar = zzlcVar.f20110d;
        if (zzssVar != null) {
            String strG = this.f20254p.g(zzlcVar.f20108b, zzssVar);
            Long l10 = (Long) this.f20260v.get(strG);
            Long l11 = (Long) this.f20259u.get(strG);
            this.f20260v.put(strG, Long.valueOf((l10 == null ? 0L : l10.longValue()) + j10));
            this.f20259u.put(strG, Long.valueOf((l11 != null ? l11.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final /* synthetic */ void n(zzlc zzlcVar, Object obj, long j10) {
    }

    public final LogSessionId o() {
        return this.f20255q.getSessionId();
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void p(zzlc zzlcVar, zzbw zzbwVar) {
        this.B = zzbwVar;
    }
}
