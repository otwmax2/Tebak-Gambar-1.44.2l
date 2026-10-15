###### Class com.google.android.gms.internal.ads.zzei (com.google.android.gms.internal.ads.zzei)
.class final Lcom/google/android/gms/internal/ads/zzei;
.super Landroid/telephony/TelephonyCallback;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzei;->a:Lcom/google/android/gms/internal/ads/zzel;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    const/4 v2, 0x4

    if-eq p1, v2, :cond_11

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzei;->a:Lcom/google/android/gms/internal/ads/zzel;

    if-eq v1, p1, :cond_17

    goto :goto_19

    :cond_17
    const/16 v0, 0xa

    .line 2
    :goto_19
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzel;->c(Lcom/google/android/gms/internal/ads/zzel;I)V

    return-void
.end method
