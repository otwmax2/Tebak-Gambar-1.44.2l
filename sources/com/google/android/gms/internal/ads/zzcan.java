package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcan extends zzcap implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    private static final Map H;
    private int A;
    private zzcbh B;
    private final boolean C;
    private int D;
    private zzcao E;
    private boolean F;
    private Integer G;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzcbj f11664r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzcbk f11665s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f11666t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f11667u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f11668v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private MediaPlayer f11669w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Uri f11670x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f11671y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f11672z;

    static {
        HashMap map = new HashMap();
        H = map;
        map.put(-1004, "MEDIA_ERROR_IO");
        map.put(-1007, "MEDIA_ERROR_MALFORMED");
        map.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        map.put(-110, "MEDIA_ERROR_TIMED_OUT");
        map.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        map.put(100, "MEDIA_ERROR_SERVER_DIED");
        map.put(1, "MEDIA_ERROR_UNKNOWN");
        map.put(1, "MEDIA_INFO_UNKNOWN");
        map.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        map.put(701, "MEDIA_INFO_BUFFERING_START");
        map.put(702, "MEDIA_INFO_BUFFERING_END");
        map.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        map.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        map.put(802, "MEDIA_INFO_METADATA_UPDATE");
        map.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        map.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzcan(Context context, zzcbj zzcbjVar, boolean z10, boolean z11, zzcbi zzcbiVar, zzcbk zzcbkVar, Integer num) {
        super(context, num);
        this.f11667u = 0;
        this.f11668v = 0;
        this.F = false;
        this.G = null;
        setSurfaceTextureListener(this);
        this.f11664r = zzcbjVar;
        this.f11665s = zzcbkVar;
        this.C = z10;
        this.f11666t = z11;
        zzcbkVar.a(this);
    }

    private final void C() {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f11670x == null || surfaceTexture == null) {
            return;
        }
        D(false);
        try {
            com.google.android.gms.ads.internal.zzt.m();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f11669w = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.f11669w.setOnCompletionListener(this);
            this.f11669w.setOnErrorListener(this);
            this.f11669w.setOnInfoListener(this);
            this.f11669w.setOnPreparedListener(this);
            this.f11669w.setOnVideoSizeChangedListener(this);
            this.A = 0;
            if (this.C) {
                zzcbh zzcbhVar = new zzcbh(getContext());
                this.B = zzcbhVar;
                zzcbhVar.c(surfaceTexture, getWidth(), getHeight());
                this.B.start();
                SurfaceTexture surfaceTextureA = this.B.a();
                if (surfaceTextureA != null) {
                    surfaceTexture = surfaceTextureA;
                } else {
                    this.B.d();
                    this.B = null;
                }
            }
            this.f11669w.setDataSource(getContext(), this.f11670x);
            com.google.android.gms.ads.internal.zzt.n();
            this.f11669w.setSurface(new Surface(surfaceTexture));
            this.f11669w.setAudioStreamType(3);
            this.f11669w.setScreenOnWhilePlaying(true);
            this.f11669w.prepareAsync();
            E(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e10) {
            zzbza.h("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.f11670x)), e10);
            onError(this.f11669w, 1, 0);
        }
    }

    private final void D(boolean z10) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView release");
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.d();
            this.B = null;
        }
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f11669w.release();
            this.f11669w = null;
            E(0);
            if (z10) {
                this.f11668v = 0;
            }
        }
    }

    private final void E(int i10) {
        if (i10 == 3) {
            this.f11665s.c();
            this.f11674p.b();
        } else if (this.f11667u == 3) {
            this.f11665s.e();
            this.f11674p.c();
        }
        this.f11667u = i10;
    }

    private final void F(float f10) {
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer == null) {
            zzbza.g("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(f10, f10);
            } catch (IllegalStateException unused) {
            }
        }
    }

    private final boolean G() {
        int i10;
        return (this.f11669w == null || (i10 = this.f11667u) == -1 || i10 == 0 || i10 == 1) ? false : true;
    }

    static /* bridge */ /* synthetic */ void J(zzcan zzcanVar, MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() || zzcanVar.f11664r == null || mediaPlayer == null || (trackInfo = mediaPlayer.getTrackInfo()) == null) {
            return;
        }
        HashMap map = new HashMap();
        for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
            if (trackInfo2 != null) {
                int trackType = trackInfo2.getTrackType();
                if (trackType == 1) {
                    MediaFormat format2 = trackInfo2.getFormat();
                    if (format2 != null) {
                        if (format2.containsKey("frame-rate")) {
                            try {
                                map.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                            } catch (ClassCastException unused) {
                                map.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                            }
                        }
                        if (format2.containsKey("bitrate")) {
                            Integer numValueOf = Integer.valueOf(format2.getInteger("bitrate"));
                            zzcanVar.G = numValueOf;
                            map.put("bitRate", String.valueOf(numValueOf));
                        }
                        if (format2.containsKey(ViewHierarchyConstants.DIMENSION_WIDTH_KEY) && format2.containsKey(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY)) {
                            map.put("resolution", format2.getInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY) + "x" + format2.getInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY));
                        }
                        if (format2.containsKey("mime")) {
                            map.put("videoMime", format2.getString("mime"));
                        }
                        if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                            map.put("videoCodec", format2.getString("codecs-string"));
                        }
                    }
                } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                    if (format.containsKey("mime")) {
                        map.put("audioMime", format.getString("mime"));
                    }
                    if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                        map.put("audioCodec", format.getString("codecs-string"));
                    }
                }
            }
        }
        if (map.isEmpty()) {
            return;
        }
        zzcanVar.f11664r.v0("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int g() {
        if (G()) {
            return this.f11669w.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int h() {
        if (Build.VERSION.SDK_INT < 26 || !G()) {
            return -1;
        }
        return this.f11669w.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int i() {
        if (G()) {
            return this.f11669w.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int j() {
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcap, com.google.android.gms.internal.ads.zzcbm
    public final void k() {
        F(this.f11674p.a());
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final int l() {
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    final /* synthetic */ void l0(int i10) {
        zzcao zzcaoVar = this.E;
        if (zzcaoVar != null) {
            zzcaoVar.onWindowVisibilityChanged(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long m() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long n() {
        if (this.G != null) {
            return (o() * ((long) this.A)) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final long o() {
        if (this.G != null) {
            return ((long) i()) * ((long) this.G.intValue());
        }
        return -1L;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
        this.A = i10;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView completion");
        E(5);
        this.f11668v = 5;
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcag(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        Map map = H;
        String str = (String) map.get(Integer.valueOf(i10));
        String str2 = (String) map.get(Integer.valueOf(i11));
        zzbza.g("AdMediaPlayerView MediaPlayer error: " + str + CertificateUtil.DELIMITER + str2);
        E(-1);
        this.f11668v = -1;
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcah(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        Map map = H;
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView MediaPlayer info: " + ((String) map.get(Integer.valueOf(i10))) + CertificateUtil.DELIMITER + ((String) map.get(Integer.valueOf(i11))));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f11671y
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)
            int r1 = r5.f11672z
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)
            int r2 = r5.f11671y
            if (r2 <= 0) goto L7e
            int r2 = r5.f11672z
            if (r2 <= 0) goto L7e
            com.google.android.gms.internal.ads.zzcbh r2 = r5.B
            if (r2 != 0) goto L7e
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L43
            if (r1 != r2) goto L41
            int r0 = r5.f11671y
            int r1 = r0 * r7
            int r2 = r5.f11672z
            int r3 = r6 * r2
            if (r1 >= r3) goto L3c
            int r0 = r1 / r2
        L3a:
            r1 = r7
            goto L7e
        L3c:
            if (r1 <= r3) goto L63
            int r1 = r3 / r0
            goto L54
        L41:
            r0 = 1073741824(0x40000000, float:2.0)
        L43:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L56
            int r0 = r5.f11672z
            int r0 = r0 * r6
            int r2 = r5.f11671y
            int r0 = r0 / r2
            if (r1 != r3) goto L53
            if (r0 <= r7) goto L53
            goto L63
        L53:
            r1 = r0
        L54:
            r0 = r6
            goto L7e
        L56:
            if (r1 != r2) goto L67
            int r1 = r5.f11671y
            int r1 = r1 * r7
            int r2 = r5.f11672z
            int r1 = r1 / r2
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
        L63:
            r0 = r6
            goto L3a
        L65:
            r0 = r1
            goto L3a
        L67:
            int r2 = r5.f11671y
            int r4 = r5.f11672z
            if (r1 != r3) goto L73
            if (r4 <= r7) goto L73
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L75
        L73:
            r1 = r2
            r7 = r4
        L75:
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L54
        L7e:
            r5.setMeasuredDimension(r0, r1)
            com.google.android.gms.internal.ads.zzcbh r6 = r5.B
            if (r6 == 0) goto L88
            r6.b(r0, r1)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcan.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView prepared");
        E(2);
        this.f11665s.b();
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcaf(this, mediaPlayer));
        this.f11671y = mediaPlayer.getVideoWidth();
        this.f11672z = mediaPlayer.getVideoHeight();
        int i10 = this.D;
        if (i10 != 0) {
            s(i10);
        }
        if (this.f11666t && G() && this.f11669w.getCurrentPosition() > 0 && this.f11668v != 3) {
            com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView nudging MediaPlayer");
            F(0.0f);
            this.f11669w.start();
            int currentPosition = this.f11669w.getCurrentPosition();
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            while (G() && this.f11669w.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzt.b().a() - jA <= 250) {
            }
            this.f11669w.pause();
            k();
        }
        zzbza.f("AdMediaPlayerView stream dimensions: " + this.f11671y + " x " + this.f11672z);
        if (this.f11668v == 3) {
            r();
        }
        k();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView surface created");
        C();
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcai(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer != null && this.D == 0) {
            this.D = mediaPlayer.getCurrentPosition();
        }
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.d();
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcak(this));
        D(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView surface changed");
        int i12 = this.f11668v;
        boolean z10 = false;
        if (this.f11671y == i10 && this.f11672z == i11) {
            z10 = true;
        }
        if (this.f11669w != null && i12 == 3 && z10) {
            int i13 = this.D;
            if (i13 != 0) {
                s(i13);
            }
            r();
        }
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.b(i10, i11);
        }
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcaj(this, i10, i11));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11665s.f(this);
        this.f11673o.a(surfaceTexture, this.E);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView size changed: " + i10 + " x " + i11);
        this.f11671y = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f11672z = videoHeight;
        if (this.f11671y == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i10) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView window visibility changed to " + i10);
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcae
            @Override // java.lang.Runnable
            public final void run() {
                this.f11649o.l0(i10);
            }
        });
        super.onWindowVisibilityChanged(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final String p() {
        return "MediaPlayer".concat(true != this.C ? BuildConfig.FLAVOR : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void q() {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView pause");
        if (G() && this.f11669w.isPlaying()) {
            this.f11669w.pause();
            E(4);
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcam(this));
        }
        this.f11668v = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void r() {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView play");
        if (G()) {
            this.f11669w.start();
            E(3);
            this.f11673o.b();
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcal(this));
        }
        this.f11668v = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void s(int i10) {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView seek " + i10);
        if (!G()) {
            this.D = i10;
        } else {
            this.f11669w.seekTo(i10);
            this.D = 0;
        }
    }

    @Override // android.view.View
    public final String toString() {
        return zzcan.class.getName() + "@" + Integer.toHexString(hashCode());
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void u(zzcao zzcaoVar) {
        this.E = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void v(String str) {
        Uri uri = Uri.parse(str);
        zzavq zzavqVarV3 = zzavq.V3(uri);
        if (zzavqVarV3 == null || zzavqVarV3.f10024o != null) {
            if (zzavqVarV3 != null) {
                uri = Uri.parse(zzavqVarV3.f10024o);
            }
            this.f11670x = uri;
            this.D = 0;
            C();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void w() {
        com.google.android.gms.ads.internal.util.zze.k("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f11669w;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f11669w.release();
            this.f11669w = null;
            E(0);
            this.f11668v = 0;
        }
        this.f11665s.d();
    }

    @Override // com.google.android.gms.internal.ads.zzcap
    public final void x(float f10, float f11) {
        zzcbh zzcbhVar = this.B;
        if (zzcbhVar != null) {
            zzcbhVar.e(f10, f11);
        }
    }
}
