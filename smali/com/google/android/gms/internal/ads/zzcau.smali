###### Class com.google.android.gms.internal.ads.zzcau (com.google.android.gms.internal.ads.zzcau)
.class final Lcom/google/android/gms/internal/ads/zzcau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzcax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcax;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcau;->o:Lcom/google/android/gms/internal/ads/zzcax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcau;->o:Lcom/google/android/gms/internal/ads/zzcax;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcax;->w(Lcom/google/android/gms/internal/ads/zzcax;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
