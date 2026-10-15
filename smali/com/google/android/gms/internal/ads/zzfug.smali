###### Class com.google.android.gms.internal.ads.zzfug (com.google.android.gms.internal.ads.zzfug)
.class final Lcom/google/android/gms/internal/ads/zzfug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final o:Ljava/util/concurrent/Future;

.field final p:Lcom/google/android/gms/internal/ads/zzfuf;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzfuf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfug;->o:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfug;->o:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfvm;

    if-eqz v1, :cond_15

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfvm;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvn;->a(Lcom/google/android/gms/internal/ads/zzfvm;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_15

    .line 4
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuf;->a(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfug;->o:Ljava/util/concurrent/Future;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_1b} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1b} :catch_23
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_1b} :catch_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuf;->c(Ljava/lang/Object;)V

    return-void

    :catch_21
    move-exception v0

    goto :goto_24

    :catch_23
    move-exception v0

    .line 9
    :goto_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuf;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2a
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuf;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfno;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfug;->p:Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnn;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
