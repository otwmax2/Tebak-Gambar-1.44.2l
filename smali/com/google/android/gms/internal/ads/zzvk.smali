###### Class com.google.android.gms.internal.ads.zzvk (com.google.android.gms.internal.ads.zzvk)
.class final Lcom/google/android/gms/internal/ads/zzvk;
.super Lcom/google/android/gms/internal/ads/zzvy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final A:Z

.field private final B:I

.field private final C:I

.field private final D:Z

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:Z

.field private final J:Z

.field private final s:I

.field private final t:Z

.field private final u:Ljava/lang/String;

.field private final v:Lcom/google/android/gms/internal/ads/zzvq;

.field private final w:Z

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;IZLcom/google/android/gms/internal/ads/zzfnv;)V
    .registers 11

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(ILcom/google/android/gms/internal/ads/zzcp;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvk;->v:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->u:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->w:Z

    const/4 p2, 0x0

    .line 3
    :goto_17
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzcu;->n:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzcu;->n:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 5
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzwc;->j(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_33

    goto :goto_3a

    :cond_33
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_36
    const p2, 0x7fffffff

    const/4 p3, 0x0

    :goto_3a
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->y:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvk;->x:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 7
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->z:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 9
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvk;->A:Z

    .line 10
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->d:I

    and-int/2addr v1, p3

    if-eq p3, v1, :cond_56

    const/4 v1, 0x0

    goto :goto_57

    :cond_56
    const/4 v1, 0x1

    :goto_57
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->D:Z

    .line 11
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->E:I

    .line 12
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->F:I

    .line 13
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->G:I

    .line 14
    invoke-interface {p7, p2}, Lcom/google/android/gms/internal/ads/zzfnv;->a(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->t:Z

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzew;->H()[Ljava/lang/String;

    move-result-object p2

    const/4 p7, 0x0

    .line 16
    :goto_70
    array-length v1, p2

    if-ge p7, v1, :cond_81

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 17
    aget-object v2, p2, p7

    .line 18
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzwc;->j(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_7e

    goto :goto_85

    :cond_7e
    add-int/lit8 p7, p7, 0x1

    goto :goto_70

    :cond_81
    const p7, 0x7fffffff

    const/4 v1, 0x0

    :goto_85
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzvk;->B:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvk;->C:I

    const/4 p2, 0x0

    .line 19
    :goto_8a
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzcu;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p2, p7, :cond_a9

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 20
    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-eqz p7, :cond_a6

    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzcu;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 21
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_a6

    move v0, p2

    goto :goto_a9

    :cond_a6
    add-int/lit8 p2, p2, 0x1

    goto :goto_8a

    :cond_a9
    :goto_a9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->H:I

    and-int/lit16 p2, p5, 0x180

    const/16 p4, 0x80

    if-ne p2, p4, :cond_b3

    const/4 p2, 0x1

    goto :goto_b4

    :cond_b3
    const/4 p2, 0x0

    :goto_b4
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->I:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p4, 0x40

    if-ne p2, p4, :cond_be

    const/4 p2, 0x1

    goto :goto_bf

    :cond_be
    const/4 p2, 0x0

    :goto_bf
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->J:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvk;->v:Lcom/google/android/gms/internal/ads/zzvq;

    .line 22
    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzvq;->n0:Z

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p4

    const/4 p7, 0x2

    if-nez p4, :cond_cd

    goto :goto_ee

    :cond_cd
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvk;->t:Z

    if-nez p4, :cond_d6

    .line 23
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzvq;->h0:Z

    if-nez v0, :cond_d6

    goto :goto_ee

    :cond_d6
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p1

    if-eqz p1, :cond_ed

    if-eqz p4, :cond_ed

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 24
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_ed

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzvq;->p0:Z

    if-nez p1, :cond_eb

    if-nez p6, :cond_ed

    :cond_eb
    const/4 p1, 0x2

    goto :goto_ee

    :cond_ed
    const/4 p1, 0x1

    .line 25
    :goto_ee
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->s:I

    return-void
.end method


# virtual methods
.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->s:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvk;->f(Lcom/google/android/gms/internal/ads/zzvk;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzvy;)Z
    .registers 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->v:Lcom/google/android/gms/internal/ads/zzvq;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->k0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-ne v1, v4, :cond_3d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->v:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->j0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-eq v0, v2, :cond_3d

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->I:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzvk;->I:Z

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->J:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzvk;->J:Z

    if-ne v0, p1, :cond_3d

    const/4 p1, 0x1

    return p1

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzvk;)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->t:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->w:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->l()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    goto :goto_15

    .line 2
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->l()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    .line 3
    :goto_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->w:Z

    .line 4
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->w:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->y:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->y:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->x:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->x:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->z:I

    .line 8
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->z:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->D:Z

    .line 9
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->D:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->B:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->B:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->C:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->C:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->t:Z

    .line 14
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->t:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->H:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->H:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->G:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->G:I

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->v:Lcom/google/android/gms/internal/ads/zzvq;

    .line 20
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzcu;->w:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->m()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->I:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->I:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->J:Z

    .line 22
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->J:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->E:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->E:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->F:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->F:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvk;->G:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzvk;->G:I

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvk;->u:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvk;->u:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->m()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    .line 28
    :cond_f8
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p1

    return p1
.end method
