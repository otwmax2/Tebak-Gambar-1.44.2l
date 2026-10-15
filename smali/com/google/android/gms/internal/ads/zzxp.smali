###### Class com.google.android.gms.internal.ads.zzxp (com.google.android.gms.internal.ads.zzxp)
.class final Lcom/google/android/gms/internal/ads/zzxp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "display"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    const/4 v1, 0x1

    if-eqz p0, :cond_2f

    .line 3
    invoke-virtual {p0}, Landroid/view/Display;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_2f

    aget v4, p0, v3

    if-ne v4, v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_2f
    :goto_2f
    return v0
.end method
