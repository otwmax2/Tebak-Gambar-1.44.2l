###### Class com.google.android.gms.ads.internal.util.a (com.google.android.gms.ads.internal.util.a)
.class final Lcom/google/android/gms/ads/internal/util/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/util/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/a;->o:Lcom/google/android/gms/ads/internal/util/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/a;->o:Lcom/google/android/gms/ads/internal/util/zzb;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzb;->c(Lcom/google/android/gms/ads/internal/util/zzb;Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/a;->o:Lcom/google/android/gms/ads/internal/util/zzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzb;->a()V

    return-void
.end method
