###### Class com.google.android.gms.internal.ads.zzbjh (com.google.android.gms.internal.ads.zzbjh)
.class final Lcom/google/android/gms/internal/ads/zzbjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbjk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjh;->o:Lcom/google/android/gms/internal/ads/zzbjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjh;->o:Lcom/google/android/gms/internal/ads/zzbjk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjk;->c(Lcom/google/android/gms/internal/ads/zzbjk;)V

    return-void
.end method
