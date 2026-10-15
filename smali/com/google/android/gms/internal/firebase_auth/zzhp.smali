###### Class com.google.android.gms.internal.firebase_auth.zzhp (com.google.android.gms.internal.firebase_auth.zzhp)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzls;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_auth/zzhm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzii;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzhm;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 3
    iput-object p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a:Lcom/google/android/gms/internal/firebase_auth/zzhp;

    return-void
.end method

.method public static M(Lcom/google/android/gms/internal/firebase_auth/zzhm;)Lcom/google/android/gms/internal/firebase_auth/zzhp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a:Lcom/google/android/gms/internal/firebase_auth/zzhp;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzhp;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V

    return-object v0
.end method


# virtual methods
.method public final A(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k0(II)V

    return-void
.end method

.method public final A0(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->s(IZ)V

    return-void
.end method

.method public final B(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->A(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->l(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final C(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Y(II)V

    return-void
.end method

.method public final D(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase_auth/zziy;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zziy;

    .line 3
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zziy;->z(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r(ILjava/lang/String;)V

    goto :goto_25

    .line 7
    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast v2, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->o(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    return-void

    .line 8
    :cond_29
    :goto_29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3d
    return-void
.end method

.method public final E(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->P(II)V

    return-void
.end method

.method public final F(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k0(II)V

    return-void
.end method

.method public final G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->o(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void
.end method

.method public final H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a:Lcom/google/android/gms/internal/firebase_auth/zzhp;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    return-void
.end method

.method public final I(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Z(IJ)V

    return-void
.end method

.method public final J(ILcom/google/android/gms/internal/firebase_auth/zzji;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/gms/internal/firebase_auth/zzji<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjf;->a(Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjf;->b(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_39
    return-void
.end method

.method public final K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->q(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    return-void
.end method

.method public final L(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Q(IJ)V

    return-void
.end method

.method public final P(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r(ILjava/lang/String;)V

    return-void
.end method

.method public final a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n(IJ)V

    return-void
.end method

.method public final b(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->e0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 8
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final c(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->w0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 8
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Z(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final d(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Y(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final e(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->o0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->S(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Q(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final f(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->z(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final g(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhp;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final h(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    return-void
.end method

.method public final i(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->L(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->s(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final j(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Z(IJ)V

    return-void
.end method

.method public final k(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->l0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->P(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final l(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 8
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->P(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final m(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhp;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final n(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->P(II)V

    return-void
.end method

.method public final o(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n(IJ)V

    return-void
.end method

.method public final p(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->R(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p(ILcom/google/android/gms/internal/firebase_auth/zzjn;)V

    return-void
.end method

.method public final q(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->x0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->f0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final r(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->A0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->f0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 8
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final s(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->k(ID)V

    return-void
.end method

.method public final t(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->l(IF)V

    return-void
.end method

.method public final u(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->s0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->Z(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final v(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->g0(II)V

    return-void
.end method

.method public final w(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final x(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->X(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 7
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->g0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public final y(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzgv;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->o(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final z(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhp;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    return-void
.end method

.method public final zza()I
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->l:I

    return v0
.end method
