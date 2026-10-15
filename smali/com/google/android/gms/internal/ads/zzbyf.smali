###### Class com.google.android.gms.internal.ads.zzbyf (com.google.android.gms.internal.ads.zzbyf)
.class final Lcom/google/android/gms/internal/ads/zzbyf;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyj;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyf;->c:Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyf;->c:Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->b(Lcom/google/android/gms/internal/ads/zzbyj;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->i(Lcom/google/android/gms/internal/ads/zzbyj;)Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyf;->c:Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->l(Lcom/google/android/gms/internal/ads/zzbyj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->g()Lcom/google/android/gms/internal/ads/zzbba;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyf;->c:Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbyj;->e(Lcom/google/android/gms/internal/ads/zzbyj;)Lcom/google/android/gms/internal/ads/zzbaz;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbba;->a(Lcom/google/android/gms/internal/ads/zzbaz;Lcom/google/android/gms/internal/ads/zzbax;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_24} :catch_27
    .catchall {:try_start_18 .. :try_end_24} :catchall_25

    goto :goto_2d

    :catchall_25
    move-exception v0

    goto :goto_2f

    :catch_27
    move-exception v0

    :try_start_28
    const-string v2, "Cannot config CSI reporter."

    .line 3
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_2d
    monitor-exit v1

    return-void

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    throw v0
.end method
