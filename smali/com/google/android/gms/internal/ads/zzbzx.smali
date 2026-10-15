###### Class com.google.android.gms.internal.ads.zzbzx (com.google.android.gms.internal.ads.zzbzx)
.class final Lcom/google/android/gms/internal/ads/zzbzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzx;->a:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzx;->a:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzz;->b(Lcom/google/android/gms/internal/ads/zzbzz;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzx;->a:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzz;->b(Lcom/google/android/gms/internal/ads/zzbzz;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
