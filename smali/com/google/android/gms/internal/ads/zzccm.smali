###### Class com.google.android.gms.internal.ads.zzccm (com.google.android.gms.internal.ads.zzccm)
.class public final Lcom/google/android/gms/internal/ads/zzccm;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final c:Lcom/google/android/gms/internal/ads/zzcbj;

.field final d:Lcom/google/android/gms/internal/ads/zzccu;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccm;->c:Lcom/google/android/gms/internal/ads/zzcbj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccm;->d:Lcom/google/android/gms/internal/ads/zzccu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccm;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccm;->f:[Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->A()Lcom/google/android/gms/internal/ads/zzccn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzccn;->g(Lcom/google/android/gms/internal/ads/zzccm;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->d:Lcom/google/android/gms/internal/ads/zzccu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccm;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccm;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzccu;->w(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_14

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_14
    move-exception v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzccl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    throw v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->M1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->d:Lcom/google/android/gms/internal/ads/zzccu;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzcdd;

    if-eqz v0, :cond_24

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcck;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcck;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 5
    :cond_24
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/util/zzb;->b()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d()Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->d:Lcom/google/android/gms/internal/ads/zzccu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccm;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccm;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzccu;->x(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccm;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->e:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcck (com.google.android.gms.internal.ads.zzcck)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzccm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcck;->a:Lcom/google/android/gms/internal/ads/zzccm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcck;->a:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccm;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
