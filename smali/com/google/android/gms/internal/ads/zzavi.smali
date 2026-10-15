###### Class com.google.android.gms.internal.ads.zzavi (com.google.android.gms.internal.ads.zzavi)
.class final Lcom/google/android/gms/internal/ads/zzavi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzavm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->o:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavm;->h(Lcom/google/android/gms/internal/ads/zzavm;)V

    return-void
.end method
