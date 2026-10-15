###### Class com.google.android.gms.internal.ads.zzbln (com.google.android.gms.internal.ads.zzbln)
.class final Lcom/google/android/gms/internal/ads/zzbln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzu;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzbll;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbln;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 2

    const-string v0, "Rejecting reference for JS Engine."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbln;->a:Lcom/google/android/gms/internal/ads/zzbll;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->c()V

    return-void
.end method
