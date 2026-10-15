###### Class com.google.android.gms.internal.ads.zzky (com.google.android.gms.internal.ads.zzky)
.class final Lcom/google/android/gms/internal/ads/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/internal/ads/zzku;

.field private final d:Landroid/media/AudioManager;

.field private e:Lcom/google/android/gms/internal/ads/zzkx;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzku;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzky;->c:Lcom/google/android/gms/internal/ads/zzku;

    const-string p2, "audio"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzky;->g(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzky;->g:I

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    .line 5
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzky;->i(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzky;->h:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzkx;

    const/4 p3, 0x0

    .line 6
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzkw;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 7
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_38
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzew;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->e:Lcom/google/android/gms/internal/ads/zzkx;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 9
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzky;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzky;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzky;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzky;->h()V

    return-void
.end method

.method private static g(Landroid/media/AudioManager;I)I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private final h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzky;->g(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzky;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzky;->i(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzky;->g:I

    if-ne v2, v0, :cond_1a

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzky;->h:Z

    if-eq v2, v1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzky;->g:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzky;->h:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzky;->c:Lcom/google/android/gms/internal/ads/zzku;

    check-cast v2, Lcom/google/android/gms/internal/ads/zziy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzjc;->F(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzeb;

    move-result-object v2

    const/16 v3, 0x1e

    new-instance v4, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzit;-><init>(IZ)V

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeb;->d(ILcom/google/android/gms/internal/ads/zzdy;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeb;->c()V

    return-void
.end method

.method private static i(Landroid/media/AudioManager;I)Z
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzky;->g(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final b()I
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->e:Lcom/google/android/gms/internal/ads/zzkx;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzky;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->e:Lcom/google/android/gms/internal/ads/zzkx;

    :cond_15
    return-void
.end method

.method public final f(I)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzky;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzky;->h()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->c:Lcom/google/android/gms/internal/ads/zzku;

    check-cast p1, Lcom/google/android/gms/internal/ads/zziy;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjc;->H(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjc;->D(Lcom/google/android/gms/internal/ads/zzky;)Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzjc;->C(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzjc;->M(Lcom/google/android/gms/internal/ads/zzjc;Lcom/google/android/gms/internal/ads/zzt;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjc;->F(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzeb;

    move-result-object p1

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zziu;-><init>(Lcom/google/android/gms/internal/ads/zzt;)V

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzeb;->d(ILcom/google/android/gms/internal/ads/zzdy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeb;->c()V

    :cond_3d
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzit (com.google.android.gms.internal.ads.zzit)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzit;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->a:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzit;->b:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcd;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcd;->V0(IZ)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zziu (com.google.android.gms.internal.ads.zziu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziu;->a:Lcom/google/android/gms/internal/ads/zzt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->a:Lcom/google/android/gms/internal/ads/zzt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcd;

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcd;->N0(Lcom/google/android/gms/internal/ads/zzt;)V

    return-void
.end method
