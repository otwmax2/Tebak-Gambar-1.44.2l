###### Class com.google.android.gms.internal.ads.zzcn (com.google.android.gms.internal.ads.zzcn)
.class public abstract Lcom/google/android/gms/internal/ads/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzcn;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field public static final e:Lcom/google/android/gms/internal/ads/zzn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->a:Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzch;->a:Lcom/google/android/gms/internal/ads/zzch;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->e:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;
.end method

.method public abstract e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v3

    if-ne v1, v3, :cond_8f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v3

    if-eq v1, v3, :cond_22

    goto/16 :goto_8f

    .line 4
    :cond_22
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    const/4 v6, 0x0

    .line 7
    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v7

    if-ge v6, v7, :cond_51

    const-wide/16 v7, 0x0

    .line 8
    invoke-virtual {p0, v6, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v9

    .line 9
    invoke-virtual {p1, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzcm;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    return v2

    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_51
    const/4 v1, 0x0

    .line 10
    :goto_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v4

    if-ge v1, v4, :cond_6a

    .line 11
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzck;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    return v2

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 13
    :cond_6a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result v1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result v3

    if-eq v1, v3, :cond_75

    return v2

    .line 15
    :cond_75
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result v3

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result v4

    if-ne v3, v4, :cond_8f

    :goto_7f
    if-eq v1, v3, :cond_8e

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcn;->j(IIZ)I

    move-result v4

    .line 18
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcn;->j(IIZ)I

    move-result v1

    if-ne v4, v1, :cond_8d

    move v1, v4

    goto :goto_7f

    :cond_8d
    return v2

    :cond_8e
    return v0

    :cond_8f
    :goto_8f
    return v2
.end method

.method public abstract f(I)Ljava/lang/Object;
.end method

.method public g(Z)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public h(Z)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v5

    if-ge v4, v5, :cond_28

    mul-int/lit8 v2, v2, 0x1f

    const-wide/16 v5, 0x0

    .line 5
    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcm;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_28
    mul-int/lit8 v2, v2, 0x1f

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x0

    .line 8
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_45

    mul-int/lit8 v2, v2, 0x1f

    .line 9
    invoke-virtual {p0, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzck;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 10
    :cond_45
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result v0

    :goto_49
    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    mul-int/lit8 v2, v2, 0x1f

    .line 11
    invoke-virtual {p0, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzcn;->j(IIZ)I

    move-result v1

    add-int/2addr v2, v0

    move v0, v1

    goto :goto_49

    :cond_55
    return v2
.end method

.method public final i(ILcom/google/android/gms/internal/ads/zzck;Lcom/google/android/gms/internal/ads/zzcm;IZ)I
    .registers 9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p2

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v2

    .line 4
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    if-ne v2, p1, :cond_20

    .line 5
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/gms/internal/ads/zzcn;->j(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_19

    return p2

    .line 6
    :cond_19
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object p1

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    return p1

    :cond_20
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public j(IIZ)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result p2

    if-ne p1, p2, :cond_13

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result p1

    goto :goto_14

    :cond_13
    add-int/2addr p1, v0

    :goto_14
    return p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1b
    return p1

    .line 4
    :cond_1c
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 p1, -0x1

    return p1

    :cond_24
    add-int/2addr p1, v0

    return p1
.end method

.method public k(IIZ)I
    .registers 4

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p2, :cond_9

    return p3

    :cond_9
    add-int/2addr p1, p3

    return p1
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJ)Landroid/util/Pair;
    .registers 14

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcn;->m(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJJ)Landroid/util/Pair;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzdl;->a(III)I

    .line 2
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    cmp-long p3, p4, p6

    if-nez p3, :cond_19

    iget-wide p3, p1, Lcom/google/android/gms/internal/ads/zzcm;->k:J

    move-wide p4, v2

    .line 3
    :cond_19
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    .line 4
    invoke-virtual {p0, p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    :goto_1e
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    if-ge p3, v0, :cond_36

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzck;->e:J

    cmp-long v0, p4, v2

    if-eqz v0, :cond_36

    add-int/lit8 v0, p3, 0x1

    .line 6
    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v4

    .line 7
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzck;->e:J

    cmp-long v4, p4, v2

    if-ltz v4, :cond_36

    move p3, v0

    goto :goto_1e

    :cond_36
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    .line 9
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzck;->e:J

    .line 10
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzck;->d:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_49

    const-wide/16 p6, -0x1

    add-long/2addr v0, p6

    .line 11
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 12
    :cond_49
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 13
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p1

    return-object p1
.end method

.method public final o()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzch (com.google.android.gms.internal.ads.zzch)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzch;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzch;->a:Lcom/google/android/gms/internal/ads/zzch;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
