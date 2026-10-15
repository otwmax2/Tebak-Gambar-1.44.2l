###### Class com.google.android.gms.internal.ads.zzacb (com.google.android.gms.internal.ads.zzacb)
.class final Lcom/google/android/gms/internal/ads/zzacb;
.super Lcom/google/android/gms/internal/ads/zzacg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final e:[I


# instance fields
.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacb;->e:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Lcom/google/android/gms/internal/ads/zzabb;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/zzen;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzacf;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    shr-int/2addr p1, v2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacb;->e:[I

    and-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v2, "audio/mpeg"

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->c:Z

    goto :goto_79

    :cond_33
    const/4 p1, 0x7

    if-eq v0, p1, :cond_57

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3b

    goto :goto_57

    :cond_3b
    const/16 p1, 0xa

    if-ne v0, p1, :cond_40

    goto :goto_79

    .line 7
    :cond_40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacf;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_57
    :goto_57
    new-instance v2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    if-ne v0, p1, :cond_61

    const-string p1, "audio/g711-alaw"

    goto :goto_63

    :cond_61
    const-string p1, "audio/g711-mlaw"

    .line 10
    :goto_63
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    const/16 p1, 0x1f40

    .line 12
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->c:Z

    .line 15
    :goto_79
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->b:Z

    goto :goto_7f

    .line 16
    :cond_7c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :goto_7f
    return v1
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/zzen;J)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-interface {v0, p1, v7}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    .line 2
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    return v1

    .line 3
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5e

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzacb;->c:Z

    if-eqz v3, :cond_25

    goto :goto_5e

    .line 4
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p2

    .line 5
    new-array p3, p2, [B

    .line 6
    invoke-virtual {p1, p3, v2, p2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzys;->a([B)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v0, "audio/mp4a-latm"

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzyr;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzyr;->b:I

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzyr;->a:I

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->c:Z

    return v2

    .line 15
    :cond_5e
    :goto_5e
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzacb;->d:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_68

    if-ne v0, v1, :cond_67

    goto :goto_68

    :cond_67
    return v2

    :cond_68
    :goto_68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 16
    invoke-interface {v0, p1, v9}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    .line 17
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    return v1
.end method
