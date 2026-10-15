###### Class com.google.android.gms.internal.ads.zzvw (com.google.android.gms.internal.ads.zzvw)
.class final Lcom/google/android/gms/internal/ads/zzvw;
.super Lcom/google/android/gms/internal/ads/zzvy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final A:Z

.field private final s:I

.field private final t:Z

.field private final u:Z

.field private final v:Z

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;ILjava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(ILcom/google/android/gms/internal/ads/zzcp;I)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->t:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->d:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzcu;->u:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_17

    const/4 p3, 0x0

    goto :goto_18

    :cond_17
    const/4 p3, 0x1

    :goto_18
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvw;->u:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->v:Z

    .line 4
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzcu;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_32

    const-string p2, ""

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p2

    goto :goto_34

    .line 6
    :cond_32
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzcu;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    :goto_34
    const/4 p3, 0x0

    .line 7
    :goto_35
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p3, v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzwc;->j(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4a

    goto :goto_51

    :cond_4a
    add-int/lit8 p3, p3, 0x1

    goto :goto_35

    :cond_4d
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_51
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvw;->w:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->x:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 10
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->y:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 12
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->A:Z

    .line 13
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzwc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6d

    const/4 p3, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p3, 0x0

    :goto_6e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 14
    invoke-static {v2, p6, p3}, Lcom/google/android/gms/internal/ads/zzwc;->j(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvw;->z:I

    if-gtz v1, :cond_8f

    .line 15
    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzcu;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 16
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_82

    if-gtz p2, :cond_8f

    :cond_82
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->u:Z

    if-nez p2, :cond_8f

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->v:Z

    if-eqz p2, :cond_8d

    if-lez p3, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p2, 0x0

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 p2, 0x1

    .line 17
    :goto_90
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzvq;->n0:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p3

    if-eqz p3, :cond_9b

    if-eqz p2, :cond_9b

    const/4 p1, 0x1

    :cond_9b
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->s:I

    return-void
.end method


# virtual methods
.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->s:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvw;->f(Lcom/google/android/gms/internal/ads/zzvw;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzvy;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvw;

    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzvw;)I
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->t:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->t:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->w:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->w:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->x:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->y:I

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->u:Z

    .line 6
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->u:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->v:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvw;->v:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvw;->x:I

    if-nez v3, :cond_51

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    goto :goto_59

    .line 9
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    .line 10
    :goto_59
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->z:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvw;->z:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->y:I

    if-nez v0, :cond_6e

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->e(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p1

    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p1

    return p1
.end method
