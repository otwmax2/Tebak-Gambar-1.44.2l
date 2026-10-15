###### Class com.google.android.gms.internal.ads.zzdeh (com.google.android.gms.internal.ads.zzdeh)
.class public final Lcom/google/android/gms/internal/ads/zzdeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbp;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcvn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->o:Lcom/google/android/gms/internal/ads/zzcvn;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->o:Lcom/google/android/gms/internal/ads/zzcvn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->Y0(Landroid/content/Context;)V

    return-void
.end method

.method public final zzb()V
    .registers 1

    return-void
.end method
