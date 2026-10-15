###### Class com.google.android.gms.internal.ads.zzfoo (com.google.android.gms.internal.ads.zzfoo)
.class Lcom/google/android/gms/internal/ads/zzfoo;
.super Lcom/google/android/gms/internal/ads/zzfpf;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfqv;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpf;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method bridge synthetic h()Ljava/util/Collection;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method final i(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final j(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    .line 1
    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfpf;->o(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
