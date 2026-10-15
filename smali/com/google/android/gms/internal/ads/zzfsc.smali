###### Class com.google.android.gms.internal.ads.zzfsc (com.google.android.gms.internal.ads.zzfsc)
.class Lcom/google/android/gms/internal/ads/zzfsc;
.super Lcom/google/android/gms/internal/ads/zzfpk;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfnv;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzfnv;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsf;->c(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfsf;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
