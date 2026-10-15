###### Class com.google.android.gms.internal.ads.zzfvh (com.google.android.gms.internal.ads.zzfvh)
.class final Lcom/google/android/gms/internal/ads/zzfvh;
.super Lcom/google/android/gms/internal/ads/zzfus;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final q:Lcom/google/android/gms/internal/ads/zzftp;

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfvj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvj;Lcom/google/android/gms/internal/ads/zzftp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvh;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfus;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvh;->q:Lcom/google/android/gms/internal/ads/zzftp;

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->q:Lcom/google/android/gms/internal/ads/zzftp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzftp;->zza()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvh;->q:Lcom/google/android/gms/internal/ads/zzftp;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->q:Lcom/google/android/gms/internal/ads/zzftp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->w(Lcom/google/android/gms/internal/ads/zzfut;)Z

    return-void
.end method

.method final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->isDone()Z

    move-result v0

    return v0
.end method
