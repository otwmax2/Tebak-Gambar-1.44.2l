###### Class com.google.android.gms.internal.ads.zzbwn (com.google.android.gms.internal.ads.zzbwn)
.class public final Lcom/google/android/gms/internal/ads/zzbwn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatf;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Ljava/lang/Object;

.field private final q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwn;->q:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->r:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 2

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwn;->b(Z)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwn;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxf;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwn;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->r:Z

    if-ne v1, p1, :cond_16

    .line 2
    monitor-exit v0

    return-void

    :cond_16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->r:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->q:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 4
    monitor-exit v0

    return-void

    :cond_22
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->r:Z

    if-eqz p1, :cond_32

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwn;->q:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbxf;->m(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 6
    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->p()Lcom/google/android/gms/internal/ads/zzbxf;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwn;->q:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbxf;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_3f

    throw p1
.end method
