###### Class com.google.android.gms.internal.ads.zztf (com.google.android.gms.internal.ads.zztf)
.class final Lcom/google/android/gms/internal/ads/zztf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzwe;

.field private final b:Lcom/google/android/gms/internal/ads/zzcp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzcp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztf;->b:Lcom/google/android/gms/internal/ads/zzcp;

    return-void
.end method


# virtual methods
.method public final K(I)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->K(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    return-object p1
.end method

.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->a()I

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzcp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->b:Lcom/google/android/gms/internal/ads/zzcp;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zztf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zztf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztf;->b:Lcom/google/android/gms/internal/ads/zzcp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztf;->b:Lcom/google/android/gms/internal/ads/zzcp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final h(I)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzwi;->h(I)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->b:Lcom/google/android/gms/internal/ads/zzcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final z(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->a:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->z(I)I

    move-result p1

    return p1
.end method
