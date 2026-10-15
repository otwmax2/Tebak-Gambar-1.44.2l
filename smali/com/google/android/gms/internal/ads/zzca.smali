###### Class com.google.android.gms.internal.ads.zzca (com.google.android.gms.internal.ads.zzca)
.class public final Lcom/google/android/gms/internal/ads/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzca;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzy;->a(I)Lcom/google/android/gms/internal/ads/zzy;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzca;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcc;->a(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzaa;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->b()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaa;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzy;->a(I)Lcom/google/android/gms/internal/ads/zzy;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-object p0
.end method

.method public final varargs c([I)Lcom/google/android/gms/internal/ads/zzca;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x15

    if-ge v1, v2, :cond_f

    aget v2, p1, v1

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzy;->a(I)Lcom/google/android/gms/internal/ads/zzy;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object p0
.end method

.method public final d(IZ)Lcom/google/android/gms/internal/ads/zzca;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    if-eqz p2, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzy;->a(I)Lcom/google/android/gms/internal/ads/zzy;

    :cond_7
    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzcc;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzca;->a:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzy;->b()Lcom/google/android/gms/internal/ads/zzaa;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzcb;)V

    return-object v0
.end method
