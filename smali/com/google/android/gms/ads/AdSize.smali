###### Class com.google.android.gms.ads.AdSize (com.google.android.gms.ads.AdSize)
.class public final Lcom/google/android/gms/ads/AdSize;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field public static final i:Lcom/google/android/gms/ads/AdSize;

.field public static final j:Lcom/google/android/gms/ads/AdSize;

.field public static final k:Lcom/google/android/gms/ads/AdSize;

.field public static final l:Lcom/google/android/gms/ads/AdSize;

.field public static final m:Lcom/google/android/gms/ads/AdSize;

.field public static final n:Lcom/google/android/gms/ads/AdSize;

.field public static final o:Lcom/google/android/gms/ads/AdSize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:Lcom/google/android/gms/ads/AdSize;

.field public static final q:Lcom/google/android/gms/ads/AdSize;

.field public static final r:Lcom/google/android/gms/ads/AdSize;

.field public static final s:Lcom/google/android/gms/ads/AdSize;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "320x50_mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->i:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x1d4

    const/16 v4, 0x3c

    const-string v5, "468x60_as"

    .line 2
    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->j:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x64

    const-string v4, "320x100_as"

    .line 3
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->k:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x2d8

    const/16 v3, 0x5a

    const-string v4, "728x90_as"

    .line 4
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->l:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x12c

    const/16 v3, 0xfa

    const-string v4, "300x250_as"

    .line 5
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->m:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0xa0

    const/16 v3, 0x258

    const-string v4, "160x600_as"

    .line 6
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->n:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const-string v4, "smart_banner"

    .line 7
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->o:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v1, -0x3

    const/4 v3, -0x4

    const-string v4, "fluid"

    .line 8
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->p:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    const-string v4, "invalid"

    .line 9
    invoke-direct {v0, v3, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->q:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const-string v4, "50x50_mb"

    .line 10
    invoke-direct {v0, v2, v2, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->s:Lcom/google/android/gms/ads/AdSize;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const-string v2, "search_v2"

    .line 11
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->r:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const-string v0, "FULL"

    goto :goto_a

    .line 1
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    const/4 v1, -0x2

    if-ne p2, v1, :cond_10

    const-string v1, "AUTO"

    goto :goto_14

    .line 2
    :cond_10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_23

    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    const/4 v0, -0x3

    if-ne p1, v0, :cond_c

    goto :goto_23

    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid width for AdSize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_23
    :goto_23
    if-gez p2, :cond_43

    const/4 v0, -0x2

    if-eq p2, v0, :cond_43

    const/4 v0, -0x4

    if-ne p2, v0, :cond_2c

    goto :goto_43

    .line 6
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid height for AdSize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_43
    :goto_43
    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    iput p2, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    iput-object p3, p0, Lcom/google/android/gms/ads/AdSize;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->h(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->d:Z

    return-object p0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    return v0
.end method

.method public c(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_22

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    const/4 v1, -0x2

    if-eq v0, v1, :cond_15

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 2
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzq;->V3(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    return v0
.end method

.method public e(Landroid/content/Context;)I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    const/4 v1, -0x3

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1f

    if-eq v0, v2, :cond_12

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 2
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1

    :cond_1f
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/ads/AdSize;

    if-nez v2, :cond_d

    return v0

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->a:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->b:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/ads/AdSize;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/AdSize;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->a:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->b:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method final g()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->h:I

    return v0
.end method

.method final h()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->f:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method final i(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->f:I

    return-void
.end method

.method final j(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->h:I

    return-void
.end method

.method final k(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->e:Z

    return-void
.end method

.method final l(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->g:Z

    return-void
.end method

.method final m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->d:Z

    return v0
.end method

.method final n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->e:Z

    return v0
.end method

.method final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->g:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->c:Ljava/lang/String;

    return-object v0
.end method
