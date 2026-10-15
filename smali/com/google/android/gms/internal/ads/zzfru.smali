###### Class com.google.android.gms.internal.ads.zzfru (com.google.android.gms.internal.ads.zzfru)
.class final Lcom/google/android/gms/internal/ads/zzfru;
.super Lcom/google/android/gms/internal/ads/zzfqk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic q:Lcom/google/android/gms/internal/ads/zzfrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfru;->q:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqk;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfru;->q:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrv;->C(Lcom/google/android/gms/internal/ads/zzfrv;)I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfru;->q:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrv;->D(Lcom/google/android/gms/internal/ads/zzfrv;)[Ljava/lang/Object;

    move-result-object v1

    add-int/2addr p1, p1

    .line 2
    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrv;->D(Lcom/google/android/gms/internal/ads/zzfrv;)[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfru;->q:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrv;->C(Lcom/google/android/gms/internal/ads/zzfrv;)I

    move-result v0

    return v0
.end method
