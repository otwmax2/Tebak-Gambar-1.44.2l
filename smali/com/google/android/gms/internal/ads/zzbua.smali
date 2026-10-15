###### Class com.google.android.gms.internal.ads.zzbua (com.google.android.gms.internal.ads.zzbua)
.class public final Lcom/google/android/gms/internal/ads/zzbua;
.super Lcom/google/android/gms/internal/ads/zzbuc;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbua;->o:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbua;->p:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbua;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbua;

    if-nez v1, :cond_8

    goto :goto_28

    .line 2
    :cond_8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbua;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbua;->o:Ljava/lang/String;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbua;->p:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbua;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbua;->p:I

    return v0
.end method
