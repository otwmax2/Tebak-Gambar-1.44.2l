###### Class com.google.android.gms.internal.ads.zzaen (com.google.android.gms.internal.ads.zzaen)
.class final Lcom/google/android/gms/internal/ads/zzaen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaep;


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;

.field private final c:Lcom/google/android/gms/internal/ads/zzaew;

.field private d:Lcom/google/android/gms/internal/ads/zzaeo;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->b:Ljava/util/ArrayDeque;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaew;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->c:Lcom/google/android/gms/internal/ads/zzaew;

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/ads/zzzv;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_a
    if-ge v1, p2, :cond_1a

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    .line 2
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-wide v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaeo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->b:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaem;

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaem;->b(Lcom/google/android/gms/internal/ads/zzaem;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    goto :goto_33

    .line 3
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->b:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaem;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaem;->a(Lcom/google/android/gms/internal/ads/zzaem;)I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaes;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaeu;->f(I)V

    return v1

    .line 6
    :cond_33
    :goto_33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->c:Lcom/google/android/gms/internal/ads/zzaew;

    .line 7
    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzaew;->d(Lcom/google/android/gms/internal/ads/zzzv;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_7a

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    :goto_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    .line 9
    invoke-virtual {v5, v0, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    aget-byte v0, v0, v4

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaew;->b(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_76

    if-gt v0, v3, :cond_76

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaen;->a:[B

    .line 11
    invoke-static {v6, v0, v4}, Lcom/google/android/gms/internal/ads/zzaew;->c([BIZ)J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaes;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaeu;->o(I)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 12
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    int-to-long v5, v7

    goto :goto_7a

    .line 13
    :cond_76
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_49

    :cond_7a
    :goto_7a
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_81

    return v4

    :cond_81
    long-to-int v0, v5

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->f:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    goto :goto_89

    :cond_87
    if-ne v0, v1, :cond_95

    :goto_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->c:Lcom/google/android/gms/internal/ads/zzaew;

    const/16 v5, 0x8

    .line 15
    invoke-virtual {v0, p1, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzaew;->d(Lcom/google/android/gms/internal/ads/zzzv;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaen;->f:I

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaes;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaeu;->n(I)I

    move-result v7

    if-eqz v7, :cond_183

    const/4 v8, 0x0

    if-eq v7, v1, :cond_161

    const-wide/16 v9, 0x8

    if-eq v7, v2, :cond_138

    const/4 v2, 0x3

    if-eq v7, v2, :cond_f5

    if-eq v7, v3, :cond_ec

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    const-wide/16 v11, 0x4

    cmp-long v2, v6, v11

    if-eqz v2, :cond_d2

    cmp-long v2, v6, v9

    if-nez v2, :cond_bc

    goto :goto_d2

    .line 16
    :cond_bc
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_d2
    :goto_d2
    long-to-int v2, v6

    .line 18
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaen;->c(Lcom/google/android/gms/internal/ads/zzzv;I)J

    move-result-wide v6

    if-ne v2, v3, :cond_e0

    long-to-int p1, v6

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v2, p1

    goto :goto_e4

    .line 20
    :cond_e0
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 21
    :goto_e4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 22
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaeu;->i(ID)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    return v1

    .line 23
    :cond_ec
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    long-to-int v0, v2

    .line 24
    invoke-virtual {v6, v5, v0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->d(IILcom/google/android/gms/internal/ads/zzzv;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    return v1

    .line 25
    :cond_f5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v9, v2, v6

    if-gtz v9, :cond_122

    long-to-int v3, v2

    if-nez v3, :cond_104

    const-string p1, ""

    goto :goto_11a

    .line 26
    :cond_104
    new-array v2, v3, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 27
    invoke-virtual {p1, v2, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    :goto_10b
    if-lez v3, :cond_115

    add-int/lit8 p1, v3, -0x1

    .line 28
    aget-byte v6, v2, p1

    if-nez v6, :cond_115

    move v3, p1

    goto :goto_10b

    :cond_115
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 29
    :goto_11a
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 30
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->l(ILjava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    return v1

    .line 31
    :cond_122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 33
    :cond_138
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    cmp-long v6, v2, v9

    if-gtz v6, :cond_14b

    long-to-int v3, v2

    .line 34
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzaen;->c(Lcom/google/android/gms/internal/ads/zzzv;I)J

    move-result-wide v2

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 35
    invoke-virtual {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaeu;->j(IJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    return v1

    .line 36
    :cond_14b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 38
    :cond_161
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    add-long/2addr v6, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaem;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaem;-><init>(IJLcom/google/android/gms/internal/ads/zzael;)V

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaen;->d:Lcom/google/android/gms/internal/ads/zzaeo;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaen;->f:I

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaes;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzaes;->a:Lcom/google/android/gms/internal/ads/zzaeu;

    move-wide v7, v2

    .line 40
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzaeu;->k(IJJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    return v1

    :cond_183
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->g:J

    long-to-int v1, v0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 41
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    goto/16 :goto_5
.end method

.method public final zzb()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaen;->c:Lcom/google/android/gms/internal/ads/zzaew;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaew;->e()V

    return-void
.end method
