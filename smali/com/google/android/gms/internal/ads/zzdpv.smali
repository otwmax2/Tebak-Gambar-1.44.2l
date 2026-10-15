###### Class com.google.android.gms.internal.ads.zzdpv (com.google.android.gms.internal.ads.zzdpv)
.class public final Lcom/google/android/gms/internal/ads/zzdpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lcom/google/android/gms/internal/ads/zzdqf;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpv;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbco;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3
    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
