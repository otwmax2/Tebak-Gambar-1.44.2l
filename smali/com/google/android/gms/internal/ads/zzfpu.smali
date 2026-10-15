###### Class com.google.android.gms.internal.ads.zzfpu (com.google.android.gms.internal.ads.zzfpu)
.class final Lcom/google/android/gms/internal/ads/zzfpu;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final x:Ljava/lang/Object;


# instance fields
.field private transient o:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient p:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient q:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient r:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient s:I

.field private transient t:I

.field private transient u:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient v:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient w:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpu;->x:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfpu;->n(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->n(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzfpu;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzfpu;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/zzfpu;Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->r(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/zzfpu;)I
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->q()I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/zzfpu;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpu;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/zzfpu;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final q()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final r(Ljava/lang/Object;)I
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqc;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->q()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int v4, v0, v2

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfpv;->c(Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_3f

    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v0, v4

    :cond_20
    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3b

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    aget-object v6, v6, v3

    .line 8
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_3b

    :cond_3a
    return v3

    :cond_3b
    :goto_3b
    and-int v3, v5, v2

    if-nez v3, :cond_20

    :cond_3f
    return v1
.end method

.method private final s(IIII)I
    .registers 13

    add-int/lit8 v0, p2, -0x1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfpv;->d(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p4, :cond_e

    and-int/2addr p3, v0

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfpv;->e(Ljava/lang/Object;II)V

    :cond_e
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_19
    if-gt v1, p1, :cond_40

    .line 5
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/zzfpv;->c(Ljava/lang/Object;I)I

    move-result v2

    :goto_1f
    if-eqz v2, :cond_3d

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, v0

    .line 7
    invoke-static {p2, v6}, Lcom/google/android/gms/internal/ads/zzfpv;->c(Ljava/lang/Object;I)I

    move-result v7

    .line 8
    invoke-static {p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzfpv;->e(Ljava/lang/Object;II)V

    xor-int/lit8 v2, v0, -0x1

    and-int v6, v7, v0

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    .line 9
    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1f

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_40
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfpu;->u(I)V

    return v0
.end method

.method private final t(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfpu;->x:Ljava/lang/Object;

    return-object p1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->q()I

    move-result v7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfpv;->b(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2a

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfpu;->x:Ljava/lang/Object;

    return-object p1

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    aget-object v1, v1, p1

    .line 7
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzfpu;->o(II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->m()V

    return-object v1
.end method

.method private final u(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    and-int/lit8 v0, v0, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->m()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    .line 4
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    .line 6
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, v0, [B

    if-eqz v1, :cond_35

    .line 9
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_44

    .line 10
    :cond_35
    instance-of v1, v0, [S

    if-eqz v1, :cond_3f

    .line 11
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_44

    .line 12
    :cond_3f
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 13
    :goto_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    .line 15
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    return-void

    .line 16
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsr;->b(III)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_13

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    :goto_13
    return p1

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    aget-object v2, v2, v1

    .line 4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return v0

    .line 5
    :cond_1f
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final e()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->v:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpp;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->v:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method final f(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    if-ge p1, v0, :cond_7

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->u:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpr;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->u:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method final l()Ljava/util/Map;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 2
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method final m()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    return-void
.end method

.method final n(I)V
    .registers 4

    const/16 p1, 0x8

    const/4 v0, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsr;->b(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    return-void
.end method

.method final o(II)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_57

    .line 6
    aget-object v7, v2, v4

    .line 7
    aput-object v7, v2, p1

    .line 8
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 9
    aput-object v6, v2, v4

    .line 10
    aput-object v6, v3, v4

    .line 11
    aget v2, v1, v4

    aput v2, v1, p1

    .line 12
    aput v5, v1, v4

    .line 13
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfqc;->b(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 14
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfpv;->c(Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_51

    :goto_3d
    add-int/lit8 v3, v3, -0x1

    .line 15
    aget v0, v1, v3

    and-int v2, v0, p2

    if-eq v2, v4, :cond_47

    move v3, v2

    goto :goto_3d

    :cond_47
    add-int/lit8 p1, p1, 0x1

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v0, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 16
    aput p1, v1, v3

    return-void

    :cond_51
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfpv;->e(Ljava/lang/Object;II)V

    return-void

    .line 18
    :cond_57
    aput-object v6, v2, p1

    .line 19
    aput-object v6, v3, p1

    .line 20
    aput v5, v1, p1

    return-void
.end method

.method final p()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v3

    const-string v4, "Arrays already allocated"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfnu;->i(ZLjava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->s:I

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x2

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    int-to-double v6, v5

    double-to-int v6, v6

    if-le v4, v6, :cond_2b

    add-int/2addr v5, v5

    if-gtz v5, :cond_2b

    const/high16 v5, 0x40000000    # 2.0f

    :cond_2b
    const/4 v4, 0x4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfpv;->d(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 6
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzfpu;->u(I)V

    .line 7
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 8
    new-array v4, v3, [Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 10
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_159

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    add-int/lit8 v8, v7, 0x1

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfqc;->b(Ljava/lang/Object;)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->q()I

    move-result v10

    and-int v3, v9, v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 15
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/zzfpv;->c(Ljava/lang/Object;I)I

    move-result v11

    if-nez v11, :cond_8b

    if-le v8, v10, :cond_81

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfpv;->a(I)I

    move-result v3

    .line 17
    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzfpu;->s(IIII)I

    move-result v10

    goto/16 :goto_fc

    .line 18
    :cond_81
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v4, v3, v8}, Lcom/google/android/gms/internal/ads/zzfpv;->e(Ljava/lang/Object;II)V

    goto/16 :goto_fc

    :cond_8b
    xor-int/lit8 v14, v10, -0x1

    and-int v15, v9, v14

    const/4 v3, 0x0

    :goto_90
    add-int/lit8 v11, v11, -0x1

    .line 21
    aget v16, v4, v11

    and-int v12, v16, v14

    if-ne v12, v15, :cond_a6

    .line 22
    aget-object v13, v5, v11

    .line 23
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a1

    goto :goto_a6

    .line 24
    :cond_a1
    aget-object v1, v6, v11

    .line 25
    aput-object v2, v6, v11

    return-object v1

    :cond_a6
    :goto_a6
    and-int v13, v16, v10

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    if-nez v13, :cond_156

    const/16 v5, 0x9

    if-lt v3, v5, :cond_ec

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->q()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->e()I

    move-result v3

    :goto_c3
    if-ltz v3, :cond_db

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    aget-object v6, v6, v3

    .line 33
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfpu;->f(I)I

    move-result v3

    goto :goto_c3

    :cond_db
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->o:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->m()V

    .line 35
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_ec
    if-le v8, v10, :cond_f7

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfpv;->a(I)I

    move-result v3

    .line 36
    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzfpu;->s(IIII)I

    move-result v10

    goto :goto_fc

    :cond_f7
    and-int v3, v8, v10

    or-int/2addr v3, v12

    .line 37
    aput v3, v4, v11

    .line 38
    :goto_fc
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    array-length v3, v3

    if-le v8, v3, :cond_137

    const v4, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v5, v3, 0x1

    const/4 v11, 0x1

    .line 41
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v5, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_137

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    :cond_137
    xor-int/lit8 v3, v10, -0x1

    and-int/2addr v3, v9

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    aput v3, v4, v7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    aput-object v1, v3, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    aput-object v2, v1, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpu;->m()V

    const/4 v12, 0x0

    return-object v12

    :cond_156
    move v11, v13

    goto/16 :goto_90

    .line 55
    :cond_159
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpu;->x:Ljava/lang/Object;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->t:I

    :goto_d
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->w:Ljava/util/Collection;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpt;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->w:Ljava/util/Collection;

    :cond_b
    return-object v0
.end method
