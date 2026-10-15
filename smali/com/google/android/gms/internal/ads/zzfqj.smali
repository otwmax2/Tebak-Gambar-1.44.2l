###### Class com.google.android.gms.internal.ads.zzfqj (com.google.android.gms.internal.ads.zzfqj)
.class final Lcom/google/android/gms/internal/ads/zzfqj;
.super Lcom/google/android/gms/internal/ads/zzfqk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final transient q:I

.field final transient r:I

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqk;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqk;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfqj;->q:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfqj;->r:I

    return-void
.end method


# virtual methods
.method final g()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->r:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->q:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final i()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->q:I

    add-int/2addr v0, v1

    return v0
.end method

.method final l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final m()[Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->m()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final n(II)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->r:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfnu;->g(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqj;->q:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqk;->n(II)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqj;->r:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqk;->n(II)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    return-object p1
.end method
