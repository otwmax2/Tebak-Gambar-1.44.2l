###### Class com.google.android.gms.ads.internal.util.zzbf (com.google.android.gms.ads.internal.util.zzbf)
.class public final Lcom/google/android/gms/ads/internal/util/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[D

.field private final c:[D

.field private final d:[I

.field private e:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/ads/internal/util/zzbe;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbd;->c(Lcom/google/android/gms/ads/internal/util/zzbd;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbd;->e(Lcom/google/android/gms/ads/internal/util/zzbd;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-array v1, p2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->a:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbd;->c(Lcom/google/android/gms/ads/internal/util/zzbd;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbf;->c(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->b:[D

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbd;->d(Lcom/google/android/gms/ads/internal/util/zzbd;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbf;->c(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->c:[D

    .line 5
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->d:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->e:I

    return-void
.end method

.method private static final c(Ljava/util/List;)[D
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->a:[Ljava/lang/String;

    .line 2
    array-length v3, v2

    if-ge v1, v3, :cond_33

    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzbc;

    .line 3
    aget-object v5, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->c:[D

    aget-wide v6, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->b:[D

    aget-wide v8, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->d:[I

    aget v12, v2, v1

    int-to-double v10, v12

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->e:I

    int-to-double v13, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v13

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/util/zzbc;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_33
    return-object v0
.end method

.method public final b(D)V
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->e:I

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->c:[D

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->b:[D

    aget-wide v4, v1, v0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbf;->d:[I

    .line 2
    aget v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v0

    :cond_22
    cmpg-double v1, p1, v2

    if-gez v1, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    :goto_2a
    return-void
.end method
