###### Class com.google.android.gms.internal.ads.zzfup (com.google.android.gms.internal.ads.zzfup)
.class final Lcom/google/android/gms/internal/ads/zzfup;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzfus;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfus;Lcom/google/android/gms/internal/ads/zzfuo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfup;->o:Lcom/google/android/gms/internal/ads/zzfus;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzfup;Ljava/lang/Thread;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfup;->o:Lcom/google/android/gms/internal/ads/zzfus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
