###### Class com.google.android.gms.internal.ads.zzcfa (com.google.android.gms.internal.ads.zzcfa)
.class final Lcom/google/android/gms/internal/ads/zzcfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzcfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->o:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->o:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->h1(Lcom/google/android/gms/internal/ads/zzcfb;)V

    return-void
.end method
