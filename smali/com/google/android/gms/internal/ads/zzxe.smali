###### Class com.google.android.gms.internal.ads.zzxe (com.google.android.gms.internal.ads.zzxe)
.class final Lcom/google/android/gms/internal/ads/zzxe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzxd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxe;->o:Lcom/google/android/gms/internal/ads/zzxd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxe;->o:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->s()V

    return-void
.end method
