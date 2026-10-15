###### Class com.google.android.gms.internal.ads.zzaqu (com.google.android.gms.internal.ads.zzaqu)
.class final Lcom/google/android/gms/internal/ads/zzaqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzaqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->o:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqu;->o:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->n(Lcom/google/android/gms/internal/ads/zzaqx;)V

    return-void
.end method
