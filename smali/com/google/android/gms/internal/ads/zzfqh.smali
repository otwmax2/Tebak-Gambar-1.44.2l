###### Class com.google.android.gms.internal.ads.zzfqh (com.google.android.gms.internal.ads.zzfqh)
.class public final Lcom/google/android/gms/internal/ads/zzfqh;
.super Lcom/google/android/gms/internal/ads/zzfqd;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqe;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqd;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqd;

    return-object p0
.end method

.method public final varargs h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfqd;->e([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqd;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqe;

    return-object p0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->q([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    return-object v0
.end method
