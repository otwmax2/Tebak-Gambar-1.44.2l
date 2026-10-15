###### Class com.google.android.gms.internal.ads.zzaia (com.google.android.gms.internal.ads.zzaia)
.class public final Lcom/google/android/gms/internal/ads/zzaia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Lcom/google/android/gms/internal/ads/zzem;

.field private d:Lcom/google/android/gms/internal/ads/zzabb;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/ads/zzaf;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->a:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p1

    .line 2
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->c:Lcom/google/android/gms/internal/ads/zzem;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    return-void
.end method

.method private final f(Lcom/google/android/gms/internal/ads/zzem;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzem;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzys;->b(Lcom/google/android/gms/internal/ads/zzem;Z)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyr;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->u:Ljava/lang/String;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzyr;->a:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->r:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzyr;->b:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->t:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzem;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private static g(Lcom/google/android/gms/internal/ads/zzem;)J
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->l:Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->d:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_218

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_20e

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1f8

    const/4 v1, 0x3

    const/16 v5, 0x8

    if-eq v0, v3, :cond_1ce

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->i:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaia;->h:I

    sub-int/2addr v3, v6

    .line 2
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->c:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaia;->h:I

    .line 3
    invoke-virtual {p1, v3, v6, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->h:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->h:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->i:I

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_152

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->l:Z

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    if-ne v3, v2, :cond_56

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    const/4 v7, 0x1

    goto :goto_58

    :cond_56
    move v7, v3

    const/4 v3, 0x0

    :goto_58
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->m:I

    if-nez v3, :cond_14d

    if-ne v7, v2, :cond_62

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->g(Lcom/google/android/gms/internal/ads/zzem;)J

    const/4 v7, 0x1

    .line 9
    :cond_62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_148

    const/4 v3, 0x6

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzaia;->n:I

    const/4 v8, 0x4

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v9

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    if-nez v9, :cond_143

    if-nez v10, :cond_143

    if-nez v7, :cond_d8

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->c()I

    move-result v9

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaia;->f(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v10

    .line 15
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    add-int/lit8 v9, v10, 0x7

    div-int/2addr v9, v5

    .line 16
    new-array v9, v9, [B

    .line 17
    invoke-virtual {v0, v9, v4, v10}, Lcom/google/android/gms/internal/ads/zzem;->g([BII)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzaia;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v11, "audio/mp4a-latm"

    .line 19
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzaia;->u:Ljava/lang/String;

    .line 20
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzaia;->t:I

    .line 21
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzaia;->r:I

    .line 22
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 23
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaia;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzaia;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 26
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaf;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e5

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzaia;->f:Lcom/google/android/gms/internal/ads/zzaf;

    const-wide/32 v10, 0x3d090000

    iget v12, v9, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v12, v12

    .line 27
    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaia;->s:J

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzaia;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 28
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    goto :goto_e5

    .line 29
    :cond_d8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->g(Lcom/google/android/gms/internal/ads/zzem;)J

    move-result-wide v9

    long-to-int v10, v9

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaia;->f(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v9

    sub-int/2addr v10, v9

    .line 31
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 32
    :cond_e5
    :goto_e5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v9

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzaia;->o:I

    if-eqz v9, :cond_110

    if-eq v9, v2, :cond_10a

    if-eq v9, v1, :cond_106

    if-eq v9, v8, :cond_106

    const/4 v1, 0x5

    if-eq v9, v1, :cond_106

    if-eq v9, v3, :cond_102

    const/4 v1, 0x7

    if-ne v9, v1, :cond_fc

    goto :goto_102

    .line 33
    :cond_fc
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 35
    :cond_102
    :goto_102
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_113

    .line 36
    :cond_106
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_113

    :cond_10a
    const/16 v1, 0x9

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_113

    .line 38
    :cond_110
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 39
    :goto_113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->p:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaia;->q:J

    if-eqz v1, :cond_139

    if-eq v7, v2, :cond_133

    .line 40
    :cond_121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->q:J

    shl-long/2addr v2, v5

    .line 41
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->q:J

    if-nez v1, :cond_121

    goto :goto_139

    .line 42
    :cond_133
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->g(Lcom/google/android/gms/internal/ads/zzem;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->q:J

    .line 43
    :cond_139
    :goto_139
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 44
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_157

    .line 45
    :cond_143
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 46
    :cond_148
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 47
    :cond_14d
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 48
    :cond_152
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->l:Z

    if-nez v1, :cond_157

    goto :goto_1b9

    .line 49
    :cond_157
    :goto_157
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->m:I

    if-nez v1, :cond_1c9

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->n:I

    if-nez v1, :cond_1c4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->o:I

    if-nez v1, :cond_1bf

    const/4 v1, 0x0

    .line 50
    :goto_164
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    add-int v10, v1, v2

    const/16 v1, 0xff

    if-eq v2, v1, :cond_1bd

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->c()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_17e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    shr-int/lit8 v1, v1, 0x3

    .line 51
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_18e

    .line 52
    :cond_17e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    mul-int/lit8 v2, v10, 0x8

    .line 53
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzem;->g([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 54
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 55
    :goto_18e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->d:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 56
    invoke-interface {v1, v2, v10}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v7, v1

    if-eqz v3, :cond_1af

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaia;->d:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 57
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaia;->s:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    :cond_1af
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->p:Z

    if-eqz v1, :cond_1b9

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->q:J

    long-to-int v2, v1

    .line 58
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_1b9
    :goto_1b9
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    goto/16 :goto_5

    :cond_1bd
    move v1, v10

    goto :goto_164

    .line 59
    :cond_1bf
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 60
    :cond_1c4
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 61
    :cond_1c9
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 62
    :cond_1ce
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v5

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->i:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    .line 64
    array-length v3, v3

    if-le v0, v3, :cond_1f2

    .line 65
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->c:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 66
    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->i([BI)V

    :cond_1f2
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaia;->h:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    goto/16 :goto_5

    .line 67
    :cond_1f8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_208

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->j:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    goto/16 :goto_5

    :cond_208
    if-eq v0, v1, :cond_5

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    goto/16 :goto_5

    .line 68
    :cond_20e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-ne v0, v1, :cond_5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->g:I

    goto/16 :goto_5

    :cond_218
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->e:Ljava/lang/String;

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->k:J

    :cond_b
    return-void
.end method
