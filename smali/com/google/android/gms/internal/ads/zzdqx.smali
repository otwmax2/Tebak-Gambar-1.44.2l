###### Class com.google.android.gms.internal.ads.zzdqx (com.google.android.gms.internal.ads.zzdqx)
.class public final Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqh;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/zzdqm;

.field private final c:Lcom/google/android/gms/internal/ads/zzext;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdqm;Lcom/google/android/gms/internal/ads/zzcgd;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqx;->b:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcgd;->x()Lcom/google/android/gms/internal/ads/zzexv;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzexv;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzexv;

    .line 2
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzexv;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzexv;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzexv;->a()Lcom/google/android/gms/internal/ads/zzexw;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzexw;->zza()Lcom/google/android/gms/internal/ads/zzext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->c:Lcom/google/android/gms/internal/ads/zzext;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzdqx;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->a:J

    return-wide v0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->b:Lcom/google/android/gms/internal/ads/zzdqm;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->c:Lcom/google/android/gms/internal/ads/zzext;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>(Lcom/google/android/gms/internal/ads/zzdqx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzext;->Fa(Lcom/google/android/gms/internal/ads/zzbuz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->c:Lcom/google/android/gms/internal/ads/zzext;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzext;->l1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/client/zzl;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqx;->c:Lcom/google/android/gms/internal/ads/zzext;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqv;-><init>(Lcom/google/android/gms/internal/ads/zzdqx;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzext;->B6(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzbvd;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza()V
    .registers 1

    return-void
.end method
