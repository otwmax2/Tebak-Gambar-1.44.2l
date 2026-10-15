###### Class com.google.android.gms.internal.ads.zzfgw (com.google.android.gms.internal.ads.zzfgw)
.class final Lcom/google/android/gms/internal/ads/zzfgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzfhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfhb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgw;->o:Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgw;->o:Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfhb;->c(Lcom/google/android/gms/internal/ads/zzfhb;)Lcom/google/android/gms/internal/ads/zzfgv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgv;->b()V

    return-void
.end method
