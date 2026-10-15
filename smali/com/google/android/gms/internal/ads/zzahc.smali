###### Class com.google.android.gms.internal.ads.zzahc (com.google.android.gms.internal.ads.zzahc)
.class public final Lcom/google/android/gms/internal/ads/zzahc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzahd;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahb;->b:Lcom/google/android/gms/internal/ads/zzahb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahc;->d:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahc;->a:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahc;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 10
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

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    .line 2
    invoke-virtual {v5, v4, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->u()I

    move-result v4

    const v6, 0x494433

    if-eq v4, v6, :cond_65

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    move v5, v3

    :goto_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    const/4 v7, 0x6

    .line 7
    invoke-virtual {v4, v6, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v6

    const/16 v7, 0xb77

    if-eq v6, v7, :cond_4d

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v3

    const/16 v6, 0x2000

    if-ge v1, v6, :cond_4c

    .line 11
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_29

    :cond_4c
    return v2

    :cond_4d
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_53

    return v6

    :cond_53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzyv;->b([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5f

    return v2

    :cond_5f
    add-int/lit8 v6, v6, -0x6

    .line 13
    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_2a

    :cond_65
    const/4 v4, 0x3

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->r()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    add-int/2addr v3, v6

    .line 16
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_9
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahc;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    :cond_11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahc;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahc;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->c:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->a:Lcom/google/android/gms/internal/ads/zzahd;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzahd;->e(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->c:Z

    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->a:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahc;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahd;->c(Lcom/google/android/gms/internal/ads/zzen;)V

    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahc;->a:Lcom/google/android/gms/internal/ads/zzahd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiz;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(III)V

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzahd;->d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

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
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahc;->a:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzahd;->b()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzahb (com.google.android.gms.internal.ads.zzahb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzahb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzahb;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahb;->b:Lcom/google/android/gms/internal/ads/zzahb;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahc;->d:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzahc;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
