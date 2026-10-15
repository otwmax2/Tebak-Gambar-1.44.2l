###### Class com.google.android.gms.internal.ads.zzjd (com.google.android.gms.internal.ads.zzjd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzjm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzjm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->o:Lcom/google/android/gms/internal/ads/zzjm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->o:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjm;->T()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
