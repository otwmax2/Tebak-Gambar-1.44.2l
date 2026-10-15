###### Class com.google.android.gms.internal.ads.zzahf (com.google.android.gms.internal.ads.zzahf)
.class public final Lcom/google/android/gms/internal/ads/zzahf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzahg;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahe;->b:Lcom/google/android/gms/internal/ads/zzahe;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahf;->d:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahf;->a:Lcom/google/android/gms/internal/ads/zzahg;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahf;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    .line 2
    invoke-virtual {v5, v4, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->u()I

    move-result v4

    const v6, 0x494433

    const/4 v7, 0x3

    if-eq v4, v6, :cond_9e

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    move-object/from16 v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    move v5, v3

    :goto_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    const/4 v8, 0x7

    .line 7
    invoke-virtual {v4, v6, v2, v8, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v6

    const v9, 0xac40

    const v10, 0xac41

    if-eq v6, v9, :cond_56

    if-eq v6, v10, :cond_56

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v3

    const/16 v6, 0x2000

    if-ge v1, v6, :cond_55

    .line 11
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_2c

    :cond_55
    return v2

    :cond_56
    const/4 v9, 0x1

    add-int/2addr v1, v9

    const/4 v11, 0x4

    if-lt v1, v11, :cond_5c

    return v9

    :cond_5c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v9

    .line 12
    sget v12, Lcom/google/android/gms/internal/ads/zzyy;->b:I

    .line 13
    array-length v12, v9

    const/4 v13, -0x1

    if-ge v12, v8, :cond_68

    const/4 v12, -0x1

    goto :goto_95

    :cond_68
    const/4 v12, 0x2

    .line 14
    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    aget-byte v14, v9, v7

    shl-int/lit8 v12, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    const v14, 0xffff

    if-ne v12, v14, :cond_8f

    .line 15
    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x5

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v11, v11, 0x10

    shl-int/lit8 v12, v12, 0x8

    const/4 v14, 0x6

    aget-byte v9, v9, v14

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v11, v12

    or-int v12, v11, v9

    goto :goto_90

    :cond_8f
    const/4 v8, 0x4

    :goto_90
    if-ne v6, v10, :cond_94

    add-int/lit8 v8, v8, 0x2

    :cond_94
    add-int/2addr v12, v8

    :goto_95
    if-ne v12, v13, :cond_98

    return v2

    :cond_98
    add-int/lit8 v12, v12, -0x7

    .line 16
    invoke-virtual {v4, v12, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_2d

    .line 17
    :cond_9e
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->r()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    add-int/2addr v3, v6

    .line 19
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto/16 :goto_9
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahf;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    :cond_11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahf;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahf;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->c:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->a:Lcom/google/android/gms/internal/ads/zzahg;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzahg;->e(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->c:Z

    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->a:Lcom/google/android/gms/internal/ads/zzahg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahf;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahg;->c(Lcom/google/android/gms/internal/ads/zzen;)V

    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahf;->a:Lcom/google/android/gms/internal/ads/zzahg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiz;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(III)V

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzahg;->d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaw;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    return-void
.end method

.method public final h(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahf;->a:Lcom/google/android/gms/internal/ads/zzahg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzahg;->b()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzahe (com.google.android.gms.internal.ads.zzahe)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzahe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzahe;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahe;->b:Lcom/google/android/gms/internal/ads/zzahe;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahf;->d:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
