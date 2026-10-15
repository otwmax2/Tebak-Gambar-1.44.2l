###### Class com.google.android.gms.internal.ads.zzask (com.google.android.gms.internal.ads.zzask)
.class final Lcom/google/android/gms/internal/ads/zzask;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzasl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzask;->o:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->o:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasl;->b(Lcom/google/android/gms/internal/ads/zzasl;)V

    return-void
.end method
