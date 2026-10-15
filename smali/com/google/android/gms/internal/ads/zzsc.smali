###### Class com.google.android.gms.internal.ads.zzsc (com.google.android.gms.internal.ads.zzsc)
.class public final Lcom/google/android/gms/internal/ads/zzsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzul;


# instance fields
.field protected final o:[Lcom/google/android/gms/internal/ads/zzul;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzul;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzul;->a()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method

.method public final b(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzul;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final c(J)Z
    .registers 21

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsc;->a()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3c

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    .line 2
    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_15
    if-ge v11, v10, :cond_38

    aget-object v13, v9, v11

    .line 3
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzul;->a()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_28

    cmp-long v16, v14, v0

    if-gtz v16, :cond_28

    const/16 v16, 0x1

    goto :goto_2a

    :cond_28
    const/16 v16, 0x0

    :goto_2a
    cmp-long v17, v14, v4

    if-eqz v17, :cond_30

    if-eqz v16, :cond_35

    .line 4
    :cond_30
    invoke-interface {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzul;->c(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_35
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_38
    or-int/2addr v3, v12

    if-nez v12, :cond_4

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p0

    :goto_3e
    return v3
.end method

.method public final n()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzul;->n()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public final zzb()J
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->o:[Lcom/google/android/gms/internal/ads/zzul;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzul;->zzb()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method
