###### Class com.google.android.gms.internal.ads.zzcan (com.google.android.gms.internal.ads.zzcan)
.class public final Lcom/google/android/gms/internal/ads/zzcan;
.super Lcom/google/android/gms/internal/ads/zzcap;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# static fields
.field private static final H:Ljava/util/Map;


# instance fields
.field private A:I

.field private B:Lcom/google/android/gms/internal/ads/zzcbh;

.field private final C:Z

.field private D:I

.field private E:Lcom/google/android/gms/internal/ads/zzcao;

.field private F:Z

.field private G:Ljava/lang/Integer;

.field private final r:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final s:Lcom/google/android/gms/internal/ads/zzcbk;

.field private final t:Z

.field private u:I

.field private v:I

.field private w:Landroid/media/MediaPlayer;

.field private x:Landroid/net/Uri;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcan;->H:Ljava/util/Map;

    const/16 v1, -0x3ec

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3ef

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3f2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x6e

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MEDIA_INFO_UNKNOWN"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bc

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bd

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2be

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x320

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x321

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x322

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x385

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x386

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbj;ZZLcom/google/android/gms/internal/ads/zzcbi;Lcom/google/android/gms/internal/ads/zzcbk;Ljava/lang/Integer;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzcap;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->u:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->F:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->G:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcan;->r:Lcom/google/android/gms/internal/ads/zzcbj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcan;->C:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcan;->t:Z

    .line 3
    invoke-virtual {p6, p0}, Lcom/google/android/gms/internal/ads/zzcbk;->a(Lcom/google/android/gms/internal/ads/zzcap;)V

    return-void
.end method

.method private final C()V
    .registers 7

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->x:Landroid/net/Uri;

    if-eqz v1, :cond_b4

    if-nez v0, :cond_11

    goto/16 :goto_b4

    :cond_11
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->D(Z)V

    const/4 v2, 0x1

    .line 4
    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->m()Lcom/google/android/gms/ads/internal/overlay/zzaa;

    new-instance v3, Landroid/media/MediaPlayer;

    .line 5
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 6
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 10
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 11
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->A:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->C:Z

    if-eqz v3, :cond_6f

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcbh;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzcbh;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 13
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzcbh;->c(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbh;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_67

    move-object v0, v3

    goto :goto_6f

    .line 16
    :cond_67
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbh;->d()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 18
    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 19
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcan;->x:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->n()Lcom/google/android/gms/ads/internal/overlay/zzab;

    new-instance v3, Landroid/view/Surface;

    .line 21
    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 22
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    .line 23
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 24
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 26
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9a} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9a} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9a} :catch_9b

    return-void

    :catch_9b
    move-exception v0

    goto :goto_a0

    :catch_9d
    move-exception v0

    goto :goto_a0

    :catch_9f
    move-exception v0

    .line 27
    :goto_a0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->x:Landroid/net/Uri;

    .line 28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 30
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcan;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_b4
    :goto_b4
    return-void
.end method

.method private final D(Z)V
    .registers 4

    const-string v0, "AdMediaPlayerView release"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->d()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    if-eqz p1, :cond_25

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    :cond_25
    return-void
.end method

