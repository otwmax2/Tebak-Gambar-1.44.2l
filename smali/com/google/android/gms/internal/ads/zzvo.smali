###### Class com.google.android.gms.internal.ads.zzvo (com.google.android.gms.internal.ads.zzvo)
.class public final Lcom/google/android/gms/internal/ads/zzvo;
.super Lcom/google/android/gms/internal/ads/zzct;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private final w:Landroid/util/SparseArray;

.field private final x:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzct;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->w:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvo;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzct;-><init>()V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzct;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzct;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 8
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzct;->e(IIZ)Lcom/google/android/gms/internal/ads/zzct;

    new-instance p1, Landroid/util/SparseArray;

    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->w:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvo;->v()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 8

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzct;-><init>(Lcom/google/android/gms/internal/ads/zzcu;)V

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->d0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->q:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->f0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->r:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->h0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->s:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->t:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->n0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->u:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->p0:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->v:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvq;->a(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 14
    :goto_25
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 15
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->w:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvq;->b(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static bridge synthetic m(Lcom/google/android/gms/internal/ads/zzvo;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->w:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/google/android/gms/internal/ads/zzvo;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->v:Z

    return p0
.end method

.method static bridge synthetic q(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->r:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->t:Z

    return p0
.end method

.method static bridge synthetic s(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->s:Z

    return p0
.end method

.method static bridge synthetic t(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->u:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/google/android/gms/internal/ads/zzvo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvo;->q:Z

    return p0
.end method

.method private final v()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->t:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->u:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->v:Z

    return-void
.end method


# virtual methods
.method public final synthetic e(IIZ)Lcom/google/android/gms/internal/ads/zzct;
    .registers 4

    const/4 p3, 0x1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzct;->e(IIZ)Lcom/google/android/gms/internal/ads/zzct;

    return-object p0
.end method

.method public final o(IZ)Lcom/google/android/gms/internal/ads/zzvo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_17

    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->x:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_17
    return-object p0
.end method
