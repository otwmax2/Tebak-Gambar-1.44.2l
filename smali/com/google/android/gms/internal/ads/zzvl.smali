###### Class com.google.android.gms.internal.ads.zzvl (com.google.android.gms.internal.ads.zzvl)
.class final Lcom/google/android/gms/internal/ads/zzvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final o:Z

.field private final p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaf;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_b

    const/4 v0, 0x0

    :cond_b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->o:Z

    .line 2
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->p:Z

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzvl;)I
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvl;->p:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvl;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvl;->o:Z

    .line 2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzvl;->o:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpz;->d(ZZ)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->c(Lcom/google/android/gms/internal/ads/zzvl;)I

    move-result p1

    return p1
.end method
