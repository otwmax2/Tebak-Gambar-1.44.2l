###### Class com.google.android.gms.internal.ads.zzyz (com.google.android.gms.internal.ads.zzyz)
.class public final Lcom/google/android/gms/internal/ads/zzyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyz;->a:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyz;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzyz;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzyz;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzyz;->e:F

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzyz;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzyz;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_72

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_27

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzyz;->b(Lcom/google/android/gms/internal/ads/zzen;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 7
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v2

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v2, :cond_38

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzyz;->b(Lcom/google/android/gms/internal/ads/zzen;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    const/4 p0, -0x1

    if-lez v0, :cond_63

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 10
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    add-int/lit8 v1, v4, 0x1

    .line 11
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzaar;->d([BII)Lcom/google/android/gms/internal/ads/zzaaq;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaaq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaaq;->g:F

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaaq;->a:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaaq;->b:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->c:I

    .line 12
    invoke-static {v5, v6, p0}, Lcom/google/android/gms/internal/ads/zzdn;->a(III)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_6b

    :cond_63
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move-object v8, v0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_6b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzyz;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object p0

    .line 13
    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_78
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_78} :catch_78

    :catch_78
    move-exception p0

    const-string v0, "Error parsing AVC config"

    .line 15
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    goto :goto_81

    :goto_80
    throw p0

    :goto_81
    goto :goto_80
.end method

.method private static b(Lcom/google/android/gms/internal/ads/zzen;)[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p0

    .line 3
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdn;->c([BII)[B

    move-result-object p0

    return-object p0
.end method
