###### Class com.google.android.gms.internal.ads.zzagq (com.google.android.gms.internal.ads.zzagq)
.class public final Lcom/google/android/gms/internal/ads/zzagq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzzx;

.field private b:Lcom/google/android/gms/internal/ads/zzagy;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagp;->b:Lcom/google/android/gms/internal/ads/zzagp;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagq;->d:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzags;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzags;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_72

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzags;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_14

    goto :goto_72

    :cond_14
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzags;->e:I

    const/16 v2, 0x8

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 5
    invoke-virtual {p1, v4, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_4f

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_4f

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_4f

    new-instance p1, Lcom/google/android/gms/internal/ads/zzago;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzago;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    goto :goto_71

    .line 10
    :cond_4f
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 11
    :try_start_52
    invoke-static {v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzabh;->d(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    move-result p1
    :try_end_56
    .catch Lcom/google/android/gms/internal/ads/zzbu; {:try_start_52 .. :try_end_56} :catch_60

    if-eqz p1, :cond_61

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaha;

    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaha;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    goto :goto_71

    :catch_60
    nop

    .line 13
    :cond_61
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagu;->j(Lcom/google/android/gms/internal/ads/zzen;)Z

    move-result p1

    if-eqz p1, :cond_72

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagu;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    :goto_71
    return v1

    :cond_72
    :goto_72
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
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagq;->b(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p1
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzbu; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->a:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    if-nez v0, :cond_1b

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagq;->b(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    goto :goto_1b

    :cond_13
    const/4 p1, 0x0

    const-string p2, "Failed to determine bitstream type"

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 5
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->c:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->a:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->a:Lcom/google/android/gms/internal/ads/zzzx;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagq;->a:Lcom/google/android/gms/internal/ads/zzzx;

    .line 8
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzagy;->g(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->c:Z

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagy;->d(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->a:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->b:Lcom/google/android/gms/internal/ads/zzagy;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzagy;->i(JJ)V

    :cond_7
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzagp (com.google.android.gms.internal.ads.zzagp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzagp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzagp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagp;->b:Lcom/google/android/gms/internal/ads/zzagp;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagq;->d:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzagq;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
