###### Class com.google.android.gms.internal.ads.zzdwp (com.google.android.gms.internal.ads.zzdwp)
.class final Lcom/google/android/gms/internal/ads/zzdwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzdwq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwp;->a:Lcom/google/android/gms/internal/ads/zzdwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwp;->a:Lcom/google/android/gms/internal/ads/zzdwq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwq;->b(Lcom/google/android/gms/internal/ads/zzdwq;)Lcom/google/android/gms/internal/ads/zzcxh;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxh;->l0(Lcom/google/android/gms/internal/ads/zzeyo;)V

    return-void
.end method
