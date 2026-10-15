###### Class com.google.android.gms.internal.ads.zzark (com.google.android.gms.internal.ads.zzark)
.class public final Lcom/google/android/gms/internal/ads/zzark;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V
    .registers 14

    const-string v2, "/ZAb7KorQmWKePlIS1me8K7MD7h0ktYv6a7eQSuPpVWqAkHhSCd1Ee0//urPm/Fl"

    const-string v3, "19q79G2Hoay9HG8W07mTTjUi2VQ2m7mmzg4dFY+yKc8="

    const/16 v6, 0x31

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->R(I)Lcom/google/android/gms/internal/ads/zzamv;

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaqx;->b()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    if-eq v2, v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x2

    .line 3
    :goto_25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->R(I)Lcom/google/android/gms/internal/ads/zzamv;
    :try_end_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/provider/Settings$SettingNotFoundException;

    if-eqz v1, :cond_33

    return-void

    .line 5
    :cond_33
    throw v0
.end method
