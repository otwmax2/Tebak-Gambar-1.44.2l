###### Class com.google.android.gms.internal.ads.zzach (com.google.android.gms.internal.ads.zzach)
.class final Lcom/google/android/gms/internal/ads/zzach;
.super Lcom/google/android/gms/internal/ads/zzacg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Lcom/google/android/gms/internal/ads/zzabb;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzach;->b:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzach;->c:Lcom/google/android/gms/internal/ads/zzen;

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_14

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzach;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacf;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/zzen;J)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->n()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5e

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzach;->e:Z

    if-nez p2, :cond_c7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p3

    .line 3
    new-array p3, p3, [B

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    .line 4
    invoke-virtual {p1, p3, v4, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzyz;->a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object p1

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzyz;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzach;->d:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string p3, "video/avc"

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzyz;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzyz;->c:I

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzyz;->d:I

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzyz;->e:F

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzyz;->a:Ljava/util/List;

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 13
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzach;->e:Z

    return v4

    :cond_5e
    if-ne v0, v3, :cond_c7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzach;->e:Z

    if-eqz v0, :cond_c7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzach;->g:I

    if-ne v0, v3, :cond_6a

    const/4 v8, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v8, 0x0

    :goto_6b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzach;->f:Z

    if-nez v0, :cond_73

    if-eqz v8, :cond_72

    goto :goto_73

    :cond_72
    return v4

    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzach;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    .line 14
    aput-byte v4, v0, v4

    .line 15
    aput-byte v4, v0, v3

    const/4 v5, 0x2

    .line 16
    aput-byte v4, v0, v5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzach;->d:I

    const/4 v5, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v9, 0x0

    :goto_86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    if-lez v6, :cond_b7

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzach;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzach;->d:I

    .line 17
    invoke-virtual {p1, v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzach;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 18
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzach;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzach;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzach;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    invoke-interface {v7, v10, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    add-int/lit8 v9, v9, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    .line 22
    invoke-interface {v7, p1, v6}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    add-int/2addr v9, v6

    goto :goto_86

    :cond_b7
    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    add-long v6, p2, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 23
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzach;->f:Z

    return v3

    :cond_c7
    return v4
.end method
