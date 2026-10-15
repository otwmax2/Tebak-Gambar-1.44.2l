###### Class com.google.android.gms.internal.ads.zzup (com.google.android.gms.internal.ads.zzup)
.class final Lcom/google/android/gms/internal/ads/zzup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:I

.field private final b:Landroid/util/SparseArray;

.field private final c:Lcom/google/android/gms/internal/ads/zzdp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzuo;->a:Lcom/google/android/gms/internal/ads/zzuo;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzup;->c:Lcom/google/android/gms/internal/ads/zzdp;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 2
    :goto_7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    .line 3
    :goto_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    if-gtz v0, :cond_e

    goto :goto_1a

    .line 4
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    add-int/2addr v0, v1

    goto :goto_7

    .line 6
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_38

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    goto :goto_1a

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(ILjava/lang/Object;)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 4
    :goto_2e
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    if-ne v0, p1, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzui;->A(Lcom/google/android/gms/internal/ads/zzug;)V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzui;->A(Lcom/google/android/gms/internal/ads/zzug;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final e(I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt p1, v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzui;->A(Lcom/google/android/gms/internal/ads/zzug;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    if-lez v0, :cond_2d

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzup;->a:I

    :cond_2d
    move v0, v2

    goto :goto_1

    :cond_2f
    return-void
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzuo (com.google.android.gms.internal.ads.zzuo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzuo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzuo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuo;->a:Lcom/google/android/gms/internal/ads/zzuo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
