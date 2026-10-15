###### Class com.google.android.gms.internal.ads.zzwb (com.google.android.gms.internal.ads.zzwb)
.class final Lcom/google/android/gms/internal/ads/zzwb;
.super Lcom/google/android/gms/internal/ads/zzvy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final A:Z

.field private final B:I

.field private final C:Z

.field private final D:Z

.field private final E:I

.field private final s:Z

.field private final t:Lcom/google/android/gms/internal/ads/zzvq;

.field private final u:Z

.field private final v:Z

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;IIZ)V
    .registers 12

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(ILcom/google/android/gms/internal/ads/zzcp;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwb;->t:Lcom/google/android/gms/internal/ads/zzvq;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzvq;->f0:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_d

    const/16 p1, 0x10

    goto :goto_f

    :cond_d
    const/16 p1, 0x18

    :goto_f
    const/high16 p3, -0x40800000    # -1.0f

    const/4 p6, 0x0

    if-eqz p7, :cond_26

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    cmpl-float v1, v0, p3

    if-eqz v1, :cond_24

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->s:Z

    const/4 v0, -0x1

    if-eqz p7, :cond_4d

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 5
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-eq v1, v0, :cond_34

    if-ltz v1, :cond_4d

    :cond_34
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-eq v1, v0, :cond_3a

    if-ltz v1, :cond_4d

    :cond_3a
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    cmpl-float p3, v1, p3

    if-eqz p3, :cond_45

    const/4 p3, 0x0

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_4d

    :cond_45
    iget p3, p7, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    if-eq p3, v0, :cond_4b

    if-ltz p3, :cond_4d

    :cond_4b
    const/4 p3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p3, 0x0

    :goto_4e
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->u:Z

    .line 6
    invoke-static {p5, p6}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->v:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 7
    iget p7, p3, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzwb;->w:I

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaf;->a()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->x:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 9
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    .line 10
    invoke-static {p6}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->z:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 11
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwb;->A:Z

    const/4 p3, 0x0

    .line 12
    :goto_73
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzcu;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p3, p7, :cond_91

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 13
    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-eqz p7, :cond_8e

    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzcu;->l:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 14
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_8e

    goto :goto_94

    :cond_8e
    add-int/lit8 p3, p3, 0x1

    goto :goto_73

    :cond_91
    const p3, 0x7fffffff

    :goto_94
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->y:I

    and-int/lit16 p3, p5, 0x180

    const/16 p4, 0x80

    if-ne p3, p4, :cond_9e

    const/4 p3, 0x1

    goto :goto_9f

    :cond_9e
    const/4 p3, 0x0

    :goto_9f
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->C:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_a9

    const/4 p3, 0x1

    goto :goto_aa

    :cond_a9
    const/4 p3, 0x0

    :goto_aa
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->D:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 15
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const/4 p7, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-nez p4, :cond_b7

    :goto_b5
    const/4 p7, 0x0

    goto :goto_104

    .line 16
    :cond_b7
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_132

    goto :goto_f1

    :sswitch_bf
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f1

    const/4 p4, 0x3

    goto :goto_f2

    :sswitch_c9
    const-string v3, "video/avc"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f1

    const/4 p4, 0x4

    goto :goto_f2

    :sswitch_d3
    const-string v3, "video/hevc"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f1

    const/4 p4, 0x2

    goto :goto_f2

    :sswitch_dd
    const-string v3, "video/av01"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f1

    const/4 p4, 0x1

    goto :goto_f2

    :sswitch_e7
    const-string v3, "video/dolby-vision"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f1

    const/4 p4, 0x0

    goto :goto_f2

    :cond_f1
    :goto_f1
    const/4 p4, -0x1

    :goto_f2
    if-eqz p4, :cond_103

    if-eq p4, p2, :cond_104

    if-eq p4, v2, :cond_101

    if-eq p4, v1, :cond_ff

    if-eq p4, p7, :cond_fd

    goto :goto_b5

    :cond_fd
    const/4 p7, 0x1

    goto :goto_104

    :cond_ff
    const/4 p7, 0x2

    goto :goto_104

    :cond_101
    const/4 p7, 0x3

    goto :goto_104

    :cond_103
    const/4 p7, 0x5

    .line 17
    :cond_104
    :goto_104
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzwb;->E:I

    .line 18
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwb;->t:Lcom/google/android/gms/internal/ads/zzvq;

    .line 19
    iget-boolean p7, p4, Lcom/google/android/gms/internal/ads/zzvq;->n0:Z

    invoke-static {p5, p7}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p7

    if-nez p7, :cond_112

    :goto_110
    const/4 p2, 0x0

    goto :goto_12f

    :cond_112
    iget-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzwb;->s:Z

    if-nez p7, :cond_11b

    .line 20
    iget-boolean p4, p4, Lcom/google/android/gms/internal/ads/zzvq;->d0:Z

    if-nez p4, :cond_11b

    goto :goto_110

    :cond_11b
    invoke-static {p5, p6}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p4

    if-eqz p4, :cond_12f

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwb;->u:Z

    if-eqz p4, :cond_12f

    if-eqz p7, :cond_12f

    .line 21
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    if-eq p3, v0, :cond_12f

    and-int/2addr p1, p5

    if-eqz p1, :cond_12f

    const/4 p2, 0x2

    .line 22
    :cond_12f
    :goto_12f
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwb;->B:I

    return-void

    :sswitch_data_132
    .sparse-switch
        -0x6e5534ef -> :sswitch_e7
        -0x631b55f6 -> :sswitch_dd
        -0x63185e82 -> :sswitch_d3
        0x4f62373a -> :sswitch_c9
        0x5f50bed9 -> :sswitch_bf
    .end sparse-switch
.end method

.method public static synthetic f(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwb;)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->s:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->v:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->l()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    goto :goto_15

    .line 3
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->l()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    .line 4
    :goto_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwb;->w:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->w:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->t:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzcu;->w:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwc;->m()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwb;->x:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->w:I

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->w:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwb;)I
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->v:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->v:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->z:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->s:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->s:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->u:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->u:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->y:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->y:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfrs;->a()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->C:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->C:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 10
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwb;->D:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->D:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    if-eqz v1, :cond_5d

    if-eqz v2, :cond_5d

    .line 11
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->E:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->E:I

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    :cond_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->B:I

    return v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzvy;)Z
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->t:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->g0:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->C:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->C:Z

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->D:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->D:Z

    if-ne v0, p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method
