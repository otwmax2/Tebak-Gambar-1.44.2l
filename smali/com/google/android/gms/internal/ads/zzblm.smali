###### Class com.google.android.gms.internal.ads.zzblm (com.google.android.gms.internal.ads.zzblm)
.class final Lcom/google/android/gms/internal/ads/zzblm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzbll;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblm;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkm;

    const-string v0, "Getting a new session for JS Engine."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblm;->a:Lcom/google/android/gms/internal/ads/zzbll;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->h()Lcom/google/android/gms/internal/ads/zzblt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzz;->d(Ljava/lang/Object;)V

    return-void
.end method
