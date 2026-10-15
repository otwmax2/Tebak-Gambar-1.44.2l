###### Class com.google.android.gms.internal.ads.zzail (com.google.android.gms.internal.ads.zzail)
.class public final Lcom/google/android/gms/internal/ads/zzail;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final l:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeu;

.field private final b:Landroid/util/SparseArray;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private final d:Lcom/google/android/gms/internal/ads/zzaii;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Lcom/google/android/gms/internal/ads/zzaih;

.field private j:Lcom/google/android/gms/internal/ads/zzzx;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaij;->b:Lcom/google/android/gms/internal/ads/zzaij;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzail;->l:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->a:Lcom/google/android/gms/internal/ads/zzeu;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->b:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaii;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaii;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->d:Lcom/google/android/gms/internal/ads/zzaii;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/16 v4, 0x8

    shl-int/2addr v6, v4

    or-int/2addr v0, v6

    or-int/2addr v0, v8

    const/16 v6, 0x1ba

    if-eq v0, v6, :cond_2c

    return v2

    :cond_2c
    const/4 v0, 0x4

    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xc4

    const/16 v8, 0x44

    if-eq v6, v8, :cond_36

    return v2

    :cond_36
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_3d

    return v2

    :cond_3d
    aget-byte v6, v1, v4

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_43

    return v2

    :cond_43
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4b

    return v2

    :cond_4b
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_53

    return v2

    :cond_53
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 2
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    .line 3
    invoke-virtual {p1, v1, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    if-ne p1, v3, :cond_73

    return v3

    :cond_73
    return v2
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->d:Lcom/google/android/gms/internal/ads/zzaii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaii;->e()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1d

    .line 2
    :cond_18
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaii;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1

    .line 3
    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzail;->k:Z

    const/4 v11, 0x1

    if-nez v0, :cond_5e

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzail;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->d:Lcom/google/android/gms/internal/ads/zzaii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaii;->b()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4e

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaii;->d()Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaii;->b()J

    move-result-wide v3

    move-object v1, v12

    move-wide v5, v7

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Lcom/google/android/gms/internal/ads/zzeu;JJ)V

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/zzail;->i:Lcom/google/android/gms/internal/ads/zzaih;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    .line 5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzzg;->b()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    goto :goto_5e

    .line 6
    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaii;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    .line 8
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->i:Lcom/google/android/gms/internal/ads/zzaih;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzg;->e()Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_6e

    .line 9
    :cond_69
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzg;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1

    .line 10
    :cond_6e
    :goto_6e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    cmp-long p2, v7, v9

    if-eqz p2, :cond_7b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v0

    sub-long/2addr v7, v0

    goto :goto_7c

    :cond_7b
    move-wide v7, v9

    :goto_7c
    const/4 p2, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_89

    const-wide/16 v0, 0x4

    cmp-long v2, v7, v0

    if-ltz v2, :cond_88

    goto :goto_89

    :cond_88
    return p2

    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v0, v2, v1, v11}, Lcom/google/android/gms/internal/ads/zzzv;->k([BIIZ)Z

    move-result v0

    if-nez v0, :cond_98

    return p2

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_a8

    return p2

    :cond_a8
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_ce

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v0, 0xa

    .line 14
    invoke-virtual {p1, p2, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x9

    .line 15
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 17
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v2

    :cond_ce
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v3, 0x6

    if-ne v0, p2, :cond_ef

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 18
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result p2

    add-int/2addr p2, v3

    .line 21
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v2

    :cond_ef
    shr-int/lit8 p2, v0, 0x8

    if-eq p2, v11, :cond_f9

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 22
    invoke-virtual {p1, v11, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v2

    :cond_f9
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzail;->b:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaik;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzail;->e:Z

    if-nez v4, :cond_180

    if-nez v0, :cond_161

    const/16 v4, 0xbd

    const/4 v5, 0x0

    if-ne p2, v4, :cond_11d

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahd;

    .line 24
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzail;->f:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzail;->h:J

    :goto_11b
    move-object v5, v4

    goto :goto_145

    :cond_11d
    and-int/lit16 v4, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_131

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaib;

    .line 26
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzail;->f:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzail;->h:J

    goto :goto_11b

    :cond_131
    and-int/lit16 v4, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_145

    .line 27
    new-instance v4, Lcom/google/android/gms/internal/ads/zzahp;

    .line 28
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(Lcom/google/android/gms/internal/ads/zzajc;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzail;->g:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzail;->h:J

    goto :goto_11b

    :cond_145
    :goto_145
    if-eqz v5, :cond_161

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiz;

    const/high16 v4, -0x80000000

    const/16 v6, 0x100

    .line 30
    invoke-direct {v0, v4, p2, v6}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(III)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    .line 31
    invoke-interface {v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzahn;->d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaik;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzail;->a:Lcom/google/android/gms/internal/ads/zzeu;

    .line 32
    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzaik;-><init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzeu;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzail;->b:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_161
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzail;->f:Z

    const-wide/32 v4, 0x100000

    if-eqz p2, :cond_171

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzail;->g:Z

    if-eqz p2, :cond_171

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzail;->h:J

    const-wide/16 v6, 0x2000

    add-long/2addr v4, v6

    :cond_171
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_180

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzail;->e:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    .line 34
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    :cond_180
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 35
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 36
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result p2

    add-int/2addr p2, v3

    if-nez v0, :cond_19d

    .line 38
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_1be

    :cond_19d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, v2, p2, v2}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 41
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaik;->a(Lcom/google/android/gms/internal/ads/zzen;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->j()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    :goto_1be
    return v2
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->j:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->a:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeu;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_21

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeu;->c()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_24

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_24

    cmp-long p2, v0, p3

    if-eqz p2, :cond_24

    :cond_21
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzeu;->f(J)V

    :cond_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->i:Lcom/google/android/gms/internal/ads/zzaih;

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzzg;->d(J)V

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->b:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzail;->b:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaik;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    :cond_42
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzaij (com.google.android.gms.internal.ads.zzaij)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzaij;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaij;->b:Lcom/google/android/gms/internal/ads/zzaij;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzail;->l:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzail;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
