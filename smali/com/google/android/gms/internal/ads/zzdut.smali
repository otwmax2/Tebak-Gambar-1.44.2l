###### Class com.google.android.gms.internal.ads.zzdut (com.google.android.gms.internal.ads.zzdut)
.class public abstract Lcom/google/android/gms/internal/ads/zzdut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final o:Lcom/google/android/gms/internal/ads/zzbzs;

.field protected final p:Ljava/lang/Object;

.field protected q:Z

.field protected r:Z

.field protected s:Lcom/google/android/gms/internal/ads/zzbtn;

.field protected t:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method public X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string p1, "Disconnected from remote ad request service."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdut;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvi;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdut;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdut;->t:Lcom/google/android/gms/internal/ads/zzbsn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    .line 3
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method
