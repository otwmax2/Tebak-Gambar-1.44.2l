###### Class com.google.android.gms.internal.ads.zzgl (com.google.android.gms.internal.ads.zzgl)
.class public Lcom/google/android/gms/internal/ads/zzgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->a:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->a:I

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->a:I

    return-void
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->a:I

    return-void
.end method

.method protected final d(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Z
    .registers 2

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->d(I)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->d(I)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->d(I)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->d(I)Z

    move-result v0

    return v0
.end method
