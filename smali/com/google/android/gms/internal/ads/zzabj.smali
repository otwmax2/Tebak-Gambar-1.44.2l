###### Class com.google.android.gms.internal.ads.zzabj (com.google.android.gms.internal.ads.zzabj)
.class public final Lcom/google/android/gms/internal/ads/zzabj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final n:Lcom/google/android/gms/internal/ads/zzaab;

.field private static final o:[I

.field private static final p:[I

.field private static final q:[B

.field private static final r:[B

.field private static final s:I


# instance fields
.field private final a:[B

.field private b:Z

.field private c:J

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:J

.field private j:Lcom/google/android/gms/internal/ads/zzzx;

.field private k:Lcom/google/android/gms/internal/ads/zzabb;

.field private l:Lcom/google/android/gms/internal/ads/zzaax;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabi;->b:Lcom/google/android/gms/internal/ads/zzabi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabj;->n:Lcom/google/android/gms/internal/ads/zzaab;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabj;->o:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabj;->p:[I

    const-string v1, "#!AMR\n"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabj;->q:[B

    const-string v1, "#!AMR-WB\n"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabj;->r:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lcom/google/android/gms/internal/ads/zzabj;->s:I

    return-void

    nop

    :array_2c
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->a:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->g:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzzv;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    goto :goto_55

    .line 2
    :cond_8
    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->a:[B

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 3
    invoke-virtual {v4, v0, v3, v2, v3}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    const/4 v5, 0x0

    if-gtz v4, :cond_9f

    shr-int/lit8 v0, v0, 0x3

    .line 4
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->b:Z

    and-int/lit8 v0, v0, 0xf

    if-eqz v4, :cond_2d

    const/16 v6, 0xa

    if-lt v0, v6, :cond_38

    const/16 v6, 0xd

    if-le v0, v6, :cond_2d

    goto :goto_38

    :cond_2d
    if-nez v4, :cond_7a

    const/16 v6, 0xc

    if-lt v0, v6, :cond_38

    const/16 v6, 0xe

    if-gt v0, v6, :cond_38

    goto :goto_7a

    :cond_38
    :goto_38
    if-eqz v4, :cond_3f

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabj;->p:[I

    aget v0, v4, v0

    goto :goto_43

    :cond_3f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabj;->o:[I

    aget v0, v4, v0

    :goto_43
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->d:I
    :try_end_45
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_45} :catch_b5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->e:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->g:I

    if-ne v4, v1, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->g:I

    move v4, v0

    :cond_4e
    if-ne v4, v0, :cond_55

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->h:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->h:I

    .line 5
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->k:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v4, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaaz;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    if-ne p1, v1, :cond_5e

    return v1

    :cond_5e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->e:I

    if-lez v0, :cond_66

    return v3

    :cond_66
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->k:Lcom/google/android/gms/internal/ads/zzabb;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzabj;->c:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzabj;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->c:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->c:J

    return v3

    :cond_7a
    :goto_7a
    :try_start_7a
    const-string p1, "WB"

    const-string v3, "NB"

    if-eq v2, v4, :cond_81

    move-object p1, v3

    .line 7
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal AMR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frame type "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 10
    :cond_9f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
    :try_end_b5
    .catch Ljava/io/EOFException; {:try_start_7a .. :try_end_b5} :catch_b5

    :catch_b5
    return v1
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzzv;[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 2
    array-length v0, p1

    new-array v1, v0, [B

    check-cast p0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabj;->q:[B

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzabj;->c(Lcom/google/android/gms/internal/ads/zzzv;[B)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzabj;->b:Z

    .line 2
    array-length v0, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 3
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v2

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabj;->r:[B

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzabj;->c(Lcom/google/android/gms/internal/ads/zzzv;[B)Z

    move-result v1

    if-eqz v1, :cond_24

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzabj;->b:Z

    .line 5
    array-length v0, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v2

    :cond_24
    return v3
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabj;->d(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->k:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_20

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabj;->d(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_20

    :cond_18
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 5
    :cond_20
    :goto_20
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->m:Z

    const/4 v0, 0x1

    if-nez p2, :cond_53

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->m:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->b:Z

    if-eq v0, p2, :cond_2e

    const-string v1, "audio/3gpp"

    goto :goto_30

    :cond_2e
    const-string v1, "audio/amr-wb"

    :goto_30
    if-eq v0, p2, :cond_35

    const/16 p2, 0x1f40

    goto :goto_37

    :cond_35
    const/16 p2, 0x3e80

    :goto_37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabj;->k:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    sget v1, Lcom/google/android/gms/internal/ads/zzabj;->s:I

    .line 7
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 8
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    .line 11
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    .line 12
    :cond_53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabj;->b(Lcom/google/android/gms/internal/ads/zzzv;)I

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->f:Z

    if-eqz p2, :cond_5c

    return p1

    :cond_5c
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaaw;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->l:Lcom/google/android/gms/internal/ads/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabj;->j:Lcom/google/android/gms/internal/ads/zzzx;

    .line 13
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->f:Z

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->j:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->k:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final h(JJ)V
    .registers 5

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->c:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabj;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabj;->e:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->i:J

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzabi (com.google.android.gms.internal.ads.zzabi)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabi;->b:Lcom/google/android/gms/internal/ads/zzabi;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabj;->n:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
