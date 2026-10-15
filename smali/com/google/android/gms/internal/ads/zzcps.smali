###### Class com.google.android.gms.internal.ads.zzcps (com.google.android.gms.internal.ads.zzcps)
.class public final Lcom/google/android/gms/internal/ads/zzcps;
.super Lcom/google/android/gms/internal/ads/zzcok;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Lcom/google/android/gms/internal/ads/zzbfo;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcql;Lcom/google/android/gms/internal/ads/zzbfo;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcok;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcps;->i:Lcom/google/android/gms/internal/ads/zzbfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcps;->j:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcps;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic o(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_c

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcps;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpq;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcpq;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcps;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpr;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzcpr;-><init>(Lcom/google/android/gms/internal/ads/zzcps;Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzeyd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/zzeyd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()V
    .registers 1

    return-void
.end method

.method public final n(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 3

    return-void
.end method

.method final synthetic p(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcps;->i:Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfo;->U0(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpq;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcps;->o(Ljava/util/concurrent/atomic/AtomicReference;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcpq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcpq;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcps;->o(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcpr (com.google.android.gms.internal.ads.zzcpr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcps;

.field public final synthetic p:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcps;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpr;->o:Lcom/google/android/gms/internal/ads/zzcps;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpr;->p:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpr;->o:Lcom/google/android/gms/internal/ads/zzcps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpr;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcps;->p(Ljava/lang/Runnable;)V

    return-void
.end method
