###### Class com.google.android.gms.internal.ads.zzahi (com.google.android.gms.internal.ads.zzahi)
.class public final Lcom/google/android/gms/internal/ads/zzahi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final j:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzahj;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private final d:Lcom/google/android/gms/internal/ads/zzem;

.field private e:Lcom/google/android/gms/internal/ads/zzzx;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahh;->b:Lcom/google/android/gms/internal/ads/zzahh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahi;->j:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahj;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->a:Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->g:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0xa

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p1

    .line 6
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->d:Lcom/google/android/gms/internal/ads/zzem;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v4, 0xa

    .line 1
    invoke-virtual {v3, v2, v0, v4, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->u()I

    move-result v2

    const v4, 0x494433

    if-eq v2, v4, :cond_99

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahi;->g:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_34

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahi;->g:J

    :cond_34
    move v4, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_37
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    const/4 v7, 0x2

    .line 6
    invoke-virtual {v2, v6, v0, v7, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v6

    .line 9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzahj;->f(I)Z

    move-result v6

    if-nez v6, :cond_5d

    add-int/lit8 v4, v4, 0x1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 11
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    :goto_5a
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_92

    :cond_5d
    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v7, 0x4

    if-lt v3, v7, :cond_68

    const/16 v8, 0xbc

    if-gt v5, v8, :cond_67

    goto :goto_68

    :cond_67
    return v6

    :cond_68
    :goto_68
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    .line 12
    invoke-virtual {v2, v6, v0, v7, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->d:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v7, 0xe

    .line 13
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahi;->d:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v7, 0xd

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_8c

    add-int/lit8 v4, v4, 0x1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 16
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_5a

    :cond_8c
    add-int/lit8 v7, v6, -0x6

    .line 17
    invoke-virtual {v2, v7, v0}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    add-int/2addr v5, v6

    :goto_92
    sub-int v6, v4, v1

    const/16 v7, 0x2000

    if-lt v6, v7, :cond_37

    return v0

    :cond_99
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v4, 0x3

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->r()I

    move-result v2

    add-int/lit8 v4, v2, 0xa

    add-int/2addr v1, v4

    .line 20
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto/16 :goto_2
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->e:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x800

    .line 2
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->i:Z

    const/4 v1, 0x1

    if-nez p2, :cond_2a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->e:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaaw;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 3
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahi;->i:Z

    :cond_2a
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2e

    return p2

    :cond_2e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->h:Z

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->a:Lcom/google/android/gms/internal/ads/zzahj;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahi;->f:J

    const/4 p2, 0x4

    .line 6
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzahj;->e(JI)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahi;->h:Z

    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->a:Lcom/google/android/gms/internal/ads/zzahj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahj;->c(Lcom/google/android/gms/internal/ads/zzen;)V

    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->e:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->a:Lcom/google/android/gms/internal/ads/zzahj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiz;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(III)V

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzahj;->d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final h(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->h:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->a:Lcom/google/android/gms/internal/ads/zzahj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzahj;->b()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzahi;->f:J

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzahh (com.google.android.gms.internal.ads.zzahh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzahh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzahh;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahh;->b:Lcom/google/android/gms/internal/ads/zzahh;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahi;->j:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
