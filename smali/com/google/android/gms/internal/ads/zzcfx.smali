###### Class com.google.android.gms.internal.ads.zzcfx (com.google.android.gms.internal.ads.zzcfx)
.class public final Lcom/google/android/gms/internal/ads/zzcfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object v0
.end method

.method public static b(II)Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-instance p0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object p0

    .line 2
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->w:Z

    if-eqz v0, :cond_17

    new-instance p0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object p0

    .line 3
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->v:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfx;->a()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object p0

    return-object p0

    .line 4
    :cond_20
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfx;->b(II)Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
