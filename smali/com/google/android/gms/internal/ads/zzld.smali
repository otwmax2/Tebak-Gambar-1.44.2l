###### Class com.google.android.gms.internal.ads.zzld (com.google.android.gms.internal.ads.zzld)
.class public final Lcom/google/android/gms/internal/ads/zzld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaa;

.field private final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaa;Landroid/util/SparseArray;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzld;->a:Lcom/google/android/gms/internal/ads/zzaa;

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->b()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->b()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaa;->a(I)I

    move-result v2

    .line 4
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlc;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 7
    :cond_28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->a:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaa;->a(I)I

    move-result p1

    return p1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->a:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->b()I

    move-result v0

    return v0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzlc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlc;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final d(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->a:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaa;->c(I)Z

    move-result p1

    return p1
.end method
