###### Class com.google.android.gms.internal.ads.zzgs (com.google.android.gms.internal.ads.zzgs)
.class public abstract Lcom/google/android/gms/internal/ads/zzgs;
.super Lcom/google/android/gms/internal/ads/zzcn;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final f:I

.field private final g:Lcom/google/android/gms/internal/ads/zzum;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/internal/ads/zzum;[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcn;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgs;->g:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzum;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgs;->f:I

    return-void
.end method

.method private final w(IZ)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p2, :cond_a

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgs;->g:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzum;->d(I)I

    move-result v0

    goto :goto_f

    :cond_a
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgs;->f:I

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_10

    :goto_f
    return v0

    :cond_10
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final x(IZ)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p2, :cond_a

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgs;->g:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzum;->e(I)I

    move-result v0

    goto :goto_c

    :cond_a
    if-gtz p1, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 5

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-eqz v0, :cond_23

    .line 2
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->p(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_12

    return v1

    .line 5
    :cond_12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1d

    return v1

    .line 6
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->s(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_23
    return v1
.end method

.method public final d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->q(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->s(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 5
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    if-eqz p3, :cond_2a

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 10
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    :cond_2a
    return-object p2
.end method

.method public final e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->r(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->s(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->v(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcm;->o:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_28

    .line 8
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 10
    :cond_28
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    .line 11
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    .line 12
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    return-object p2
.end method

.method public final f(I)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->q(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->s(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcn;->f(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->v(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final g(Z)I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->f:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->g:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzum;->a()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2
    :cond_10
    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->w(IZ)I

    move-result v0

    if-ne v0, v1, :cond_10

    return v1

    .line 4
    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final h(Z)I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->f:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->g:Lcom/google/android/gms/internal/ads/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzum;->b()I

    move-result v0

    goto :goto_10

    :cond_f
    add-int/2addr v0, v1

    .line 2
    :cond_10
    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->x(IZ)I

    move-result v0

    if-ne v0, v1, :cond_10

    return v1

    .line 4
    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final j(IIZ)I
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->r(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_12

    const/4 v4, 0x0

    goto :goto_13

    :cond_12
    move v4, p2

    .line 4
    :goto_13
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/android/gms/internal/ads/zzcn;->j(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1c

    add-int/2addr v1, p1

    return v1

    .line 5
    :cond_1c
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzgs;->w(IZ)I

    move-result p1

    :goto_20
    if-eq p1, v2, :cond_31

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgs;->w(IZ)I

    move-result p1

    goto :goto_20

    :cond_31
    if-eq p1, v2, :cond_41

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_41
    if-ne p2, v3, :cond_48

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzcn;->g(Z)I

    move-result p1

    return p1

    :cond_48
    return v2
.end method

.method public final k(IIZ)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->r(I)I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result p3

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    sub-int/2addr p1, p3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzcn;->k(IIZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    add-int/2addr p3, p1

    return p3

    .line 5
    :cond_17
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzgs;->x(IZ)I

    move-result p1

    :goto_1b
    if-eq p1, v0, :cond_2c

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgs;->x(IZ)I

    move-result p1

    goto :goto_1b

    :cond_2c
    if-eq p1, v0, :cond_3c

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcn;->h(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3c
    return v0
.end method

.method public final n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;
    .registers 6

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;->p(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;->t(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;->u(I)Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    .line 7
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    return-object p2
.end method

.method protected abstract p(Ljava/lang/Object;)I
.end method

.method protected abstract q(I)I
.end method

.method protected abstract r(I)I
.end method

.method protected abstract s(I)I
.end method

.method protected abstract t(I)I
.end method

.method protected abstract u(I)Lcom/google/android/gms/internal/ads/zzcn;
.end method

.method protected abstract v(I)Ljava/lang/Object;
.end method
