###### Class com.google.android.gms.internal.ads.zzvv (com.google.android.gms.internal.ads.zzvv)
.class final Lcom/google/android/gms/internal/ads/zzvv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/media/Spatializer;

.field private final b:Z

.field private c:Landroid/os/Handler;

.field private d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzvv;
    .registers 2

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvv;

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvv;-><init>(Landroid/media/Spatializer;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzwc;Landroid/os/Looper;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:Landroid/os/Handler;

    if-eqz v0, :cond_9

    goto :goto_23

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzwc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {p2, v0, p1}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:Landroid/os/Handler;

    if-nez v1, :cond_9

    goto :goto_1a

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    invoke-virtual {v1, v0}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:Landroid/os/Handler;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->c:Landroid/os/Handler;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    const/16 v0, 0xc

    goto :goto_15

    .line 2
    :cond_13
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    .line 3
    :goto_15
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->U(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 6
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2f

    .line 7
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_2f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzk;->a()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzi;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->a:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->b:Z

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzvt (com.google.android.gms.internal.ads.zzvt)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic o:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
