###### Class com.google.android.gms.internal.ads.zzgdf (com.google.android.gms.internal.ads.zzgdf)
.class public final Lcom/google/android/gms/internal/ads/zzgdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/zzgdf;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgdf;->b:Lcom/google/android/gms/internal/ads/zzgdf;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgec;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgec;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgei;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgec;Lcom/google/android/gms/internal/ads/zzgeh;)V

    .line 3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/zzgdf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdf;->b:Lcom/google/android/gms/internal/ads/zzgdf;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgdz;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgei;->f(Lcom/google/android/gms/internal/ads/zzgeb;)Z

    move-result v0

    if-nez v0, :cond_1d

    :try_start_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcw;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcw;-><init>(Lcom/google/android/gms/internal/ads/zzgdz;Lcom/google/android/gms/internal/ads/zzfxg;)V
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgej;

    const-string v0, "Creating a LegacyProtoKey failed"

    .line 3
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgej;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgei;->a(Lcom/google/android/gms/internal/ads/zzgeb;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzgcn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgec;-><init>(Lcom/google/android/gms/internal/ads/zzgei;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->a(Lcom/google/android/gms/internal/ads/zzgcn;)Lcom/google/android/gms/internal/ads/zzgec;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgei;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgec;Lcom/google/android/gms/internal/ads/zzgeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/zzgcr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgec;-><init>(Lcom/google/android/gms/internal/ads/zzgei;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->b(Lcom/google/android/gms/internal/ads/zzgcr;)Lcom/google/android/gms/internal/ads/zzgec;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgei;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgec;Lcom/google/android/gms/internal/ads/zzgeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lcom/google/android/gms/internal/ads/zzgdj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgec;-><init>(Lcom/google/android/gms/internal/ads/zzgei;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->c(Lcom/google/android/gms/internal/ads/zzgdj;)Lcom/google/android/gms/internal/ads/zzgec;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgei;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgec;Lcom/google/android/gms/internal/ads/zzgeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lcom/google/android/gms/internal/ads/zzgdn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgec;-><init>(Lcom/google/android/gms/internal/ads/zzgei;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->d(Lcom/google/android/gms/internal/ads/zzgdn;)Lcom/google/android/gms/internal/ads/zzgec;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgei;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgec;Lcom/google/android/gms/internal/ads/zzgeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdf;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
