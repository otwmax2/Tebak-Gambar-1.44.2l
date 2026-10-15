###### Class com.google.android.gms.internal.ads.zzne (com.google.android.gms.internal.ads.zzne)
.class final Lcom/google/android/gms/internal/ads/zzne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzck;

.field private b:Lcom/google/android/gms/internal/ads/zzfqk;

.field private c:Lcom/google/android/gms/internal/ads/zzfqn;

.field private d:Lcom/google/android/gms/internal/ads/zzss;

.field private e:Lcom/google/android/gms/internal/ads/zzss;

.field private f:Lcom/google/android/gms/internal/ads/zzss;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzck;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->c:Lcom/google/android/gms/internal/ads/zzfqn;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzne;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object p0
.end method

.method private static j(Lcom/google/android/gms/internal/ads/zzcg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;
    .registers 14

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->f()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    move-object v2, v3

    goto :goto_15

    :cond_11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->f(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    :goto_15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->B()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v4, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_35

    .line 5
    :cond_24
    invoke-virtual {v0, v1, p3, v5}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p3

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    .line 7
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->c(J)I

    move-result p3

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p3, -0x1

    :goto_36
    const/4 v0, 0x0

    .line 8
    :goto_37
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzss;

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->B()Z

    move-result v6

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->b()I

    move-result v7

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->c()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 13
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzne;->m(Lcom/google/android/gms/internal/ads/zzss;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_59

    return-object v1

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 14
    :cond_5c
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7a

    if-eqz p2, :cond_7a

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->B()Z

    move-result v6

    .line 16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->b()I

    move-result v7

    .line 17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->c()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 18
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzne;->m(Lcom/google/android/gms/internal/ads/zzss;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_7a

    return-object p2

    :cond_7a
    return-object v3
.end method

.method private final k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    return-void

    :cond_10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzne;->c:Lcom/google/android/gms/internal/ads/zzfqn;

    .line 3
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfqn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcn;

    if-eqz p3, :cond_1d

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    :cond_1d
    return-void
.end method

.method private final l(Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzne;->k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->f:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->f:Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzne;->k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->f:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzne;->k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V

    goto :goto_61

    :cond_3b
    const/4 v1, 0x0

    .line 9
    :goto_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 10
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzne;->k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfqk;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzne;->k(Lcom/google/android/gms/internal/ads/zzfqm;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)V

    .line 14
    :cond_61
    :goto_61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqm;->c()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->c:Lcom/google/android/gms/internal/ads/zzfqn;

    return-void
.end method

.method private static m(Lcom/google/android/gms/internal/ads/zzss;Ljava/lang/Object;ZIII)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    const/4 p1, 0x1

    if-eqz p2, :cond_17

    .line 2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    if-ne p2, p3, :cond_22

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    if-ne p0, p4, :cond_16

    goto :goto_20

    :cond_16
    return v0

    :cond_17
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_22

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    if-ne p0, p5, :cond_22

    :goto_20
    const/4 v0, 0x1

    nop

    :cond_22
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzcn;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->c:Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcn;

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzss;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzss;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_27

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_36

    .line 5
    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 7
    :cond_27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object v0, v1

    .line 10
    :goto_36
    check-cast v0, Lcom/google/android/gms/internal/ads/zzss;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzss;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzss;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->f:Lcom/google/android/gms/internal/ads/zzss;

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzcg;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzne;->j(Lcom/google/android/gms/internal/ads/zzcg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    return-void
.end method

.method public final h(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcg;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzss;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzne;->f:Lcom/google/android/gms/internal/ads/zzss;

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    invoke-static {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzne;->j(Lcom/google/android/gms/internal/ads/zzcg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    :cond_2a
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzne;->l(Lcom/google/android/gms/internal/ads/zzcn;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzcg;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->b:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzne;->e:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzne;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzne;->j(Lcom/google/android/gms/internal/ads/zzcg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzne;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzne;->l(Lcom/google/android/gms/internal/ads/zzcn;)V

    return-void
.end method
