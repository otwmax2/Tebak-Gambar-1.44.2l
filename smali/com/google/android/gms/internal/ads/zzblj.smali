###### Class com.google.android.gms.internal.ads.zzblj (com.google.android.gms.internal.ads.zzblj)
.class final Lcom/google/android/gms/internal/ads/zzblj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbll;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblj;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbls;

    const-string p1, "Releasing engine reference."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzblj;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbll;->f(Lcom/google/android/gms/internal/ads/zzbll;)Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblq;->i()V

    return-void
.end method