.method private final E(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->b()V

    goto :goto_1c

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->u:I

    if-ne v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->c()V

    .line 5
    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->u:I

    return-void
.end method

.method private final F(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void

    :cond_8
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method private final G()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static bridge synthetic H(Lcom/google/android/gms/internal/ads/zzcan;)Lcom/google/android/gms/internal/ads/zzcao;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcan;->E:Lcom/google/android/gms/internal/ads/zzcao;

    return-object p0
.end method

.method static bridge synthetic I(Lcom/google/android/gms/internal/ads/zzcan;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->F:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/google/android/gms/internal/ads/zzcan;Landroid/media/MediaPlayer;)V
    .registers 12

    const-string v0, "frameRate"

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_111

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->r:Lcom/google/android/gms/internal/ads/zzcbj;

    if-eqz v1, :cond_111

    if-nez p1, :cond_1c

    goto/16 :goto_111

    .line 4
    :cond_1c
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    if-eqz p1, :cond_111

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_28
    array-length v3, p1

    if-ge v2, v3, :cond_104

    .line 6
    aget-object v3, p1, v2

    if-nez v3, :cond_31

    goto/16 :goto_100

    .line 7
    :cond_31
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/16 v5, 0x1e

    const/4 v6, 0x1

    const-string v7, "codecs-string"

    const-string v8, "mime"

    if-eq v4, v6, :cond_6d

    const/4 v6, 0x2

    if-eq v4, v6, :cond_43

    goto/16 :goto_100

    .line 8
    :cond_43
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_100

    .line 9
    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 10
    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "audioMime"

    .line 11
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_100

    .line 12
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 13
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audioCodec"

    .line 14
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_100

    .line 15
    :cond_6d
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_100

    const-string v4, "frame-rate"

    .line 16
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 17
    :try_start_7b
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_86} :catch_87

    goto :goto_92

    .line 19
    :catch_87
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_92
    :goto_92
    const-string v4, "bitrate"

    .line 21
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 22
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcan;->G:Ljava/lang/Integer;

    .line 23
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bitRate"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    const-string v4, "width"

    .line 24
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    const-string v6, "height"

    .line 25
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_de

    .line 26
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 27
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "resolution"

    .line 28
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_de
    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 30
    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "videoMime"

    .line 31
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ed
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_100

    .line 32
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 33
    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "videoCodec"

    .line 34
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    :goto_100
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    .line 35
    :cond_104
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_111

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcan;->r:Lcom/google/android/gms/internal/ads/zzcbj;

    const-string p1, "onMetadataEvent"

    .line 36
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_111
    :goto_111
    return-void
.end method

.method static bridge synthetic K(Lcom/google/android/gms/internal/ads/zzcan;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcan;->F:Z

    return p0
.end method


# virtual methods
.method public final g()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_19

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "android.media.mediaplayer.dropped"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public final i()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public final j()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->a()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcan;->F(F)V

    return-void
.end method

.method public final l()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic l0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->E:Lcom/google/android/gms/internal/ads/zzcao;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public final m()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final n()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->o()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->A:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0

    :cond_11
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final o()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->i()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->G:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcan;->A:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "AdMediaPlayerView completion"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    .line 3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcag;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcan;->H:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 p3, -0x1

    .line 5
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    .line 6
    sget-object p3, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcah;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcah;-><init>(Lcom/google/android/gms/internal/ads/zzcan;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcan;->H:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    .line 2
    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    if-lez v2, :cond_7e

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    if-lez v2, :cond_7e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    if-nez v2, :cond_7e

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_43

    if-ne v1, v2, :cond_41

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_3c

    .line 7
    div-int v0, v1, v2

    :goto_3a
    move v1, p2

    goto :goto_7e

    :cond_3c
    if-le v1, v3, :cond_63

    .line 8
    div-int v1, v3, v0

    goto :goto_54

    :cond_41
    const/high16 v0, 0x40000000    # 2.0f

    :cond_43
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_56

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    .line 9
    div-int/2addr v0, v2

    if-ne v1, v3, :cond_53

    if-le v0, p2, :cond_53

    goto :goto_63

    :cond_53
    move v1, v0

    :goto_54
    move v0, p1

    goto :goto_7e

    :cond_56
    if-ne v1, v2, :cond_67

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    .line 10
    div-int/2addr v1, v2

    if-ne v0, v3, :cond_65

    if-le v1, p1, :cond_65

    :cond_63
    :goto_63
    move v0, p1

    goto :goto_3a

    :cond_65
    move v0, v1

    goto :goto_3a

    :cond_67
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    if-ne v1, v3, :cond_73

    if-le v4, p2, :cond_73

    mul-int v1, p2, v2

    .line 11
    div-int/2addr v1, v4

    goto :goto_75

    :cond_73
    move v1, v2

    move p2, v4

    :goto_75
    if-ne v0, v3, :cond_65

    if-le v1, p1, :cond_65

    mul-int v4, v4, p1

    .line 12
    div-int v1, v4, v2

    goto :goto_54

    .line 13
    :cond_7e
    :goto_7e
    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    if-eqz p1, :cond_88

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcbh;->b(II)V

    :cond_88
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 10

    const-string v0, "AdMediaPlayerView prepared"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->b()V

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>(Lcom/google/android/gms/internal/ads/zzcan;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    if-eqz p1, :cond_2b

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->s(I)V

    :cond_2b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->t:Z

    const/4 v0, 0x3

    if-nez p1, :cond_31

    goto :goto_84

    .line 8
    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_84

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    if-eq p1, v0, :cond_84

    const-string p1, "AdMediaPlayerView nudging MediaPlayer"

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->F(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 12
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    :cond_5f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 15
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, p1, :cond_7c

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_5f

    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 17
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->k()V

    .line 19
    :cond_84
    :goto_84
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    if-ne p1, v0, :cond_ab

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->r()V

    .line 23
    :cond_ab
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->k()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "AdMediaPlayerView surface created"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->C()V

    .line 3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcai;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcai;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "AdMediaPlayerView surface destroyed"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    if-nez v0, :cond_13

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbh;->d()V

    .line 4
    :cond_1a
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcak;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->D(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    const-string p1, "AdMediaPlayerView surface changed"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    if-ne v0, p3, :cond_11

    const/4 v1, 0x1

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    if-eqz v1, :cond_24

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    if-eqz p1, :cond_21

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->s(I)V

    .line 3
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcan;->r()V

    :cond_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    if-eqz p1, :cond_2b

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcbh;->b(II)V

    .line 5
    :cond_2b
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcaj;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcaj;-><init>(Lcom/google/android/gms/internal/ads/zzcan;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbk;->f(Lcom/google/android/gms/internal/ads/zzcap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->o:Lcom/google/android/gms/internal/ads/zzcbd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->E:Lcom/google/android/gms/internal/ads/zzcao;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcbd;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzcao;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->z:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcan;->y:I

    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_31
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcae;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcae;-><init>(Lcom/google/android/gms/internal/ads/zzcan;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->C:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_8

    const-string v0, ""

    goto :goto_a

    :cond_8
    const-string v0, " spherical"

    :goto_a
    const-string v1, "MediaPlayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .registers 4

    const-string v0, "AdMediaPlayerView pause"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcam;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcam;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    return-void
.end method

.method public final r()V
    .registers 4

    const-string v0, "AdMediaPlayerView play"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcap;->o:Lcom/google/android/gms/internal/ads/zzcbd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbd;->b()V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcal;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcal;-><init>(Lcom/google/android/gms/internal/ads/zzcan;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    return-void
.end method

.method public final s(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->G()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    return-void

    :cond_23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzcan;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzcao;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->E:Lcom/google/android/gms/internal/ads/zzcao;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavq;->V3(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzavq;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->o:Ljava/lang/String;

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    return-void

    :cond_10
    :goto_10
    if-eqz v0, :cond_18

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzavq;->o:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->x:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcan;->D:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcan;->C()V

    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public final w()V
    .registers 2

    const-string v0, "AdMediaPlayerView stop"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->w:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcan;->E(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->v:I

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->s:Lcom/google/android/gms/internal/ads/zzcbk;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->d()V

    return-void
.end method

.method public final x(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcan;->B:Lcom/google/android/gms/internal/ads/zzcbh;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcbh;->e(FF)V

    :cond_7
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcae (com.google.android.gms.internal.ads.zzcae)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcan;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcan;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->o:Lcom/google/android/gms/internal/ads/zzcan;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->p:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->o:Lcom/google/android/gms/internal/ads/zzcan;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcae;->p:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->l0(I)V

    return-void
.end method
