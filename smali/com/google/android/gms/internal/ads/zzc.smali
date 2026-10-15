###### Class com.google.android.gms.internal.ads.zzc (com.google.android.gms.internal.ads.zzc)
.class public final Lcom/google/android/gms/internal/ads/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field public static final p:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:[Landroid/net/Uri;

.field public final d:[I

.field public final e:[J

.field public final f:J

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->i:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->j:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->k:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->l:Ljava/lang/String;

    const/4 v0, 0x5

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->m:Ljava/lang/String;

    const/4 v0, 0x6

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->n:Ljava/lang/String;

    const/4 v0, 0x7

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->o:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzb;->a:Lcom/google/android/gms/internal/ads/zzb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->p:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 14

    const/4 p1, 0x0

    new-array v5, p1, [I

    new-array v6, p1, [Landroid/net/Uri;

    new-array v7, p1, [J

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzc;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JII[I[Landroid/net/Uri;[JJZ)V
    .registers 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p5

    array-length p2, p6

    const/4 p4, 0x0

    if-ne p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzc;->a:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzc;->b:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzc;->c:[Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzc;->f:J

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzc;->g:Z

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    array-length v2, v1

    if-ge p1, v2, :cond_11

    .line 2
    aget v1, v1, p1

    if-eqz v1, :cond_11

    if-ne v1, v0, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_11
    :goto_11
    return p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzc;
    .registers 16

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 4
    invoke-static {v8, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    .line 5
    array-length v0, p1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {v10, v0, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->c:[Landroid/net/Uri;

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v3, p1

    .line 10
    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzc;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_37

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzc;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzc;->b:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->c:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzc;->c:[Landroid/net/Uri;

    .line 2
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzc;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->c:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3c1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->d:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzb (com.google.android.gms.internal.ads.zzb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzb;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzb;->a:Lcom/google/android/gms/internal/ads/zzb;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
